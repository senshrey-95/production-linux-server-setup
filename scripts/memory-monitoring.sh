#!/bin/bash

echo '========== Memory Usage =========='

free -h

echo " "

echo " ========== Top 5 Memory Processes =========="

ps aux --sort=%mem | head -6
