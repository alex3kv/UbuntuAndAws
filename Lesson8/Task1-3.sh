### 1. ������� �� ����� 3 ���� ��� ������������, �� �������� ����������� �������.

function run() {
 $@
 for n in {1..3}
  do
     whoami
  done
}

run echo "������ ���!"

### 2. ������� � ������� ����� while ��� ������ ����� �� 0 �� 100 ������������.

i=0
while [ $i -lt 101 ]
do
  echo $i
  i=$(( $i + 2 ))
done

### 3. ������� � ������� nano ���� test.txt. ��������� �������������� ����� ����� ����� ��� � 10 ����� � ���� � ��������� test.txt.bak � �������������� cron.

nano test.txt

crontab -e

# � ����� ��������� ������
# */10 * * * * cp /home/alex/test.txt /home/alex/test.txt.bak