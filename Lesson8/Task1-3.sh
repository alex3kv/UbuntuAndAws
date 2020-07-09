### 1. Вывести на экран 3 раза имя пользователя, от которого запускается команда.

function run() {
 $@
 for n in {1..3}
  do
     whoami
  done
}

run echo "Привет мир!"

### 2. Вывести с помощью цикла while все четные числа от 0 до 100 включительно.

i=0
while [ $i -lt 101 ]
do
  echo $i
  i=$(( $i + 2 ))
done

### 3. Создать с помощью nano файл test.txt. Настроить автоматический бэкап этого файла раз в 10 минут в файл с названием test.txt.bak с использованием cron.

nano test.txt

crontab -e

# в файле добавляем строку
# */10 * * * * cp /home/alex/test.txt /home/alex/test.txt.bak