#!/bin/bash

set -e
set -u

THRESHOLD=80

if ! command -v df &>/dev/null; then
echo "Ошибка: команда df не найдена"
exit 1
fi

USAGE=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%/ /')
if [ "$USAGE" -gt "$THRESHOLD" ]; then
echo "Внимание! Корневой диск заполнен на $USAGE%"
echo "Самые большие папки в /home:"
du -sh /home/* 2>/dev/null | sort -hr | head -5
else
echo "Диск в порядке: $USAGE% использовано"
fi
