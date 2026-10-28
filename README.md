# 帝国 CMS 8.0 手册知识库（README）

机器可读的帝国 CMS 8.0 官方手册集合，供 Claude Code、Codex 等编程 Agent 及人工检索引用。

## 1. 知识库用途

将帝国 CMS 8.0 官网多份手册整理为**单一、结构化、可全文检索**的 JSON 文件，使 Agent 在以下场景无需重复爬取官网即可：

- 查表结构 / 字段含义（数据字典）
- 查会员系统、模型扩展、模板标签、二次开发函数、采集、安全设置等手册内容
- 为用户实际项目（usinfo / ukinfo / auinfo 等帝国 CMS 站点）的 8.0 开发、升级、字段映射提供参考

> 本知识库只收录**结构化手册框架**（frameset 手册）。官网 `zx/empirecms/doc/*` 等文章页未纳入。

## 2. 适用范围与已知 CMS 版本

- 已知适用版本：**帝国 CMS 8.0**。所有手册 JSON 的 `meta.version` 均为 `8.0`，且分册标题含「8.0版」。
- 数据来源：帝国 CMS 官方网站 `http://www.phome.net/docs/` 下各分册。
- 不保证覆盖 8.0 之外的版本；如需 7.5 等历史版本，需另行抓取并单独标注。

## 3. 当前实际目录结构

```
帝国cms/
├── manifest.json            # 文档索引（由真实 JSON 生成，检索入口）
├── README.md                # 本说明
├── AGENTS.md                # Agent 操作规范
├── AUDIT_REPORT.md          # 盘点报告（12 份 JSON 的真实 schema 与异常）
├── scripts/
│   ├── validate_docs.py     # 校验脚本（仅标准库）
│   └── build_manifest.py    # 索引生成脚本（仅标准库，可重生成 manifest.json）
├── empirecms8_dbdoc.json        # 数据字典（196 表 / 2491 字段）
├── empirecms8_extenddoc.json    # 二次开发手册（13 页）
├── empirecms8_tempdoc.json      # 模板制作手册（42 页）
├── empirecms8_memberdoc.json    # 会员系统手册（20 页）
├── empirecms8_setsafedoc.json   # 安全设置手册（29 页）
├── empirecms8_admindoc.json     # 管理员设置手册（44 页）
├── empirecms8_editordoc.json    # 编辑管理手册（48 页）
├── empirecms8_moddoc.json       # 系统模型扩展手册（13 页）
├── empirecms8_bakdatadoc.json   # 备份/迁移/转换/优化（7 页）
├── empirecms8_cjdoc.json        # 采集使用手册（8 页）
├── empirecms8_cquestiondoc.json # 常见问题大全（8 页）
└── empirecms8_xsjc_install.json # 系统安装图文教程（1 页）
```

> 实际文件以目录为准；`manifest.json` 的 `documents[].path` 为权威清单。

## 4. 如何通过 manifest.json 查找文档

`manifest.json` 顶层为 `documents` 数组，每条含：

- `id`：稳定唯一 ID（如 `ecms8-memberdoc`）
- `title`：文档标题（8 个分册的标题已从官网分册索引页恢复，见 `title_source`）
- `path`：相对知识库根的文件名
- `source_url`：官网分册地址（取自该 JSON 的 `meta.source`）
- `cms_version`：`8.0`
- `keywords`：真实章节分组（manual）或主题词（dbdoc）
- `description`：基于真实内容的简述
- `sections`：章节/表索引，含可定位的 `json_path`

检索示例（Python，标准库）：

```python
import json
m = json.load(open("manifest.json", encoding="utf-8"))
# 按关键词找文档
for d in m["documents"]:
    if "会员" in d["title"] or any("会员" in k for k in d["keywords"]):
        print(d["id"], d["path"], d["source_url"])
# 找某张表属于哪个文件
for d in m["documents"]:
    if d["id"] == "ecms8-dbdoc":
        for s in d["sections"]:
            if s["title"] == "phome_enewsclass":
                print("locator:", s["json_path"])
```

## 5. 如何通过本地全文搜索检索文档

手册正文为清洗后的纯文本（`content` 字段），可直接 grep / ripgrep：

```bash
# 在整库搜索「会员组」
grep -rl "会员组" *.json

# 精确看命中上下文（ripgrep）
rg -n "会员组管理" empirecms8_memberdoc.json

# 仅搜某分册
rg -n "灵动标签" empirecms8_tempdoc.json
```

或在 Python 中加载后按字符串匹配 `pages[pid]["content"]`。

## 6. 如何验证 JSON 文件

```bash
# 校验全部 JSON 可解析、manifest 路径存在、id 唯一、无悬空引用
python scripts/validate_docs.py
# 指定知识库根目录
python scripts/validate_docs.py /path/to/帝国cms
```

退出码：0 = 通过（允许有 WARN）；1 = 存在 ERROR，需先修复。

## 7. 如何更新索引

当新增/替换手册 JSON 后，重生成 `manifest.json`：

```bash
python scripts/build_manifest.py
```

脚本仅读取各 JSON 的真实 `meta`、`pages`/`tables`，输出到 `manifest.json`（不修改原始手册）。
随后再运行 `validate_docs.py` 确认一致性。

> 注意：原始手册 JSON 的 `meta.title` 在 8 个分册中为占位符「总览」，`build_manifest.py` 内 `RECOVERED_TITLES` 记录了对应的官网真实标题；如需改标题，改该映射后重跑即可。

## 8. 文档来源与授权状态

| 项 | 状态 |
|---|---|
| 来源 | 帝国 CMS 官网 `http://www.phome.net/docs/` 各分册（meta.source 含真实地址） |
| CMS 版本 | 8.0（证据充分：meta.version=8.0 且分册标题含「8.0版」） |
| 授权 | 仅记录「来源于官方文档站」这一已知事实；**未确认**具体再分发许可，请以帝国 CMS 官方授权声明为准 |
| 是否为官方原文 | 手册 JSON 的 `content` 为官网页面 HTML 清洗后的纯文本（标签剥离、实体解码、代码/标签语法保留），**非逐字排版原文**，但内容与官方页面一致 |

## 9. 已知限制与待核实

- 8 个分册 JSON 的 `meta.title` 为占位符「总览」，文档真实标题以 `manifest.json` 为准（已标注 `title_source`）。
- `empirecms8_extenddoc.json` 的 `exp3infolist` 页正文有一处 `&amp;` 残留（示例 URL 内，源站双重转义所致），不影响检索，未改动原文件。
- 官网 `zx/empirecms/doc/*` 文章页未纳入本知识库。
- 本知识库为**离线快照**，不随官网更新自动同步；如需最新内容请重新抓取并重跑 `build_manifest.py` + `validate_docs.py`。
- 数据字典 `empirecms8_dbdoc.json` 的字段说明可能随版本演进变化，落地到具体项目时仍以实际数据库结构为准。
