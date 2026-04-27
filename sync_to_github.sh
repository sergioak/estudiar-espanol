#!/bin/bash
# 自动同步词汇卡片到 GitHub
cd ~/estudiar_español

# 检查是否有新文件
if [ -n "$(git status --porcelain)" ]; then
    git add -A
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M')
    git commit -m "自动同步: $TIMESTAMP"
    git push origin main
    echo "✅ 已同步到 GitHub ($(git status --short | wc -l) 个文件)"
else
    echo "ℹ️ 没有新文件需要同步"
fi
