### 1. ��������� htop � ����������, ������� ����������� � ����������� ������ ���� �� �������.

# ��������� htop
htop
# ������ �����

### 2. ����� ��� ��������� � ����������� .py.

#��������� � �������� ���������� ���� ������������� /home
cd /home

# ������� ���� ��������� ������� ����������
ls

# ��������� ����� ������ � ����������� .py
find -type f -name "*.py"

### 3. * ������� � ��������� ��������� �� Python, ��������� ����� �� 0 �� 100 ������������.
# ��������� htop �� ����� ���������� ��������� � ����� ����������� ��������� � ������ ���������, ��������� ����� �� ��������� ����� python (������������ �������� ������ htop).

# ��������� � �������� ����������
cd ~

# ������� ���� ��������� � ������� ����� �� 1 �� 100 ������������
vim timer.py

# �������� ���������� �����
cat timer.py

#! /usr/bin/python3
import time

for i in range(1, 101):
    time.sleep(1)
    print(i)

# ����������� ������ ��� �������� ������������ �� ���������� ����� timer.py
chmod u+x timer.py

# ��������� ����� �� ���� timer.py
ls -l timer.py
-rwxr--r-- 1 alex alex 101 Jun 28 18:05 timer.py

#�������� ����� ������� ����������
ls
timer.py - �� ����������� ��� ����������� ����

# �������� �� ���������� �������������� ����� � ��������� � ���
./timer.py > /dev/null &

# ��������� ������
jobs
[1]+  Running                 ./timer.py > /dev/null &

# �������� htop
htop

# ������� �� F3 � �� ��������� ����� python, ������ ����� 



