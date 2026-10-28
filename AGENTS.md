# AGENTS.md — 帝国 CMS 8.0 手册知识库 · Agent 操作指引

本文件面向 Claude Code、Codex 等编程 Agent，规定如何安全、可靠地检索与引用本知识库
（目录：`C:/Users/jelld/.workbuddy/帝国cms/`，即 `帝国cms/`）。

核心原则：**只读手册、以证据说话、不臆造帝国 CMS 行为、不触碰业务系统。**

---

## 一、文档检索

1. **任务开始前**先阅读 `README.md` 与 `manifest.json`，了解知识库范围与文档清单。
2. **按需检索**，不要默认把全部 JSON 加载进上下文。先用 `manifest.json` 的 `keywords` /
   `title` / `sections` 锁定相关文档与章节，再只读命中的文件。
3. **读真实正文**：命中后必须打开对应 `empirecms8_*.json`，读取 `pages[<id>].content`
   （或 `tables[<表名>].fields`）原文，**不能只凭索引摘要下结论**。
4. **结果不足时扩大范围**：换关键词、查相邻章节、查 `manifest.json` 的 `sections` 交叉引用
   （例如会员相关功能可能同时在 `memberdoc` 与 `moddoc` 出现）。

### 检索入口优先级
- 按主题 → `manifest.json` 的 `documents[].keywords` / `title`
- 按章节 → `documents[].sections[].json_path`（如 `pages.<id>.category`、`tables.<表名>`）
- 按全文 → 在手册 JSON 内对 `content` 做字符串/grep 匹配

---

## 二、证据与引用

1. 涉及帝国 CMS 行为的技术结论，应提供**相对路径 + 章节标题 + 可定位原文片段**。
   例：`empirecms8_memberdoc.json` → 章节「会员管理」→ `pages.listmember.content`：
   「审核：设置会员是否审核，未审核账号不能登录前台。」
2. 若 JSON 有稳定定位路径（如 `pages.<id>`、`tables.<表名>`、`fields[].name`），**优先使用**。
3. **不得伪造行号**。本知识库 JSON 没有行号；用 JSON 路径、章节标题或原文片段定位。
4. 明确区分三类陈述：
   - **手册明确说明的事实**（引用原文）；
   - **基于证据的推断**（说明推导依据）；
   - **尚未验证的假设**（明确标注「待核实」）。
5. **找不到证据就明说**，不得虚构帝国 CMS 的函数名、字段名、表名、配置项或行为。

---

## 三、文件安全

1. 默认**只读**手册 JSON 与索引文件。
2. 未经授权**不得修改、覆盖、删除**手册正文（`empirecms8_*.json` 的 `meta`/`pages`/`tables`）。
3. 不得为迁就索引格式而重写原始文档；如索引需要修正，改 `manifest.json`/`scripts/` 而非手册。
4. **不执行网站代码或数据库操作**，除非用户明确提出该任务并给予必要授权（详见第五节）。
5. 需要更新索引时，运行 `python scripts/build_manifest.py`（只读手册、只写 manifest.json），
   随后 `python scripts/validate_docs.py` 校验。

---

## 四、项目应用（usinfo / ukinfo / auinfo 等）

本知识库可辅助以下帝国 CMS 8.0 开发任务（这些站点正从 7.5 升级到 8.0）：

- **会员系统**：会员组/内部组/访问组、会员字段与表单（`memberdoc`）
- **会员投稿与权限**：投稿流程、审核、前台权限控制（`memberdoc` + `moddoc`）
- **模型扩展**：系统模型、自定义字段、主表/副表、数据表映射（`moddoc` + `dbdoc`）
- **数据字典**：`phome_enews*`、`phome_ecms_*` 等表与字段含义（`dbdoc`）
- **主表与副表字段映射**：内容字段常拆分存于 `phome_ecms_{tb}`（主表）与
  `phome_ecms_{tb}_data_1`（副表），查 `dbdoc` 的表清单与 `fields`
- **审核与下架机制**：会员/信息审核、状态字段（`memberdoc` + `admindoc` + `dbdoc`）
- **搜索与自定义扩展**：搜索模板、灵动/万能标签、二次开发函数与 SQL 扩展
  （`tempdoc` + `extenddoc` + `cjdoc`）

> ⚠️ **重要**：官方手册不能替代对**实际项目代码、当前数据库结构、字段注册表、运行环境**
> 的核实。落地任何结论前，务必以目标站点的真实 `phome_*` 表结构、模型配置与代码为准；
> 本知识库仅作 8.0 官方行为参考。

---

## 五、授权边界

- 检索、引用、生成说明文档：默认可做。
- 修改手册 JSON、改写官网内容：需用户授权。
- 连接/操作网站数据库、运行网站代码、推送代码仓库：必须用户显式授权并提供必要凭证与环境，
  且在本知识库目录之外进行。
