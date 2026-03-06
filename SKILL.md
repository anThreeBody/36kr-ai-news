---
name: 36kr-ai-news
description: 从 36kr AI 新闻专题页面直接抓取 AI 相关报道，高效获取中文 AI 行业动态
---

# 36kr AI News Fetcher - 36氪AI新闻获取工具

## 简介

从36kr AI新闻专题页面直接抓取AI相关报道，高效获取中文AI行业动态。

## 何时使用

- 需要获取中文AI新闻时
- 作为AI新闻聚合的来源之一
- 用户询问"今天有什么AI新闻？"

## 核心页面

**36kr AI新闻专题**：
```
https://www.36kr.com/information/AI/
```

## 搜索关键词（用于百度搜索36kr页面）

当直接访问页面失败时，使用百度搜索：

```
百度搜索: site:36kr.com AI 2026
百度搜索: site:36kr.com 人工智能
百度搜索: 36kr AI 大模型
百度搜索: 36kr Agent 2026
```

## 执行流程

### Step 1: 直接访问36kr AI新闻页面

```bash
# 使用 browser 打开页面
browser:
  action: open
  url: https://www.36kr.com/information/AI/
```

### Step 2: 等待页面加载

```bash
browser:
  action: wait_for
  text_gone: 加载中
  wait_time: 3
```

### Step 3: 获取页面快照

```bash
browser:
  action: snapshot
```

### Step 4: 提取新闻信息

从快照中提取：

| 字段 | 说明 |
|------|------|
| 标题 | news_title |
| 链接 | news_url |
| 摘要 | news_desc |
| 来源 | 36kr |
| 发布时间 | pub_time |

### Step 5: 筛选AI相关新闻

- 过滤与AI、大模型、Agent、LLM相关的新闻
- 优先选择近期发布的新闻

### Step 6: 提取详细内容（可选）

对于重要新闻，点击链接获取全文：

```bash
browser:
  action: click
  ref: [新闻链接的ref]
  
browser:
  action: snapshot
```

## 输出格式

### 36kr AI新闻列表

```markdown
## 📰 36kr AI新闻（YYYY-MM-DD）

### 热门推荐

1. **[新闻标题]**
   - 摘要...
   - 🔗 [阅读原文](链接)
   - 发布时间：xxx

2. **[新闻标题]**
   - 摘要...
   - 🔗 [阅读原文](链接)

...
```

## 常用36kr相关页面

| 页面 | URL | 说明 |
|------|-----|------|
| AI新闻 | https://www.36kr.com/information/AI/ | 主页面 |
| 人工智能 | https://www.36kr.com/information/人工智能/ | 人工智能 |
| 大模型 | https://www.36kr.com/information/大模型/ | 大模型 |
| AIGC | https://www.36kr.com/information/AIGC/ | AIGC |

## 注意事项

- ⚠️ 页面可能有反爬机制，多等待一会儿
- 💡 使用百度搜索作为备选方案
- 📝 记录新闻URL，方便后续获取详情

## 集成到主流程

在AI新闻聚合中，36kr作为重要中文来源：

1. 打开36kr AI新闻页面
2. 提取10-15条AI相关新闻
3. 记录关键信息：标题、链接、摘要
4. 对重要新闻点击获取详情
5. 整合到最终AI新闻周报中