---
## Front matter
title: "Лабораторная работа №8"
subtitle: "Программирование цикла. Обработка аргументов командной строки"
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

Приобретение навыков написания программ с использованием циклов и обработкой
аргументов командной строки

# Выполнение лабораторной работы

Создадим рабочую папку и файл lab8-1.asm (рис. 2.1)

![Создание папки и файла lab8-1.asm](image/1.png)

Вставим в файл предложенный код (рис. 2.2)

![Вставка кода в файл](image/2.png)

Скомпилируем файл и посмотрим результат (рис. 2.3)

![Компиляция и запуск программы](image/3.png)

Изменим код программы следующим образом (рис. 2.4)

![Изменение кода в файле lab8-1.asm](image/4.png)

Скомпилируем и запустим программу. Подадим на вход число 10 и посмотрим на результат (рис. 2.5)

![Компиляция и запуск программы](image/5.png)

Как мы видим, в цикле значение регистра ecx меняется 2 раза, поэтому нам выводятся числа через один. Соответственно, число проходов цикла значению N не соотвестсвует.
<p><br>Теперь изменим программу для её правильной работы (рис. 2.6)

![Изменение программы lab8-1.asm](image/6.png)

Скомпилируем и запустим программу (рис. 2.7)

![Компиляция и запуск программы](image/7.png)

Сейчас количество прогонов соответствует числу N. Теперь создадим второй файл (рис. 2.8)

![Создание файла lab8-2.asm](image/8.png)

Вставим в него следующий код (рис. 2.9)

![Вставка кода в файл](image/9.png)

Скомпилируем его и запустим, указав предложенные аргументы (рис. 2.10)

![Компиляция и запуск](image/10.png)

Программа обработала 4 агумента, разделённых пробелами. Пробелы в кавычках не считаются разделителями. Создадим третий файл (рис. 2.11)

![Создание файла lab8-3.asm](image/11.png)

Вставим в него код для нахождения суммы аргументов (рис. 2.12)

![Вставка кода в файл](image/12.png)

Скомпилируем код и запустим его (рис. 2.13)

![Компиляция и запуск](image/13.png)

Программа работает правильно. Сделаем так, чтобы она искала не сумму, а произведение (рис. 2.14):

![Изменение файла](image/14.png)

Скомпилируем и запустим программу (рис. 2.15)

![Компиляция и запуск](image/15.png)

Ответ верный

<p><br>Самостоятельная работа

Создадим файл программы для самостоятельной работы (рис. 2.16)

![Создание файла](image/16.png)

Напишем программу для 19 варианта, где нужно сложить все f(x)=8x-3 (рис. 2.17)

![Код для самостоятельной работы](image/17.png)

Скомпилируем и проверим работу программы (рис. 2.18)

![Компиляция и запуск программы](image/18.png)

Программа работает верно

# Выводы

Были получены навыки работы с циклами, а также с аргументами командной строки
