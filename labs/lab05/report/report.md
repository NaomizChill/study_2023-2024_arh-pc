---
## Front matter
title: "Лабораторная работа №5"
subtitle: "Основы работы с Midnight Commander (mc). Структура программы на языке ассемблера NASM. Системные вызовы в ОС GNU Linux"
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

Приобретение практических навыков работы в Midnight Commander. Освоение инструкций языка ассемблера mov и int

# Выполнение лабораторной работы

Откроем mc (рис. 2.1)

![Запуск mc](image/1.png)

Перейдём в папку с файлами для лабораторных работ и создадим в ней папку lab05 (рис. 2.2)

![Создание папки](image/2.png)

Перейдём в неё и создадим файл lab5-1.asm (рис. 2.3)

![Создание файла](image/3.png)

Откроем его для редактирования и вставим следующий код (рис. 2.4)

![Редактирование файла](image/4.png)

Сохраним его и откроем файл для просмотра, чтобы убедиться, что всё было сохранено (рис. 2.5)

![Открытие файла для чтения](image/5.png)

Соберём его и проверим на работоспособность (рис. 2.6)

![Сборка и запуск файла](image/6.png)

Скопируем файл in_out.asm в нашу папку (рис. 2.7)

![Копирование файла in_out.asm](image/7.png)

Создадим копию файла lab5-1.asm (рис. 2.8)

![Копирование файла](image/8.png)

И вставим в него следующий код (рис. 2.9)

![Вставка кода](image/9.png)

Соберём программу и проверим её работу (рис. 2.10)

![Проверка и сборка программы](image/10.png)

Заменим в коде программы sprintLF на sprint (рис. 2.11)

![Редактирование программы](image/11.png)

Соберём программу заново и запустим (рис. 2.12)

![Повторная сборка и запуск](image/12.png)

Теперь мы вводим данные в той же строке, в которой они выводятся. Теперь сделаем копию первого файла и назовём её lab5-3.asm и изменим её так, чтобы выводилась введённая нами строка (рис. 2.13)

![изменение скопированного файла](image/13.png)

И запустим собранную программу для проверки (рис. 2.14)

![Проверка программы и её сборка](image/14.png)

Теперь создадим копию второго файла (lab5-2.asm) и назовём её lab5-4.asm. Сделаем так, чтобы она также выводила введённую тами информацию (рис. 2.15)

![Редактирование копии файла](image/15.png)

Теперь запустим её, предварительно собрав (рис. 2.16)

![Проверка работоспособности программы](image/16.png)

# Выводы

Был получен навык работы с mc, а также были получены навыки ввода и вывода информации в nasm
