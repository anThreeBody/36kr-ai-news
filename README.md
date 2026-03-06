# 36kr AI News Fetcher 📰

> 从 36 氪 AI 新闻专题页面自动抓取最新报道，高效获取**中文 AI 行业动态**
> 
> Automatically fetch latest AI news from 36kr, efficiently get **Chinese AI industry updates**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![CoPaw](https://img.shields.io/badge/Powered%20by-CoPaw-blue)](https://github.com/copaw)
[![China Friendly](https://img.shields.io/badge/China%20Friendly-✅-red)]()
[![Category: News](https://img.shields.io/badge/Category-News-green)]()

---

## 🇨🇳 专为中国用户设计 | Designed for Chinese Users

**无需科学上网** - 直接访问 36 氪 AI 新闻专题，获取第一手中文 AI 行业资讯。

**No VPN Required** - Direct access to 36kr AI news section, get first-hand Chinese AI industry updates.

### 核心优势 | Core Features

| 中文 | English |
|------|---------|
| ✅ 直连 36kr，无需代理 | ✅ Direct 36kr access, no proxy needed |
| 📊 自动筛选 AI 相关新闻 | 📊 Auto-filter AI-related news |
| 🔍 百度搜索备选方案 | 🔍 Baidu search as backup |
| 📝 结构化输出 | 📝 Structured output |
| 🚀 轻量快速 | 🚀 Lightweight & fast |

---

## 🎯 适用场景 | Use Cases

| 场景 Scenario | 说明 Description |
|------|------|
| 📰 **每日 AI 简报** | 自动获取当天 36 氪 AI 新闻 |
| 💼 **市场调研** | 追踪中国 AI 公司最新动态 |
| 📊 **投资分析** | 监控 AI 行业融资、并购信息 |
| 🔬 **竞品监控** | 关注竞争对手新闻曝光 |
| 📱 **内容创作** | 获取 AI 领域写作素材 |

| Use Case | Description |
|----------|-------------|
| 📰 **Daily AI Brief** | Auto-fetch daily 36kr AI news |
| 💼 **Market Research** | Track latest Chinese AI company updates |
| 📊 **Investment Analysis** | Monitor AI industry funding & M&A |
| 🔬 **Competitor Monitoring** | Track competitor news exposure |
| 📱 **Content Creation** | Get AI writing materials |

---

## 🚀 快速开始 | Quick Start

### 前置要求 | Prerequisites

- 已安装 [CoPaw](https://github.com/copaw) AI 助手框架
- Installed [CoPaw](https://github.com/copaw) AI agent framework
- 稳定的网络连接（无需代理）
- Stable internet connection (no VPN needed)

### 安装步骤 | Installation

```bash
# 1. 克隆仓库 | Clone repository
git clone https://github.com/anThreeBody/36kr-ai-news.git
cd 36kr-ai-news

# 2. 复制到 CoPaw 技能目录 | Copy to CoPaw skills directory
cp -r 36kr-ai-news ~/.claw/active_skills/

# 3. 验证安装 | Verify installation
ls ~/.claw/active_skills/36kr-ai-news
```

---

## 📖 使用方法 | Usage

### 基础使用 | Basic Usage

在 CoPaw 对话中直接询问 | Ask directly in CoPaw chat:

```
用户 | User: 今天 36 氪有什么 AI 新闻？
User: What's the AI news on 36kr today?

助手 | Assistant: （自动调用 36kr-ai-news skill）

## 📰 36kr AI 新闻 | AI News（2026-03-06）

### 热门推荐 | Top Stories

1. **阿里 Qwen 团队人事大震荡，核心负责人宣布离职**
   - 摘要：阿里巴巴 Qwen 大模型团队核心负责人林俊旸突然宣布离职...
   - 🔗 [阅读原文](https://www.36kr.com/p/xxxxxx)
   - 发布时间：2 小时前

2. **月之暗面完成新一轮融资，估值突破 100 亿**
   - 摘要：Kimi 智能助手开发商月之暗面完成超 10 亿美元融资...
   - 🔗 [阅读原文](https://www.36kr.com/p/xxxxxx)
   - 发布时间：5 小时前
```

### 与其他技能配合 | Combine with Other Skills

配合 `ai-news-aggregator` 使用，获取更全面的新闻：

Use with `ai-news-aggregator` for comprehensive news:

```
用户 | User: 今天有什么 AI 新闻？
User: What's the AI news today?

助手 | Assistant: （自动调用 ai-news-aggregator，内部会调用 36kr-ai-news）
```

---

## 🔧 技术细节 | Technical Details

### 核心页面 | Core Pages

| 页面 Page | URL | 说明 Description |
|------|-----|------|
| AI 新闻 | https://www.36kr.com/information/AI/ | 主页面 Homepage |
| 人工智能 | https://www.36kr.com/information/人工智能/ | 人工智能 AI |
| 大模型 | https://www.36kr.com/information/大模型/ | 大模型 Large Models |
| AIGC | https://www.36kr.com/information/AIGC/ | AIGC |

### 搜索关键词（备选方案）| Search Keywords (Backup)

当直接访问失败时，使用百度搜索 | When direct access fails, use Baidu search:

```
site:36kr.com AI 2026
site:36kr.com 人工智能
36kr AI 大模型
36kr Agent 2026
```

### 执行流程 | Execution Flow

```
1. 直接访问 36kr AI 新闻页面 | Access 36kr AI news page
   ↓
2. 等待页面加载完成 | Wait for page load
   ↓
3. 获取页面快照 | Get page snapshot
   ↓
4. 提取新闻信息 | Extract news info
   ↓
5. 筛选 AI 相关新闻 | Filter AI-related news
   ↓
6. 输出结构化结果 | Output structured results
```

### 输出格式 | Output Format

```markdown
## 📰 36kr AI 新闻 | AI News（YYYY-MM-DD）

### 热门推荐 | Top Stories

1. **[新闻标题 | Title]**
   - 摘要 | Summary...
   - 🔗 [阅读原文 | Read Original](链接 | URL)
   - 发布时间 | Published: xxx
```

---

## 💡 使用技巧 | Tips

### 1. 定时获取 | Scheduled Fetch

设置定时任务，每天自动获取新闻 | Set scheduled task for daily news:

```bash
# 使用 CoPaw cron 技能 | Use CoPaw cron skill
copaw cron add "每天上午 9 点获取 AI 新闻 | Daily AI news at 9AM" "0 9 * * *"
```

### 2. 过滤关键词 | Filter Keywords

关注特定主题 | Focus on specific topics:

```
用户 | User: 今天 36 氪有什么关于"大模型"的新闻？
User: Any news about "large models" on 36kr today?
```

### 3. 获取历史新闻 | Get Historical News

```
用户 | User: 昨天 36 氪的 AI 新闻有哪些？
User: What were yesterday's AI news on 36kr?
```

---

## 📊 性能指标 | Performance

| 指标 Metric | 数值 Value |
|------|------|
| 平均响应时间 | < 30 秒 |
| 新闻提取数量 | 10-15 条/次 |
| 准确率 | > 90% |
| 可用性 | > 95% |

---

## 🔄 更新日志 | Changelog

### v1.0.0 (2026-03-06)
- 🎉 首次发布 | Initial release
- ✅ 支持 36kr AI 新闻页面直连 | Direct 36kr AI news access
- ✅ 智能筛选 AI 相关新闻 | Smart AI news filtering
- ✅ 百度搜索备选方案 | Baidu search backup
- ✅ 结构化输出 | Structured output

---

## 🤝 贡献指南 | Contributing

欢迎提交 Issue 和 Pull Request！

Issues and Pull Requests are welcome!

1. Fork 本仓库 | Fork this repo
2. 创建特性分支 | Create feature branch (`git checkout -b feature/AmazingFeature`)
3. 提交更改 | Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 | Push to branch (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request | Open Pull Request

---

## 📄 许可证 | License

MIT License - 详见 [LICENSE](LICENSE) 文件

---

## 🙏 致谢 | Acknowledgments

- [CoPaw](https://github.com/copaw) - AI 助手框架 | AI Agent Framework
- [36Kr](https://www.36kr.com/) - 中文科技媒体 | Chinese Tech Media

---

## 📬 联系方式 | Contact

- 🐛 Issues: [GitHub Issues](https://github.com/anThreeBody/36kr-ai-news/issues)
- ⭐ Star: 如果觉得有用，请给个 ⭐️ 支持！ | If helpful, please give a ⭐️ Star!

---

<div align="center">

**Made with ❤️ for Chinese AI Community**

**为中文 AI 社区打造 | Built for Chinese AI Community**

[📰 36kr AI News](#36kr-ai-news-fetcher-) | [🇨🇳 专为中国用户设计](#-专为中国用户设计)

</div>
