#!/bin/bash
echo "🚀 Установка с Mac и передача конфигурации..."
scp secrets/.env.prod user@server:/home/user/telegram-bot/secrets/.env.prod
scp telegram_bot.service user@server:/home/user/telegram-bot/
ssh user@server 'cd /home/user/telegram-bot && bash install.sh'
