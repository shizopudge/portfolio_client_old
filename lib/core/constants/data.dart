import '../../features/projects/domain/entities/difficulty.dart';
import '../../features/projects/domain/entities/project.dart';
import '../../features/projects/domain/entities/task.dart';
import '../../features/projects/domain/entities/technology.dart';
import '../../features/projects/domain/entities/url.dart';

const List<Project> projects = [
  Project(
    id: 1,
    name: 'Mobile Store',
    description:
        'Description long text long text long text long text long text long text long text long text long text long text',
    slug: 'MOBILE-STORE',
    purpose:
        'Разработать кроссплатформенное приложение для магазина мобильных телефонов',
    images: [
      'https://img.freepik.com/free-vector/furniture-shopping-app-interface_23-2148660330.jpg?w=1380&t=st=1690786386~exp=1690786986~hmac=35d156d1611b8a90aa605fb8db3653678cfeedd9fb17d8820e004a78fc638a99',
    ],
    tasks: [
      Task(
        id: 1,
        name: 'Дизайн приложения',
        description:
            'Поиск и выбор наиболее подходящего под требования дизайна',
      ),
      Task(
        id: 2,
        name: 'Структура базы данных',
        description:
            'Разработка структуры базы данных, моделей и связей между ними',
      ),
      Task(
        id: 3,
        name: 'Базовая серверная часть',
        description:
            'Создание базовой части сервера (CRUD операции, роли, авторизация, загрузка файлов и т.д.)',
      ),
      Task(
        id: 4,
        name: 'Клиент приложения',
        description:
            'Разработка клиента приложения, создание экранов и адаптация мобильного приложения под различные экраны',
      ),
      Task(
        id: 5,
        name: 'Связь клиента и сервера',
        description: 'Подключение клиента к серверу',
      ),
      Task(
        id: 6,
        name: 'Оплата',
        description: 'Подключение оплаты к приложению',
      ),
      Task(
        id: 7,
        name: 'Уведомления',
        description: 'Подключение уведомлений к приложению',
      ),
    ],
    difficulties: [
      Difficulty(
        id: 1,
        name: 'Подключение оплаты к приложению',
        description: 'Подключение оплаты к приложению',
      ),
      Difficulty(
        id: 1,
        name: 'Уведомления',
        description: 'Подключение уведомлений к приложению',
      ),
    ],
    technologies: [
      Technology(
        id: 1,
        name: 'Flutter',
        image: '',
      ),
      Technology(
        id: 2,
        name: 'Dart',
        image: '',
      ),
      Technology(
        id: 3,
        name: 'TS',
        image: '',
      ),
      Technology(
        id: 4,
        name: 'NEST',
        image: '',
      ),
    ],
    urls: [
      Url(
        id: 1,
        name: 'Web',
        link:
            'https://www.youtube.com/watch?v=rm9coqlk8fY&ab_channel=BobDylanVEVO',
      ),
    ],
  ),
  Project(
    id: 1,
    name: 'Mobile Store',
    description:
        'Description long text long text long text long text long text long text long text long text long text long text',
    slug: 'MOBILE-STORE',
    purpose:
        'Разработать кроссплатформенное приложение для магазина мобильных телефонов',
    images: [
      'https://img.freepik.com/free-vector/furniture-shopping-app-interface_23-2148660330.jpg?w=1380&t=st=1690786386~exp=1690786986~hmac=35d156d1611b8a90aa605fb8db3653678cfeedd9fb17d8820e004a78fc638a99',
    ],
    tasks: [
      Task(
        id: 1,
        name: 'Дизайн приложения',
        description:
            'Поиск и выбор наиболее подходящего под требования дизайна',
      ),
      Task(
        id: 2,
        name: 'Структура базы данных',
        description:
            'Разработка структуры базы данных, моделей и связей между ними',
      ),
      Task(
        id: 3,
        name: 'Базовая серверная часть',
        description:
            'Создание базовой части сервера (CRUD операции, роли, авторизация, загрузка файлов и т.д.)',
      ),
      Task(
        id: 4,
        name: 'Клиент приложения',
        description:
            'Разработка клиента приложения, создание экранов и адаптация мобильного приложения под различные экраны',
      ),
      Task(
        id: 5,
        name: 'Связь клиента и сервера',
        description: 'Подключение клиента к серверу',
      ),
      Task(
        id: 6,
        name: 'Оплата',
        description: 'Подключение оплаты к приложению',
      ),
      Task(
        id: 7,
        name: 'Уведомления',
        description: 'Подключение уведомлений к приложению',
      ),
    ],
    difficulties: [
      Difficulty(
        id: 1,
        name: 'Подключение оплаты к приложению',
        description: 'Подключение оплаты к приложению',
      ),
      Difficulty(
        id: 1,
        name: 'Уведомления',
        description: 'Подключение уведомлений к приложению',
      ),
    ],
    technologies: [
      Technology(
        id: 1,
        name: 'Flutter',
        image: '',
      ),
      Technology(
        id: 2,
        name: 'Dart',
        image: '',
      ),
      Technology(
        id: 3,
        name: 'TS',
        image: '',
      ),
      Technology(
        id: 4,
        name: 'NEST',
        image: '',
      ),
    ],
    urls: [
      Url(
        id: 1,
        name: 'Web',
        link:
            'https://www.youtube.com/watch?v=rm9coqlk8fY&ab_channel=BobDylanVEVO',
      ),
    ],
  ),
  Project(
    id: 1,
    name: 'Mobile Store',
    description:
        'Description long text long text long text long text long text long text long text long text long text long text',
    slug: 'MOBILE-STORE',
    purpose:
        'Разработать кроссплатформенное приложение для магазина мобильных телефонов',
    images: [
      'https://img.freepik.com/free-vector/furniture-shopping-app-interface_23-2148660330.jpg?w=1380&t=st=1690786386~exp=1690786986~hmac=35d156d1611b8a90aa605fb8db3653678cfeedd9fb17d8820e004a78fc638a99',
    ],
    tasks: [
      Task(
        id: 1,
        name: 'Дизайн приложения',
        description:
            'Поиск и выбор наиболее подходящего под требования дизайна',
      ),
      Task(
        id: 2,
        name: 'Структура базы данных',
        description:
            'Разработка структуры базы данных, моделей и связей между ними',
      ),
      Task(
        id: 3,
        name: 'Базовая серверная часть',
        description:
            'Создание базовой части сервера (CRUD операции, роли, авторизация, загрузка файлов и т.д.)',
      ),
      Task(
        id: 4,
        name: 'Клиент приложения',
        description:
            'Разработка клиента приложения, создание экранов и адаптация мобильного приложения под различные экраны',
      ),
      Task(
        id: 5,
        name: 'Связь клиента и сервера',
        description: 'Подключение клиента к серверу',
      ),
      Task(
        id: 6,
        name: 'Оплата',
        description: 'Подключение оплаты к приложению',
      ),
      Task(
        id: 7,
        name: 'Уведомления',
        description: 'Подключение уведомлений к приложению',
      ),
    ],
    difficulties: [
      Difficulty(
        id: 1,
        name: 'Подключение оплаты к приложению',
        description: 'Подключение оплаты к приложению',
      ),
      Difficulty(
        id: 1,
        name: 'Уведомления',
        description: 'Подключение уведомлений к приложению',
      ),
    ],
    technologies: [
      Technology(
        id: 1,
        name: 'Flutter',
        image: '',
      ),
      Technology(
        id: 2,
        name: 'Dart',
        image: '',
      ),
      Technology(
        id: 3,
        name: 'TS',
        image: '',
      ),
      Technology(
        id: 4,
        name: 'NEST',
        image: '',
      ),
    ],
    urls: [
      Url(
        id: 1,
        name: 'Web',
        link:
            'https://www.youtube.com/watch?v=rm9coqlk8fY&ab_channel=BobDylanVEVO',
      ),
    ],
  ),
];
