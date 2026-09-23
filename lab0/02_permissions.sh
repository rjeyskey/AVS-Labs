#!/bin/bash
# Лабораторная работа №1 (АрхВС), вариант 13.
# Часть 1, пункт 3: установка прав доступа.
# Числа ставятся числовым способом, буквы/слова - символьным.
# Запускать из корня репозитория: ./02_permissions.sh

cd "$(dirname "$0")" || exit 1

echo "=== Часть 1.3: установка прав доступа ==="

cd lab0

# --- числовой способ ---
chmod 755 claude_monet
chmod 640 claude_monet/warehouse/stock_list
chmod 750 claude_monet/meat_delivery
chmod 644 claude_monet/meat_delivery/supplier_note
chmod 640 claude_monet/fish_delivery/fedya_invoice
chmod 750 claude_monet/kitchen
chmod 640 claude_monet/kitchen/hot_station/barinov_claim
chmod 750 claude_monet/office
chmod 640 claude_monet/office/vika_payment

# --- символьный способ ---
# warehouse: rwxr-x---
chmod u=rwx,g=rx,o= claude_monet/warehouse
# rejection_log: rw-r-----
chmod u=rw,g=r,o= claude_monet/warehouse/rejection_log
# senya_invoice: владелец rw, группа r, остальные без прав
chmod u=rw,g=r,o= claude_monet/meat_delivery/senya_invoice
# fish_delivery: rwxr-x---
chmod u=rwx,g=rx,o= claude_monet/fish_delivery
# freshness_report: rw-r--r--
chmod u=rw,g=r,o=r claude_monet/fish_delivery/freshness_report
# hot_station: владелец все права, группа rx, остальные без прав
chmod u=rwx,g=rx,o= claude_monet/kitchen/hot_station
# cold_station: rwxr-x---
chmod u=rwx,g=rx,o= claude_monet/kitchen/cold_station
# fish_order: rw-r-----
chmod u=rw,g=r,o= claude_monet/kitchen/cold_station/fish_order
# delivery_call: владелец rw, группа r, остальные без прав
chmod u=rw,g=r,o= delivery_call

echo "=== Права доступа выставлены ==="
ls -lR
