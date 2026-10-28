# 帝国 CMS 8.0 手册知识库 · 盘点报告（AUDIT_REPORT）

- 生成日期：2026-10-28
- 知识库目录：`C:/Users/jelld/.workbuddy/帝国cms/`（以下简称知识库根目录）
- 盘点方式：仅读取、不修改任何原始 JSON。使用 Python 标准库逐一解析，统计真实字段与内容，不向终端输出正文全文。

## 1. 总览

| 项 | 值 |
|---|---|
| JSON 文件数 | 12 |
| 合法 JSON | 12 / 12（100%） |
| 顶层类型 | 全部为 `object`（dict） |
| 识别出的 schema 族 | 2 种：`dbdoc(tables)`（1 个）、`manual(pages)`（11 个） |
| 手册正文页总数 | 233 页 |
| 数据表总数 | 196 张（2491 个字段） |
| 知识库总大小 | 约 1.40 MB（12 个 JSON 合计） |

> 12 个文件均为 `object`，均含 `meta` + 正文容器（`tables` 或 `pages`）。未发现空文件、截断文件或异常编码。

## 2. 两种 schema 族（以实际检查为准，不假设统一结构）

### 2.1 `dbdoc(tables)` —— 数据字典
- 文件：`empirecms8_dbdoc.json`
- 顶层键：`meta`, `tables`
- `meta` 实际键：`generated_at`, `order`, `product`, `schema`, `source`, `table_count`, `title`, `version`
- 正文容器：`tables`（dict，按表名索引）
- 每条表记录字段：`description`, `overview_note`, `field_count`, `fields`
- 每个字段：`name`, `type`, `desc`, `note`
- 真实统计：196 张表、2491 个字段；0 张空字段表；0 张缺 description。
- `meta.title`：「帝国CMS 8.0 数据字典」（真实）。
- `meta.source`：`http://www.phome.net/docs/dbdoc/dbdoc80/`（真实官网地址）。
- `meta.version`：`8.0`。

### 2.2 `manual(pages)` —— 各分册手册
- 文件（11 个）：admindoc、bakdatadoc、cjdoc、cquestiondoc、editordoc、extenddoc、memberdoc、moddoc、setsafedoc、tempdoc、xsjc_install
- 顶层键：`meta`, `pages`
- `meta` 实际键（8 个文件）：`categories`, `order`, `page_count`, `schema`, `section`, `source`, `title`, `version`
  - 其中 `extenddoc`、`tempdoc` 的 `meta` 额外含 `generated_at`、`product`（共 9 键），属同源生成的轻微差异，不影响使用。
- 正文容器：`pages`（dict，按页 id 索引）
- 每条页记录字段：`id`, `title`, `category`, `content`, `links`, `content_len`
- `meta.section`：8 个分册含该字段（admindoc/bakdatadoc/cjdoc/cquestiondoc/editordoc/memberdoc/moddoc/setsafedoc/xsjc_install）；`dbdoc/extenddoc/tempdoc` 无该字段（其 `meta.title` 已为真实标题）。
- `meta.source`：全部 11 个均含真实官网分册地址（如 `http://www.phome.net/docs/memberdoc/`）。
- `meta.version`：全部为 `8.0`。
- `meta.categories`：真实章节分组，例：memberdoc = 会员管理 / 会员空间 / 其他会员功能 / 会员相关说明文档 / 总览。
- 内容质量：所有页 `content_len ≥ 30`；仅 `empirecms8_extenddoc.json` 的 1 个页面（`exp3infolist`）正文含残留转义实体 `&amp;`（位于示例 URL 中，属源站双重转义导致，正文仍可读，非损坏）。

## 3. 逐文件明细

| 文件 | 大小(B) | schema | 页/表数 | 章节数 | meta.title | source_url | 备注 |
|---|---|---|---|---|---|---|---|
| empirecms8_admindoc.json | 115605 | manual | 44 页 | 8 | 总览（占位符） | admindoc/ | 真实标题见 manifest（管理员设置手册） |
| empirecms8_bakdatadoc.json | 18193 | manual | 7 页 | 4 | 总览（占位符） | bakdatadoc/ | 真实标题见 manifest |
| empirecms8_cjdoc.json | 25398 | manual | 8 页 | 4 | 总览（占位符） | cjdoc/ | 真实标题见 manifest |
| empirecms8_cquestiondoc.json | 105326 | manual | 8 页 | 2 | 总览（占位符） | cquestiondoc/ | 真实标题见 manifest |
| empirecms8_dbdoc.json | 429971 | dbdoc | 196 表 | — | 帝国CMS 8.0 数据字典 | dbdoc/dbdoc80/ | 真实标题 |
| empirecms8_editordoc.json | 182931 | manual | 48 页 | 10 | 总览（占位符） | editordoc/ | 真实标题见 manifest |
| empirecms8_extenddoc.json | 53333 | manual | 13 页 | 3 | 帝国CMS 8.0 二次开发手册 | extenddoc/ | 真实标题；1 页含 &amp; 残留 |
| empirecms8_memberdoc.json | 37194 | manual | 20 页 | 5 | 总览（占位符） | memberdoc/ | 真实标题见 manifest |
| empirecms8_moddoc.json | 36978 | manual | 13 页 | 4 | 总览（占位符） | moddoc/ | 真实标题见 manifest |
| empirecms8_setsafedoc.json | 38982 | manual | 29 页 | 4 | 总览（占位符） | setsafedoc/ | 真实标题见 manifest |
| empirecms8_tempdoc.json | 353743 | manual | 42 页 | 21 | 帝国CMS 8.0 模板制作手册 | tempdoc/ | 真实标题 |
| empirecms8_xsjc_install.json | 4154 | manual | 1 页 | 1 | 帝国CMS系统安装图文教程 | xsjc/install/ | 真实标题（单页教程） |

> 说明：8 个分册 JSON 的 `meta.title` 在生成时为占位符「总览」，并非文档真实标题。其真实官方标题已在 `manifest.json` 中恢复（依据各分册官网索引页 `<title>`），并在 `title_source` 字段标注来源。本盘点报告不改变原始文件。

## 4. 一致性检查

- `meta.order` 与 `pages` 键集合：所有 manual 文件 `order` 中的 id 均存在于 `pages`，且无 `pages` 游离于 `order` 之外（0 处不一致）。
- 全文检索可用性：11 个 manual 的 `content` 均为清洗后的纯文本，`<?php`、`[!--...--]`、`[ecmsinfo]` 等代码/标签语法已解码保留，可直接做关键字全文搜索。
- 重复文件：无（12 个文件名、12 个 `id` 均唯一）。
- 缺失文件：无（manifest 中 12 个 path 均存在）。

## 5. 异常与待核实

| 等级 | 发现 | 影响 | 建议 |
|---|---|---|---|
| 低 | extenddoc 的 `exp3infolist` 页正文含 `&amp;` 残留（示例 URL 内） | 仅展示层轻微，不影响检索 | 如需可重新清洗该页；当前保留不改原始文件 |
| 中 | 8 个分册 `meta.title` 为占位符「总览」 | 直接读 JSON 的 `meta.title` 会得不到文档标题 | 以 `manifest.json` 的 `title`/`title_source` 为准 |
| 待核实 | 总目录 `ecmsdoc.html` 还列有 `zx/empirecms/doc/*` 等官网文章页 | 非结构化手册框架，未纳入本知识库 | 如需要可另行抓取，不在本次范围 |

## 6. 结论

12 份 JSON 全部有效、结构清晰、内容完整；无需重写正文。建议以 `manifest.json` 为检索入口、`README.md` 为使用说明、`AGENTS.md` 为 Agent 操作规范，`scripts/validate_docs.py` 用于回归校验。
