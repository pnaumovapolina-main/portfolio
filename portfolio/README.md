# Bash скрипты для системных задач 

Набор скриптов, написанных в процессе обучения работы с терминалом.


## Содержимое 

**scripts/** 

- clean_min.sh - очистка системы 
- sysinfo.sh - информация о системе 
- check_scripts.sh - проверка синтаксиса 
- check_disk.sh - мониторинг диска 

**docker/**

docker-compose.yml - запуск nginx и postgres 


## Запуск

**Скрипты:**

cd scripts

bash clean_min.sh 

bash sysinfo.sh 

bash check_scripts.sh

bash check_disk.sh 

**Docker:**

cd docker 

sudo docker-compose up -d
