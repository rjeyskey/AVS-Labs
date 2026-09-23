#!/bin/bash
# Лабораторная работа №1 (АрхВС), вариант 13.
# Часть 1: создание дерева каталогов и файлов с содержимым.
# Запускать из корня репозитория: ./01_create_tree.sh

cd "$(dirname "$0")" || exit 1

echo "=== Часть 1.2: создание дерева каталогов и файлов ==="

mkdir -p lab0
cd lab0

# --- каталоги ---
mkdir -p claude_monet/warehouse
mkdir -p claude_monet/meat_delivery
mkdir -p claude_monet/fish_delivery
mkdir -p claude_monet/kitchen/hot_station
mkdir -p claude_monet/kitchen/cold_station
mkdir -p claude_monet/office

# --- файлы warehouse ---
cat > claude_monet/warehouse/stock_list << 'TXT'
На складе осталось десять упаковок мяса
Свежая рыба размещена в холодильнике
Поставщик зелени ожидается вечером
TXT

cat > claude_monet/warehouse/rejection_log << 'TXT'
Поставщик забрал коробку испорченных овощей
Две упаковки мяса отправлены на возврат
Баринов потребовал заменить продукты сегодня
TXT

# --- файлы meat_delivery ---
cat > claude_monet/meat_delivery/senya_invoice << 'TXT'
Говядина двадцать килограммов
Телятина десять килограммов
Поставщик мяса подтвердил вес заказа
TXT

cat > claude_monet/meat_delivery/supplier_note << 'TXT'
Доставка мяса задержалась на сорок минут
Сеня принял продукты на складе
Следующий заказ привезут утром
TXT

# --- файлы fish_delivery ---
cat > claude_monet/fish_delivery/fedya_invoice << 'TXT'
Сибас двенадцать штук
Дорадо восемь штук
Поставщик рыбы добавил коробку льда
TXT

cat > claude_monet/fish_delivery/freshness_report << 'TXT'
Рыба имеет свежий запах
Температура при доставке не нарушена
Федя разрешил использовать весь заказ
TXT

# --- файлы kitchen ---
cat > claude_monet/kitchen/hot_station/barinov_claim << 'TXT'
Баринов недоволен опозданием машины
Шеф требует проверять каждого поставщика
Качество продуктов важнее скидки
TXT

cat > claude_monet/kitchen/cold_station/fish_order << 'TXT'
Для банкета требуется свежая рыба
Федя выбрал сибаса и дорадо
Заказ нужно передать Вике
TXT

# --- файлы office ---
cat > claude_monet/office/vika_payment << 'TXT'
Вика получила накладные от Сени и Феди
Оплата поставщикам назначена на вечер
Возврат продуктов вычитается из суммы
TXT

# --- файл в корне ---
cat > delivery_call << 'TXT'
Поставщик позвонил перед открытием ресторана
Машина с продуктами стоит у входа
Лёва должен открыть склад
TXT

echo "=== Дерево lab0 создано ==="
ls -lR
