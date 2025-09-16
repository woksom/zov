!#/bin/bash

backup_files="/var/log/kern.log"
dest="/home/woksom/backup_files"
day=$(date "+%Y-%m-%d")
archive_file="$day.txt"
echo "Начало резеврного копирования файлов $backup_files"
echo

sudo tar -cPvf $dest/$archive_file $backup_files

echo "Резервное копирование файлов $backup_files завершено"
date
ls -lh $dest