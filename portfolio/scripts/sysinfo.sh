#!/bin/bash
set -euo pipefail

PURP='\033[0;35m'
NC='\033[0m'

echo -e "${PURP} ☆  Информация о системе ☆ ${NC}"
echo "Хост: $(hostname)"
echo "Ядро: $(uname -r)"
echo "Память: $(free -h | grep Mem | awk '{print $2}') всего, $(free -h | grep Mem | awk '{print $4}') свободно"
echo "Диск: $(df -h | tail -n 1 | awk '{print $5}') использовано"
echo "IP: $(ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+}{3}' | head -1)"
echo "Процессор: $(grep -m1 "model name" /proc/cpuinfo | cut -d: -f2 | xargs)"
echo "Температура: $(sensors | grep -i core)"
echo "Загрузка: $(uptime -p)"

