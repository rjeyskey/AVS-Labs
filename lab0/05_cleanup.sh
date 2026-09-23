#!/bin/bash
# Лабораторная работа №1 (АрхВС), вариант 13.
# Часть 5: удаление файлов, ссылок и каталогов.
# Запускать из корня репозитория: ./05_cleanup.sh

cd "$(dirname "$0")" || exit 1
echo "=== Часть 5: удаление файлов, ссылок и каталогов ==="

cd lab0

# 1. Копия файла в office
rm claude_monet/office/call_copy

# 2. Символическая ссылка в корне lab0
rm stock_link

# 3. Символическая ссылка в kitchen
rm claude_monet/kitchen/warehouse_access

# 4. Жёсткая ссылка в meat_delivery
rm claude_monet/meat_delivery/invoice_duplicate

# 5. Перемещённый файл в office
rm claude_monet/office/urgent_fish_order

# 6. Опустевший каталог cold_station
rmdir claude_monet/kitchen/cold_station

# 7. Файл в warehouse
rm claude_monet/warehouse/rejection_log

# 8. Каталог fish_backup со всем содержимым
rm -r claude_monet/warehouse/fish_backup

echo "=== Часть 5 выполнена ==="
ls -lR
