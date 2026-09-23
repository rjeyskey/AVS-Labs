#!/bin/bash
# Лабораторная работа №1 (АрхВС), вариант 13.
# Часть 4: поиск, фильтрация и обработка данных.
# Запускать из корня репозитория: ./04_search.sh

cd "$(dirname "$0")" || exit 1
cd lab0

echo "=== Задание 4.1 ==="
# подробный рекурсивный список -> только обычные файлы -> без имён с copy
# -> сортировка по размеру как по числу (по возрастанию) -> последние 5
ls -lR | grep '^-' | grep -v copy | sort -k5 -n | tail -n 5

echo
echo "=== Задание 4.2 ==="
# рекурсивно по содержимому claude_monet, без имён файлов (-h),
# строки с 'поставщик' или 'продукт' в любом регистре (-i),
# исключить строки с 'утром', сортировка по алфавиту, первые 6
grep -rhiE 'поставщик|продукт' claude_monet | grep -vi 'утром' | sort | head -n 6

echo
echo "=== Задание 4.3 ==="
# имена файлов (а не строки) с сочетанием 'рыб' в обоих каталогах
grep -rl 'рыб' claude_monet/fish_delivery claude_monet/warehouse/fish_backup
echo "Количество файлов:"
grep -rl 'рыб' claude_monet/fish_delivery claude_monet/warehouse/fish_backup | wc -l

echo
echo "=== Задание 4.4 ==="
# маска *_invoice даёт senya_invoice и fedya_invoice; -q убирает заголовки '==> файл <==',
# отбор по 'поставщик|килограмм|штук' в любом регистре, обратный алфавитный порядок
tail -qn 2 claude_monet/meat_delivery/*_invoice claude_monet/fish_delivery/*_invoice \
  | grep -iE 'поставщик|килограмм|штук' | sort -r

echo
echo "=== Задание 4.5 ==="
# без строк с 'поставщик', обратный алфавитный порядок, первые 3 строки, счёт слов
grep -vi 'поставщик' claude_monet/warehouse/all_invoices | sort -r | head -n 3
echo "Количество слов в этих трёх строках:"
grep -vi 'поставщик' claude_monet/warehouse/all_invoices | sort -r | head -n 3 | wc -w

echo
echo "=== Задание 4.6 ==="
# список с номерами inode, только обычные файлы с числом жёстких ссылок 2,
# сортировка по номеру inode как по числу
ls -liR | grep -E '^[0-9]+ -[rwxsStT-]{9} +2 ' | sort -n

echo
echo "=== Задание 4.7 ==="
# только символические ссылки, сортировка по имени ссылки, последняя строка
ls -lR | grep '^l' | sort -k9 | tail -n 1
