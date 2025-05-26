#!/bin/bash

# Дата в формате YYYY-MM-DD
DATE=$(date +%F)

# Путь до архива
SOURCE_DIR="$HOME/test_folder"
BACKUP_DIR="$HOME/backup"
ARCHIVE_NAME="test_folder-$DATE.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

# Проверка: существует ли исходная папка
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Исходная папка $SOURCE_DIR не найдена!"
  exit 1
fi

# Создание папки для бэкапов, если её нет
mkdir -p "$BACKUP_DIR"

# Архивирование
tar -czf "$ARCHIVE_PATH" -C "$HOME" "test_folder"

# Эмуляция загрузки в S3
echo "Архив $ARCHIVE_PATH успешно создан."
echo "Загрузка в S3..."
echo "Uploading $ARCHIVE_PATH to S3... (симуляция)"

# Успешный выход
exit 0
