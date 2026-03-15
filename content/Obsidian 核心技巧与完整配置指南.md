# Obsidian 核心技巧与完整配置指南

> 基于 Linking Your Thinking、Jason Efficiency Lab、清单控沙牛三大频道教程
> 生成时间：2026-03-15

---

## 📚 目录

1. [快速开始](#快速开始)
2. [文件夹架构（PARA 方法）](#文件夹架构)
3. [核心插件推荐](#核心插件推荐)
4. [模板系统](#模板系统)
5. [Bases 数据库配置](#bases-数据库配置)
6. [AI 集成方案](#ai-集成方案)
7. [OpenClaw 联动](#openclaw-联动)
8. [学习路径](#学习路径)

---

## 🚀 快速开始

### 系统要求
- Obsidian 1.10+
- Node.js v22.12+（用于 OpenClaw）
- OpenClaw v2026.3.2+

### 安装步骤

```bash
# 1. 下载 Obsidian
https://obsidian.md/download

# 2. 创建 Vault
# 选择本地文件夹作为你的知识库

# 3. 安装 OpenClaw（已安装）
# 参考你的 OpenClaw 配置
```

---

## 📁 文件夹架构

### PARA 方法实现

```
📁 Vault/
├── 📁 00-Inbox/              # 收集箱 - 临时存放
├── 📁 01-Daily/              # 日记 - 每日笔记
│   └── 📁 2026/
│       └── 📁 03/
│           └── 2026-03-15.md
├── 📁 02-Areas/              # 责任领域
│   ├── 📁 健康/
│   ├── 📁 家庭/
│   ├── 📁 工作/
│   ├── 📁 学习/
│   └── 📁 财务/
├── 📁 03-Projects/           # 项目（有截止日期）
│   ├── 📁 AI创业/
│   ├── 📁 GB300测试/
│   └── 📁 Rubin机柜测试/
├── 📁 04-Resources/          # 资源库
│   ├── 📁 AI技术/
│   ├── 📁 HPC知识/
│   ├── 📁 读书笔记/
│   └── 📁 工具软件/
├── 📁 05-Archives/           # 归档
│   └── 📁 2025/
├── 📁 99-System/             # 系统配置
│   ├── 📁 Templates/         # 模板
│   └── 📁 Scripts/           # 脚本
└── 📁 memory/                # OpenClaw 记忆
    ├── 📁 topics/
    └── 📁 daily/
```

### 文件夹说明

| 文件夹 | 用途 | 示例 |
|--------|------|------|
| **00-Inbox** | 快速收集，稍后整理 | 临时笔记、截图、链接 |
| **01-Daily** | 每日笔记、日记 | 2026-03-15.md |
| **02-Areas** | 持续关注的领域 | 健康、家庭、工作、学习 |
| **03-Projects** | 有明确目标和时间 | AI创业、GB300测试 |
| **04-Resources** | 可复用的知识 | 技术文档、读书笔记 |
| **05-Archives** | 已完成的项目 | 2025年归档 |
| **99-System** | 系统文件 | 模板、脚本、配置 |
| **memory** | OpenClaw 记忆 | 自动同步 |

---

## 🔌 核心插件推荐

### 官方核心插件（必开）

| 插件 | 功能 | 用途 |
|------|------|------|
| **Daily Notes** | 每日笔记 | 日记、晨间日记 |
| **Templates** | 模板 | 快速创建结构化笔记 |
| **Graph View** | 图谱视图 | 查看笔记关联 |
| **Backlinks** | 反向链接 | 查看引用关系 |
| **Outline** | 大纲 | 快速导航 |
| **Tags** | 标签 | 分类管理 |

### 社区插件（推荐）

#### 必备插件

| 插件 | 功能 | 安装命令 |
|------|------|----------|
| **Dataview** | 数据库查询 | 搜索安装 |
| **Templater** | 高级模板 | 搜索安装 |
| **QuickAdd** | 快速添加 | 搜索安装 |
| **Periodic Notes** | 周期性笔记 | 搜索安装 |
| **Calendar** | 日历视图 | 搜索安装 |

#### 效率插件

| 插件 | 功能 | 用途 |
|------|------|------|
| **Obsidian Git** | Git 同步 | 版本控制 |
| **Remotely Save** | 云同步 | S3/WebDAV |
| **Excalidraw** | 手绘图 | 思维导图 |
| **Kanban** | 看板 | 任务管理 |
| **Tasks** | 任务管理 | 待办事项 |

#### AI 集成插件

| 插件 | 功能 | 用途 |
|------|------|------|
| **Smart Connections** | AI 语义搜索 | 相似笔记 |
| **Copilot** | AI 助手 | 写作辅助 |
| **Text Generator** | AI 生成 | 内容创作 |

---

## 📝 模板系统

### 1. 每日笔记模板

**文件**: `99-System/Templates/Daily Note.md`

```markdown
---
date: {{date:YYYY-MM-DD}}
tags: [日记/每日]
---

# {{date:YYYY 年 MM 月 DD 日}} {{date:dddd}}

## 📅 今日计划
- [ ] 

## 📝 今日记录

### 工作

### 学习

### 生活

## 🧠 今日想法

## 📚 今日学习

## ✅ 今日完成
- [x] 

## 🔄 明日计划
- [ ] 

## 🔗 相关链接
- 
```

### 2. 项目笔记模板

**文件**: `99-System/Templates/Project.md`

```markdown
---
created: {{date:YYYY-MM-DD}}
tags: [项目]
status: 进行中
---

# {{title}}

## 🎯 项目目标

## 📋 任务清单
- [ ] 

## 📅 时间线
- 开始日期: {{date:YYYY-MM-DD}}
- 截止日期: 

## 📝 笔记

## 🔗 资源
- 

## 📊 进度
```

### 3. 读书笔记模板

**文件**: `99-System/Templates/Book Note.md`

```markdown
---
created: {{date:YYYY-MM-DD}}
tags: [读书笔记]
---

# 《{{title}}》

## 📚 书籍信息
- 作者: 
- 出版日期: 
- 阅读日期: {{date:YYYY-MM-DD}} -

## 📝 核心观点

## 💡 关键收获

## 🔗 关联知识
- 

## 🎯 行动计划
- [ ] 
```

### 4. 会议记录模板

**文件**: `99-System/Templates/Meeting.md`

```markdown
---
date: {{date:YYYY-MM-DD}}
tags: [会议]
---

# {{title}}

## 📋 会议信息
- 时间: {{date:YYYY-MM-DD HH:mm}}
- 地点: 
- 参与人: 

## 📝 会议内容

## ✅ 行动项
- [ ] 

## 🔗 相关资料
- 
```

---

## 🗄️ Bases 数据库配置

### 1. 任务管理数据库

**位置**: `99-System/Bases/Tasks.md`

```markdown
---
database: true
---

| 任务 | 状态 | 优先级 | 截止日期 | 项目 | 标签 |
|------|------|--------|----------|------|------|
| 学习 LangChain | 进行中 | 高 | 2026-04-30 | AI创业 | #学习 |
| 配置 OpenClaw | 已完成 | 中 | 2026-03-15 | 系统 | #工具 |
```

**视图配置**:
- 表格视图：所有任务
- 看板视图：按状态分组
- 日历视图：按截止日期

### 2. 知识库数据库

**位置**: `99-System/Bases/Knowledge.md`

```markdown
---
database: true
---

| 主题 | 分类 | 掌握程度 | 最后复习 | 标签 |
|------|------|----------|----------|------|
| Transformer | AI | 初学 | 2026-03-15 | #LLM |
| LangChain | 框架 | 初学 | 2026-03-15 | #Agent |
```

---

## 🤖 AI 集成方案

### 1. Claude Skill 配置

**用途**: 笔记总结、扩展、翻译、改进

**使用方法**:
```markdown
# 在笔记中添加指令

/claude 总结这段内容
/claude 扩展这个想法
/claude 翻译成英文
/claude 改进这段文字
```

### 2. OpenClaw 联动

**用途**: Telegram/微信消息自动整理到 Obsidian

**配置**:
```json
{
  "channels": {
    "telegram": {
      "systemPrompt": "将重要信息保存到 Obsidian"
    }
  }
}
```

**自动化工作流**:
1. 在 Telegram 发送消息给 butler
2. OpenClaw 处理并提取关键信息
3. 自动保存到 `00-Inbox/` 或 `memory/`
4. 定期整理到相应文件夹

### 3. 本地 LLM 集成（Ollama）

**用途**: 隐私敏感内容的本地处理

**配置**:
```json
{
  "models": {
    "mode": "merge",
    "providers": {
      "ollama": {
        "baseUrl": "http://localhost:11434",
        "models": ["llama3.2", "mistral"]
      }
    }
  }
}
```

---

## 🔗 OpenClaw 联动配置

### 1. 自动保存 Telegram 消息

**配置**:
```json
{
  "channels": {
    "telegram": {
      "accounts": {
        "butler": {
          "systemPrompt": "重要信息自动保存到 Obsidian"
        }
      }
    }
  }
}
```

### 2. 每日笔记同步

**Heartbeat 配置**:
```markdown
# HEARTBEAT.md

- 检查 Obsidian 每日笔记
- 同步 OpenClaw 记忆到 memory/
- 整理 Inbox 到相应文件夹
```

### 3. 项目笔记联动

**工作流**:
1. 在 OpenClaw 中讨论项目
2. 关键决策自动记录到 `03-Projects/`
3. 任务自动同步到 Tasks 数据库

---

## 📖 学习路径

### 第 1 周：基础入门

**目标**: 掌握 Obsidian 基础

- [ ] Day 1: 安装 Obsidian，创建 Vault
- [ ] Day 2: 学习 Markdown 语法
- [ ] Day 3: 配置文件夹架构
- [ ] Day 4: 设置每日笔记
- [ ] Day 5: 安装核心插件
- [ ] Day 6-7: 实践使用

### 第 2-3 周：进阶提升

**目标**: 掌握高级功能

- [ ] 学习 Dataview 查询
- [ ] 配置 Templater 模板
- [ ] 设置 Bases 数据库
- [ ] 学习图谱和反向链接
- [ ] 配置云同步

### 第 4 周：AI 集成

**目标**: 集成 AI 工具

- [ ] 配置 Claude Skill
- [ ] 设置 OpenClaw 联动
- [ ] 配置本地 LLM（Ollama）
- [ ] 设计自动化工作流

### 持续优化

- [ ] 每周回顾笔记系统
- [ ] 优化模板和数据库
- [ ] 更新插件配置
- [ ] 定期归档旧笔记

---

## ✅ 配置检查清单

### 基础配置（30 分钟）
- [ ] 安装 Obsidian 1.10+
- [ ] 创建 Vault 文件夹
- [ ] 设置 PARA 文件夹架构
- [ ] 启用官方核心插件
- [ ] 创建每日笔记模板

### 本周完成（2-3 小时）
- [ ] 安装社区插件（Dataview、Templater 等）
- [ ] 配置 Bases 数据库
- [ ] 创建项目/读书笔记模板
- [ ] 设置 Git 同步
- [ ] 配置 OpenClaw 联动

### 高级配置（可选）
- [ ] 配置 AI 集成（Claude、Ollama）
- [ ] 设置自动化工作流
- [ ] 配置移动端同步
- [ ] 设计个人知识管理系统

---

## 📚 学习资源

### 视频教程

| 频道 | 订阅者 | 特色 |
|------|--------|------|
| [Linking Your Thinking](https://www.youtube.com/@linkingyourthinking) | 31.6 万 | LYT 方法论、知识管理理论 |
| [Jason Efficiency Lab](https://www.youtube.com/@JasonEfficiencyLab) | 2.04 万 | AI 工具实战、OpenClaw 部署 |
| [清单控沙牛](https://www.youtube.com/@sandox) | 6,370 | 新功能教程、Bases 数据库 |

### 推荐文章
- [Obsidian 官方文档](https://help.obsidian.md/)
- [PARA 方法](https://fortelabs.com/blog/para/)
- [Zettelkasten 笔记法](https://zettelkasten.de/)

---

## 🎯 下一步行动

1. **立即**: 创建 Vault 和文件夹架构
2. **今天**: 安装核心插件，创建模板
3. **本周**: 配置 OpenClaw 联动
4. **持续**: 每天使用，每周优化

---

*本指南由 OpenClaw Obsidian Master Skill 生成*
*基于 Linking Your Thinking、Jason Efficiency Lab、清单控沙牛教程*
