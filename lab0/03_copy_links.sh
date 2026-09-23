#!/bin/bash
# Лабораторная работа №1 (АрхВС), вариант 13.
# Часть 3: копирование, создание ссылок, объединение содержимого.
# Запускать из корня репозитория: ./03_copy_links.sh

cd "$(dirname "$0")" || exit 1
echo "=== Часть 3: копирование, ссылки, объединение файлов ==="

cd lab0

# 1. Копируем файл delivery_call в office под именем call_copy
cp delivery_call claude_monet/office/call_copy

# 2. Рекурсивно копируем каталог fish_delivery в warehouse под именем fish_backup
cp -r claude_monet/fish_delivery claude_monet/warehouse/fish_backup

# 3. Символическая ссылка stock_link в корне lab0 на файл stock_list
ln -s claude_monet/warehouse/stock_list stock_link

# 4. Относительная символическая ссылка warehouse_access в kitchen на ../warehouse
cd claude_monet/kitchen
ln -s ../warehouse warehouse_access
cd ../..

# 5. Жёсткая ссылка invoice_duplicate на файл senya_invoice
ln claude_monet/meat_delivery/senya_invoice claude_monet/meat_delivery/invoice_duplicate

# 6. Объединяем содержимое двух накладных в новый файл all_invoices
cat claude_monet/meat_delivery/senya_invoice claude_monet/fish_delivery/fedya_invoice > claude_monet/warehouse/all_invoices

# 7. Дописываем rejection_log в конец barinov_claim
cat claude_monet/warehouse/rejection_log >> claude_monet/kitchen/hot_station/barinov_claim

# 8. Перемещаем fish_order в office под именем urgent_fish_order
mv claude_monet/kitchen/cold_station/fish_order claude_monet/office/urgent_fish_order

echo "=== Часть 3 выполнена ==="
ls -lR
