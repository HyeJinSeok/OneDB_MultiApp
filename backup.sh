#!/bin/bash

BACKUP_DIR=./db_backups
mkdir -p $BACKUP_DIR

BACKUP_FILE="$BACKUP_DIR/db_backup_$(date +%Y%m%d_%H%M%S).sql"

echo "📌 MySQL 데이터베이스 백업 시작..."
docker exec mysqldb /usr/bin/mysqldump -u root --password=root fisa > $BACKUP_FILE

echo "✅ 백업 완료: $BACKUP_FILE"
