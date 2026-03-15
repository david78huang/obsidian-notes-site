# HEARTBEAT.md - OpenClaw Obsidian 联动

## 自动同步任务

### 每次 Heartbeat 检查（自动运行）
- [ ] 同步 OpenClaw memory/ 到 Windows Obsidian
  - 运行: ~/.openclaw/workspace/scripts/sync_to_obsidian.sh
  - 目标: /mnt/d/obsidian/

### 每日同步
- [ ] 检查 Obsidian 每日笔记
- [ ] 整理 Inbox 到相应文件夹
- [ ] 更新任务状态

### 实时同步（通过 Telegram bot）
- 重要信息立即保存到 memory/daily/
- 项目信息保存到 memory/topics/
- 系统配置保存到 memory/topics/

## 联动规则

### 触发条件
1. 用户说"保存到 Obsidian"
2. 用户说"记住这个"
3. 用户说"记录到笔记"
4. 完成重要任务后自动保存

### 保存位置
- 日常想法 → `memory/daily/YYYY-MM-DD.md`
- 学习笔记 → `memory/topics/学习笔记.md`
- 项目信息 → `memory/topics/项目开发.md`
- 系统配置 → `memory/topics/系统配置与规则.md`
- 个人偏好 → `memory/topics/主人偏好与习惯.md`

## 同步命令

### 手动同步
```bash
# 同步 memory 到 Obsidian Vault
~/.openclaw/workspace/scripts/sync_to_obsidian.sh
```

### 自动同步（后台运行）
```bash
# 启动自动监控（需要 inotify-tools）
~/.openclaw/workspace/scripts/auto_sync_obsidian.sh
```

### 设置别名（推荐）
```bash
# 添加到 .bashrc
echo 'alias sync-obsidian="~/.openclaw/workspace/scripts/sync_to_obsidian.sh"' >> ~/.bashrc
source ~/.bashrc

# 使用
sync-obsidian
```
