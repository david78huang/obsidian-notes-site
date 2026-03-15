#!/bin/bash
# 监听 Obsidian 笔记变动，自动部署网站

WATCH_DIR="/mnt/d/obsidian"
DEPLOY_SCRIPT="/mnt/d/quartz-site/deploy.sh"

echo "=== Quartz 自动部署监听 ==="
echo "监听目录: $WATCH_DIR"
echo "按 Ctrl+C 停止"

# 使用 inotifywait 监听文件变动
while true; do
    inotifywait -r -e modify,create,delete,move "$WATCH_DIR" --exclude '.git' 2>/dev/null
    
    # 等待 5 秒，避免频繁部署
    echo "检测到文件变动，5秒后部署..."
    sleep 5
    
    # 执行部署
    bash "$DEPLOY_SCRIPT" 2>&1 | tee -a /tmp/quartz-deploy.log
done
