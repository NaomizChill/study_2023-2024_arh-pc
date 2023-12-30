---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык разметки Markdown"
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

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown

# Выполнение лабораторной работы

Перейдём в рабочую папку и обновим файлы на компьютере (Рис. 2.1)

![Переход в папку и git pull](image/1.png)

Перейдём в папку третьей лабораторной работы и сгенерируем файлы отчёта (Рис. 2.2)

![Генерация отчёта с помощью make](image/2.png)

Убедимся в том, что они успешно созданы (Рис. 2.3)

![Папка с отчётами](image/3.png)

Теперь посмотрим на корректность их генерирования (Рис. 2.4-2.5)

![Файл в формате docx](image/4.png)

![Файл в формате pdf](image/5.png)

Теперь удалим их (Рис. 2.6)

![Удаление отчёта с помощью make clean](image/6.png)

Убедимся в успешном удалении (Рис. 2.7)

![Вид папки после make clean](image/7.png)

Теперь откроем файл .md (Рис. 2.8)

![Открытие файла .md](image/8.png)

Посмотрим на то, как он выглядит (Рис. 2.9)

![Внешний вид файла](image/9.png)

Теперь оформим отчёт и загрузим его на гитхаб (Рис. 2.10)

![Отправка отчёта на github](image/10.png)

Теперь оформим отчёт второй лабораторной работы и сгенерируем его (Рис. 2.11)

![Генерация отчёта](image/11.png)

И отправмим его на github (Рис. 2.11)

![Отправка отчёта на github](image/12.png)

# Выводы

Были получены навыки работы с markdown, были созданы отчёты с его помощью
