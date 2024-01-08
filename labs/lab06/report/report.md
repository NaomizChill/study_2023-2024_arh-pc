---
## Front matter
title: "Лабораторная работа №6"
subtitle: "Арифметические операции в NASM"
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

Освоение арифметических инструкций языка ассемблера NASM

# Выполнение лабораторной работы

Создадим папку рабочего каталога и файл lab6-1.asm (Рис. 2.1)

![Создание файла и рабочей директории](image/1.png)

Вставим в созданный файл код из листинга (Рис. 2.2)

![Запись кода из листинга](image/2.png)

Теперь соберём  файл и запустим его (Рис. 2.3)

![Сборка исполняемого файла и запуск](image/3.png)

Вывело символ j. Изменим файл (Рис. 2.4)

![Редактирование файла](image/4.png)

Мы убрали кавычки и теперь складываем числа. Соберём и запустим файл (Рис. 2.5)

![Запуск программы и сборка](image/5.png)

Ничего не вывелось. Но на самом деле вывелся символ перевода строки, и поэтому мы его не видим. 
Создадим файл под названием lab6-2.asm (Рис. 2.6)

![Создание файла lab6-2.asm](image/6.png)

Вставим в него следующий код (Рис. 2.7)

![Вставка кода в файл lab6-2.asm](image/7.png)

Вместо sprintLF тут iprintLF. Соберём файл и запустим (Рис. 2.8)

![Запуск файла и результат](image/8.png)

Вывело число 106. Уберём кавычки у чисел в коде (Рис. 2.9)

![Изменение файла](image/9.png)

Соберём и запустим программу (Рис. 2.10)

![Сборка файла и результат](image/10.png)

Вывод корректный. Заменим iprintLF на iprint (Рис. 2.11)

![Редактирование файла](image/11.png)

Соберём и запустим (Рис. 2.12)

![Сборка и результат работы отредактированного файла](image/12.png)

iprint не использует перенос на новую строку.
Создадим ещё 1 файл (Рис. 2.13)

![Создание файла lab6-3.asm](image/13.png)

Он считает выражение (5*2+3)/3. Вставим в него следующий код (Рис. 2.14)

![Вставка кода в файл](image/14.png)

Попробуем запустить этот программу, предварительно её собрав (Рис. 2.15)

![Сборка и запуск](image/16.png)

Вычисления верные. Сделаем так, чтобы код вычислял функцию f(x)=(4*6+2)/5. Внесём следующие изменения (Рис. 2.16)

![Изменение файла](image/17.png)

Соберём и запустим (Рис. 2.17)

![Повторная сборка и запуск](image/18.png)

Ответ верный. Создадим файл variant.asm. Он должен вычислять номер варианта по студенческому билету (Рис. 2.18)

![Создание файла variant.asm](image/19.png)

Вставим в него следующий код (Рис. 2.19)

![Вставка кода](image/20.png)

Скомпилируем и запустим файл. Укажем в вводе студенческий билет (Рис. 2.20):

![Компиляция и запуск](image/21.png)

<p><br>Пересчитав вручную, находим, что это верный ответ
<p><br>Ответим на вопросы:
<p><br>1. Какие строки листинга 6.4 отвечают за вывод на экран сообщения ‘Ваш вариант:’?
<p><br>Строчка под номером 25
<p><br>
<p><br>2. Для чего используется следующие инструкции?
<p><br>mov ecx, x
<p><br>mov edx, 80
<p><br>call sread
<p><br>Они записывают ввод с клавиатуры в переменную х
<p><br>
<p><br>3. Для чего используется инструкция “call atoi”?
<p><br>Для преобразования кода символа в число
<p><br>
<p><br>4. Какие строки листинга 6.4 отвечают за вычисления варианта?
<p><br>div ebx
<p><br>inc edx
<p><br>
<p><br>5. В какой регистр записывается остаток от деления при выполнении инструкции “div ebx”?
<p><br>В edx
<p><br>
<p><br>6. Для чего используется инструкция “inc edx”?
<p><br>Прибавляет к edx единицу
<p><br>7. Какие строки листинга 6.4 отвечают за вывод на экран результата вычислений?
<p><br>mov eax,edx
<p><br>call iprintLF

<p><br>Самостоятельная работа

Создадим файл самостоятельной работы (Рис. 2.21)

![Создание файла](image/22.png)

Теперь напишем следующий код (Рис. 2.22)

![Код программы](image/15.png)

Проверим работу программы, собрав и запустив её (Рис. 2.23)

![Запуск программы и проверка её корректной работы](image/23.png)

Программа дала верные ответы

# Выводы

Были получены навыки работы с арифметическими инструкциями языка ассемблера
