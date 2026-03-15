#!/bin/bash
# 自动构建并部署 Quartz 网站

echo "=== Quartz 自动部署 ==="
echo "时间: $(date)"

cd /mnt/d/quartz-site

# 构建网站
echo "[1/3] 构建网站..."
npx quartz build --directory content

# 复制构建文件到 gh-pages
echo "[2/3] 准备部署文件..."
git checkout gh-pages
cp -r public/* .

# 提交并推送
echo "[3/3] 部署到 GitHub Pages..."
git add .
git commit -m "Auto deploy: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin gh-pages

echo "=== 部署完成 ==="
echo "网站: https://david78huang.github.io/obsidian-notes-site"
