﻿# 1. Создать пользователя user_new и предоставить ему права на редактирование файла с программой, выводящей на экран Hello, world!


# Создаем файл выводящий Hello, world!
vim hello.py

# Проверим содержимое файла
cat hello.py
print("Hello, World!")

# Создание пользователя
sudo useradd -m -s /bin/bash user_new

# Определяем пароль для пользователя
sudo passwd user_new

# Посмотрим права на файл hello.py
ls -l hello.py

# Предоставить другим пользователям права на запись в файл hello.py
chmod o+w hello.py

# Запустим команду ls -l hello.py и убедимся, что права на файл поменялись
ls -l hello.py


# 2. Зайти под юзером user_new и с помощью редактора Vim поменять фразу в скрипте из пункта 1 на любую другую.



# Зайдём в оболочку под другим пользователем
su user_new

# Проверим
whoami

# Редактируем файл выводящий Hello, world!
vim hello.py

# Проверим содержимое файла
cat hello.py
print("Привет, Мир!")

# Выйти из сессии этого пользователя
exit


# 3.* Под юзером user_new зайти в его домашнюю директорию и создать программу на Python, выводящую в консоль цифры от 1 до 10 включительно с интервалом в 1 секунду.


# Зайдём в оболочку под другим пользователем
su user_new

# Проверим
whoami

# Переходим в домашнюю директорию
cd ~

# Создаем файл выводящий в консоль цифры от 1 до 10 включительно с интервалом в 1 секунду
vim timer.py

# Проверим содержимое файла
cat timer.py

#! /usr/bin/python3
import time


for i in range(1, 11):
    time.sleep(1)
    print(i)

# Предоставим доступ для текущего пользователя на выполнение файла timer.py
chmod u+x timer.py

# Посмотрим права на файл timer.py
ls -l timer.py
-rwxrw-r-- 1 user_new user_new 89 Jun 25 13:57 timer.py

#выполним вывод текущей директории
ls
timer.py - он подсветился как исполняемый файл

# вызываем на исполнение
./timer.py

1
2
3
4
5
6
7
8
9
10

# выходим из сессии
exit

