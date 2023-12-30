---
## Front matter
title: "Лабораторная работа №2"
subtitle: "Система контроля версий Git"
author: "Колонтырский Илья Русланович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Изучить, как работает система контроля версий git и воспользоваться ею на практике

# Выполнение лабораторной работы

Настроим имя и почту пользователя git (рис. 2.1)

![Настройка git](image/1.png)

Настроим отображение UTF-8 (рис. 2.2)

![Настройка кодировки](image/2.png)

Назовём стандартную ветку master (рис. 2.3)

![Настройка стандартной ветки](image/3.png)

Настроим отступы (рис. 2.4)

![Настройка отступов](image/4.png)

Сгенерируем ключ аутентификации для github (рис. 2.5)

![Генерация ключа аутентификации](image/5.png)

Скопируем этот ключ (рис. 2.6)

![Копирование ключа](image/6.png)

И вставим его в github (рис. 2.7)

![Вставка в github](image/7.png)

Создадим рабочую папку (рис. 2.8)

![Создание рабочей папки](image/8.png)

Создадим рабочий репозиторий из шаблона (рис. 2.9)

![Скачивание репозитория](image/9.png)

Перейдём в созданную папку и скачаем в неё созданный репозиторий (рис. 2.10)

![Использование git clone](image/10.png)

Перейдём в папку с репозиторием и удалим лишние файлы (рис. 2.11)

![Удаление лишних файлов](image/11.png)

Создадим с помощью make новые папки (рис. 2.12)

![Использование make](image/12.png)

Загрузим изменения на гитхаб, прокомментировав то, что изменили (рис. 2.13)

![Использование git commit](image/13.png)

Теперь окончательно отправим файлы на сервер (рис. 2.14)

![Использование git push](image/14.png)

После чего убедимся в успешной загрузке (рис. 2.15)

![Страница репозитория](image/15.png)

Теперь, в качестве самостоятельной работы, загрузим отчёты на gihub (рис. 2.16)

![Загрузка отчётов](image/16.png)

# Выводы

Был создан репозиторий, который был скачан на компьютер. Были получены навыкиработы с git
