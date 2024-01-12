---
## Front matter
title: "Лабораторная работа №7"
subtitle: "Команды безусловного и условного переходов в Nasm. Программирование ветвлений"
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

Изучение команд условного и безусловного переходов. Приобретение навыков написания программ с использованием переходов. Знакомство с назначением и структурой файла листинга

# Выполнение лабораторной работы

Создадим папку lab07 и файл lab7-1.asm (рис. 2.1)

![Создание папки и файла lab7-1.asm](image/1.png)

Теперь вставим предложенный код в файл lab7-1.asm (рис. 2.2)

![Вставка кода](image/2.png)

Теперь соберём программу и проверим её рпботу (рис. 2.3)

![Сборка программы из файла lab7-1.asm и её запуск](image/3.png)

Изменим файл lab7-1.asm, вставив предложенный код (рис. 2.4)

![Изменение файла lab7-1.asm согласно листингу 7.2](image/4.png)

Ещё раз скомпилируем программу, проверим её (рис. 2.5)

![Повторная компиляция программы, запуск для проверки](image/5.png)

Нужно сделать так, чтобы программа выводила сообщения от третьего к первому. Изменим код следующим образом (рис. 2.6)

![Изменение файла](image/6.png)

Соберём и запустим программу (рис. 2.7)

![Сборка и запуск](image/7.png)

Теперь создадим файл второй файл - lab7-2.asm (рис. 2.8)

![Создание файла lab7-2.asm](image/8.png)

Вставим в файл lab7-2.asm следующий код (рис. 2.9)

![Запись кода в файл lab7-2.asm](image/9.png)

Теперь скомпилируем его и запустим, провери для разных значений (рис. 2.10)

![Компиляция программы и проверка работы](image/10.png)

Попробуем пересобрать файл lab7-2.asm так, чтобы создался файл листинга и откроем файл листинга (рис. 2.11)

![Создание листинга и его открытие](image/11.png)

После его открытия мы видим следующее (рис. 2.12)

![Содержимое файла листинга](image/12.png)

Теперь рассмотрим несколько строк файла листинга:
<p><br>1. Строка 21 перемещает значение переменной B регистр eax
<p><br>2. Строка 22 преобразовывает значение регистра eax в число
<p><br>3. Строка 23 перемещает значение регистра eax в переменную B

<p><br>Намеренно сделаем ошибку в коде, и уберём у команды mov один операнд (рис. 2.13)

![Создание ошибки в файле](image/13.png)

Теперь соберём этот файл и создадим файл листинга (рис. 2.14)

![Создание файла листинга и вывод ошибки](image/14.png)

Откроем файл листинга и посмотрим на изменения (рис. 2.15)

![Файл листинга с ошибкой](image/15.png)

Заметим, что в листинге появилась ошибка

<p><br>Самостоятельная работа

Создадим файлы для самостоятельной работы (19 вариант) (рис. 2.16)

![Создание файлов самостоятельной работы](image/16.png)

Код для выполнения первого задания выглядит так (рис. 2.17)

![Код первого задания](image/17.png)

Скомпилируем его и посмотрим на результат (рис. 2.18)

![Компиляция файла и результат выполнения](image/18.png)

Код для выполнения второго задания выглядит так (рис. 2.19)

![Код второго файла самостоятельной работы](image/19.png)

Скомпилируем его и посмотрим на результат (рис. 2.20)

![Компиляция файла и результат выполнения](image/20.png)

Программы считают всё верно

# Выводы

Были изучены команды условных и безусловных переходов, а также они были применены на практике. Была рассмотрена работа с файлами листинга
