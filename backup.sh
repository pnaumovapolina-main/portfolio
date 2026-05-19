#!/bin/bash

set -e
set -u

if [ ! -d ~/backups ]; then
mkdir ~/backups 
fi

DATE=$(date +%Y-%m-%d)

mkdir -p ~/documents
echo "секретно" > ~/documents/note1.txt
echo "важно" > ~/documents/note2.txt
echo "план" > ~/documents/plan.txt

for file in ~/documents/*.txt; do
basename "$file".txt ~/documents/
cp "$file" "$target_dir/${name}_$DATE.txt"
