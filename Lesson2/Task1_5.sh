# Задание 1
# Создать каталоги first и second в домашней директории, а в них — текстовые файлы first.py и second.py, содержащие программы, выводящие на экран числа 1 и 2 соответственно.

mkdir first
mkdir second

ls

echo "print(1)" > first/first.py
echo "print(2)" > second/second.py

ls first
ls second

# Задание 2
# Переместите файл second.py в папку first.

mv second/second.py first/second.py

ls first

# Задание 3
# Удалите папку second

rm -r second

ls

# Задание 4
# Переименуйте папку first в first_second

mv first/ first_second/

ls

# Задание 5
# Удалите папку first_second вместе с содержимым

rm -r first_second

ls
