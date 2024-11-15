import asyncio
import asyncpg
from aiogram import Bot, Dispatcher, types
from aiogram.fsm.storage.memory import MemoryStorage
from aiogram import Router
from aiogram.filters import Command
from aiogram.utils.keyboard import InlineKeyboardBuilder, ReplyKeyboardBuilder

API_TOKEN = ''

bot = Bot(token=API_TOKEN)
dp = Dispatcher(storage=MemoryStorage())
router = Router()

# Подключение к базе данных PostgreSQL
async def create_db_pool():
    return await asyncpg.create_pool(
        user='',
        password='',                                       # --PASSWORD
        database='',
        host=''
    )

db_pool = None  # Переменная для пула подключений

# Данные для группы и курса, если будет новый курс,группа и семестры - то нужно добавить сюда
fake_courses = ["IVT", "ISIT"]
fake_groups = ["1 курс", "2 курс", "3 курс", "4 курс"]
semesters_by_course = {
    "1 курс": ["1 семестр", "2 семестр"],
    "2 курс": ["3 семестр", "4 семестр"],
    "3 курс": ["5 семестр", "6 семестр"],
    "4 курс": ["7 семестр", "8 семестр"]
}

# Словарь для хранения данных пользователя
user_data = {}

# Главная клавиатура (выбор группы)
def main_menu():
    builder = ReplyKeyboardBuilder()
    for course in fake_courses:
        builder.button(text=course)
    builder.adjust(1)  # Одна кнопка в строке
    return builder.as_markup(resize_keyboard=True)

# Кнопки выбора курса
def group_menu():
    builder = ReplyKeyboardBuilder()
    for group in fake_groups:
        builder.button(text=group)
    builder.button(text="Назад")
    builder.adjust(2)  # Две кнопки в строке
    return builder.as_markup(resize_keyboard=True)

# Кнопки выбора семестра (на основе выбранного курса)
def semester_menu(course):
    builder = ReplyKeyboardBuilder()
    for semester in semesters_by_course[course]:
        builder.button(text=semester)
    builder.button(text="Назад")
    builder.adjust(2)  # Две кнопки в строке
    return builder.as_markup(resize_keyboard=True)

# Хендлер на старт с использованием фильтра Command
@router.message(Command(commands=["start"]))
async def start(message: types.Message):
    await message.answer("Выберите группу:", reply_markup=main_menu())

# Хендлер на выбор группы (IVT или ISIT)
@router.message(lambda message: message.text in fake_courses)
async def choose_course(message: types.Message):
    user_data[message.from_user.id] = {"course": message.text}  # Запоминаем выбор группы
    await message.answer(f"Вы выбрали {message.text}. Теперь выберите курс:", reply_markup=group_menu())

# Хендлер на выбор курса (1-й, 2-й, 3-й или 4-й)
@router.message(lambda message: message.text in fake_groups)
async def choose_group(message: types.Message):
    user_data[message.from_user.id]["group"] = message.text  # Запоминаем выбор курса
    await message.answer(f"Теперь выберите семестр:", reply_markup=semester_menu(message.text))

# Хендлер на выбор семестра
@router.message(lambda message: message.text in sum(semesters_by_course.values(), []))  # Проверка, что это семестр
async def choose_semester(message: types.Message):
    semester = message.text
    user_id = message.from_user.id
    user_data[user_id]["semester"] = semester  # Запоминаем выбор семестра

    group = user_data[user_id]["course"]  # IVT или ISIT
    course = user_data[user_id]["group"]  # 1 курс, 2 курс и т.д.

    # Преобразуем семестр в число для SQL-запроса
    semester_number = int(semester.split()[0])

    # Определяем таблицу на основе группы и курса, если новый курс - сюда включить нужно
    table_name = None
    if group == "IVT":
        if course == "1 курс":
            table_name = "ivt_1year"
        elif course == "2 курс":
            table_name = "ivt_2year"
        elif course == "3 курс":
            table_name = "ivt_3year"
        elif course == "4 курс":
            table_name = "ivt_4year"
    elif group == "ISIT":
        if course == "1 курс":
            table_name = "isit_1year"
        elif course == "2 курс":
            table_name = "isit_2year"
        elif course == "3 курс":
            table_name = "isit_3year"
        elif course == "4 курс":
            table_name = "isit_4year"

    if table_name is None:
        await message.answer(f"Таблица для {group} и {course} не найдена.")
        return

    # SQL-запрос для получения списка предметов
    async with db_pool.acquire() as connection:
        subjects = await connection.fetch(f"""
            SELECT id, name_subject
            FROM {table_name}
            WHERE semester = $1
        """, semester_number)

    # Если расписание не найдено
    if not subjects:
        await message.answer(f"Расписание для {group}, {course}, {semester} не найдено.")
        return

    # Формируем кнопки с названиями предметов
    builder = InlineKeyboardBuilder()
    for subject in subjects:
        builder.button(text=subject['name_subject'], callback_data=f"subject_{subject['id']}")  # Динамически создаём кнопки

    builder.adjust(1)  # Одна кнопка в строке
    await message.answer("Выберите предмет:", reply_markup=builder.as_markup())

# Обработка нажатия на предмет
@router.callback_query(lambda callback_query: callback_query.data.startswith("subject_"))
async def show_subject_details(callback_query: types.CallbackQuery, semester_number=None):
    subject_id = int(callback_query.data.split("_")[1])  # Получаем ID предмета
    user_id = callback_query.from_user.id
    group = user_data[user_id]["course"]  # IVT или ISIT
    course = user_data[user_id]["group"]  # 1 курс, 2 курс и т.д.

    # Определяем таблицу на основе группы и курса
    table_name = None
    if group == "IVT":
        if course == "1 курс":
            table_name = "ivt_1year"
        elif course == "2 курс":
            table_name = "ivt_2year"
        elif course == "3 курс":
            table_name = "ivt_3year"
        elif course == "4 курс":
            table_name = "ivt_4year"
    elif group == "ISIT":
        if course == "1 курс":
            table_name = "isit_1year"
        elif course == "2 курс":
            table_name = "isit_2year"
        elif course == "3 курс":
            table_name = "isit_3year"
        elif course == "4 курс":
            table_name = "isit_4year"

    # Получение информации о предмете. сюда нужно будет добавить новую колонку из бд
    async with db_pool.acquire() as connection:
        subject = await connection.fetchrow(f"""
            SELECT name_subject, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws    
            FROM {table_name}
            WHERE id = $1
        """, subject_id)

    #
    # # SQL-запрос для получения списка предметов, исключая строки, содержащие "ИТОГО"
    # async with db_pool.acquire() as connection:

    #     subjects = await connection.fetch(f"""
    #         SELECT id, name_subject
    #         FROM {table_name}
    #         WHERE semester = $1 AND name_subject NOT LIKE 'ИТОГО%'
    #     """, semester_number)

    # Формируем ответное сообщение. сюда нужно будет добавить новую колонку из бд, чтобы выдавала ответ
    response = (
        f"Предмет: {subject['name_subject']}\n"
        f"Число недель: {subject['number_weeks']}\n"
        f"Кредиты: {subject['number_credits']}\n"
        f"Лекции: {subject['lections']}\n"
        f"Практики: {subject['practice_seminars']}\n"
        f"Лабораторные: {subject['lab_classes']}\n"
        f"Всего часов: {subject['number_hours']}\n"
        f"Аудиторные: {subject['lectures']}\n"
        f"Часы лекций: {subject['practice_seminars_hours']}\n"
        f"Часы практик: {subject['lab_classes_hours']}\n"
        f"Лабы: {subject['lab_classes_hours']}\n"
        f"Индивидуальная работа с преподавателем: {subject['iwst']}\n"
        f"Самостоятельная работа: {subject['iws']}\n"
    )

    # Отправляем сообщение с информацией о предмете
    await callback_query.message.answer(response)

# Хендлер на кнопку "Назад"
@router.message(lambda message: message.text == "Назад")
async def go_back(message: types.Message):
    await message.answer("Вы вернулись назад. Выберите группу:", reply_markup=main_menu())

# Регистрация хендлеров в диспетчере
dp.include_router(router)

# Функция для запуска бота
async def main():
    global db_pool
    db_pool = await create_db_pool()  # Инициализируем пул подключений
    await dp.start_polling(bot)

if __name__ == '__main__':
    asyncio.run(main())