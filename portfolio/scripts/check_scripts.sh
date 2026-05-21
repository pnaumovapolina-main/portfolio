#!/bin/bash
set -euo pipefail

RED='\033[0;31m'
YELLOW='\033[0;32m'
GREEN='\033[0;33m'
NC='\033[0m'

echo -e "${YELLOW} Проверка скриптов в $(pwd)...${NC}\n"

for script in *.sh; do
	if [ ! -f "$script" ]; then
	     continue
	fi

	if bash -n "$script" 2>/dev/null; then
	    echo -e "${GREEN} $script ${NC}"
	else
	    echo -e "${RED} $script - ошибка синтаксиса${NC}"
	    bash -n "$script" 2>&1 | head -1
	fi
done

echo -e "\n${YELLOW}Готово${NC}"
