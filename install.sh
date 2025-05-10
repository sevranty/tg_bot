#!/bin/bash
echo "🔧 Установка зависимостей..."
pip install -r requirements.txt
echo "⚙️ Установка systemd сервиса..."
sudo cp telegram_bot.service /etc/systemd/system/
sudo systemctl daemon-reexec
sudo systemctl enable telegram_bot
sudo systemctl restart telegram_bot
echo "✅ Установка завершена."
