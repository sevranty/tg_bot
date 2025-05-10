#!/bin/bash
BACKUP_DIR="/home/user/telegram-bot/backups"
mkdir -p "$BACKUP_DIR"
DATE=$(date +%Y-%m-%d_%H-%M)
BACKUP_FILE="$BACKUP_DIR/db_backup_$DATE.sql"
mysqldump -u$MYSQL_USER -p$MYSQL_PASSWORD telegram_bot_db > "$BACKUP_FILE"
find "$BACKUP_DIR" -type f -name "*.sql" -mtime +7 -delete
echo "📦 Бэкап завершён: $BACKUP_FILE"
