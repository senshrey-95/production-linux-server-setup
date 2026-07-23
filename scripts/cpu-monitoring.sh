#!/bin/bash

echo "========== CPU Usage =========="

top -bn1 | head -5

echo " "

echo "========== TOP 5 CPU Processes =========="

ps aux --sort=%cpu | head -6
