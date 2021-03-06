# YAD-flutter

Пользовательское и курьерские приложения доставки еды YAD.

## Содержание

* [Установка](#Установка)
* [Запуск](#Запуск)
* [Cтруктура проекта](#Cтруктура-проекта)
* [Регламент кодирования](#Регламент-кодирования)
* [Регламент работы с репозиторием](#Регламент-работы-с-репозиторием)

## Установка

Для работы с приложением необходимо установить flutter. Сделать это можно по официальной [инструкции](https://flutter.dev/docs/get-started/install).

## Запуск

Приложение запускается с помощью следующей команды:

Пользовательское приложение:
```bash
$ flutter run
```

Приложение курьера:
```bash
$ flutter run -t lib/main_db.dart
```

## Cтруктура проекта

```
.
├── android // Нативные модули для Android
├── ios // Нативные модули для iOS
├── lib // Исходный код на dart
|    ├── *.dart 
|    ├── main.dart // Точка входа в пользовательское приложение
|    └── main_db.dart // Точка входа в курьерское приложение
├── LICENSE
├── linux // Нативные модули для Linux
├── macos // Нативные модули для MacOS
├── pubspec.lock
├── pubspec.yaml
├── README.md
├── test // Тесты
├── web // Нативные модули для Web
└── windows // Нативные модули для Windows
```

## Регламент кодирования

Перед коммитом необходимо использовать стандартный форматтер [flutter](https://flutter.dev/docs/development/tools/formatting).

## Регламент работы с репозиторием

### Ветки

Каждый новый тикет (issue) следует выполнять в отдельной ветке с префиксом fb-N-, где N - номер тикета. После в названии следует краткая информация о задаче.

Каждый новый тикет (issue) следует выполнять в отдельной ветке с префиксом fb-N-, где N - номер тикета. После в названии следует краткая информация о задаче.

Например, тикет #1 Проектирование БД, ветка fb-1-db-schema.

### Коммиты

Коммиты в ветке должны начинаться с gh-N.

Пример для ветки выше - "gh-1 Update DB schema picture".

### Запросы на слияние

После завершения задачи надо назначить Pull Request (PR) в ветку **develop**.

PR содержит название тикета, в описании указывается связь с ним.