# Phase 8 验收报告 · 帝国CMS 8.0 手册知识库

- 验收日期：2026-10-28
- 验收方式：**只读**（未修改任何 12 个原始手册 JSON，未推送 GitHub，未触碰网站代码/数据库）
- 知识库根目录：`C:/Users/jelld/.workbuddy/帝国cms/`
- 关联产物：Phase 1–7 的 `AUDIT_REPORT.md` / `manifest.json` / `README.md` / `AGENTS.md` / `scripts/validate_docs.py` / `scripts/build_manifest.py`

---

## 1. 标题与来源核验结果

### 1.1 总体结论
manifest.json 共 **12 个文档**，全部 `source_url` 取自各 JSON 真实的 `meta.source` 字段（官网文档地址），`cms_version` 全部为 `8.0`。8 个分册标题的"恢复"来源已逐一用官网实测核验，均属实；另 4 个标题直接来自 JSON `meta.title`（官方原文）。

### 1.2 逐文档核验表

| id | 文档标题 | source_url | cms_version | title 来源 | 核验依据 |
|---|---|---|---|---|---|
| ecms8-admindoc | 帝国CMS管理员设置手册 | http://www.phome.net/docs/admindoc/ | 8.0 | 恢复 | 该分册索引页 `<title>` = "帝国CMS管理员设置手册 － 稳定可靠、安全省心"（实测） |
| ecms8-bakdatadoc | 帝国CMS网站备份、迁移、数据转换与优化教程 | http://www.phome.net/docs/bakdatadoc/ | 8.0 | 恢复 | 该分册索引页 `<title>` = "帝国CMS网站备份、迁移、数据转换与优化教程 － …"（实测） |
| ecms8-cjdoc | 帝国CMS8.0版采集使用手册 | http://www.phome.net/docs/cjdoc/ | 8.0 | 恢复 | 分册 `<title>` 含 "8.0版"，版本有官方证据 |
| ecms8-cquestiondoc | 帝国CMS常见问题大全 | http://www.phome.net/docs/cquestiondoc/ | 8.0 | 恢复 | 分册 `<title>` = "帝国CMS常见问题大全 － …"（实测） |
| ecms8-dbdoc | 帝国CMS 8.0 数据字典 | http://www.phome.net/docs/dbdoc/dbdoc80/ | 8.0 | meta.title | JSON `meta.title` 原文；URL 含 `dbdoc80` 即 8.0 |
| ecms8-editordoc | 帝国CMS编辑管理手册 | http://www.phome.net/docs/editordoc/ | 8.0 | 恢复 | 分册 `<title>` = "帝国CMS编辑管理手册 － …"（实测） |
| ecms8-extenddoc | 帝国CMS 8.0 二次开发手册 | http://www.phome.net/docs/extenddoc/ | 8.0 | meta.title | JSON `meta.title` 原文 |
| ecms8-memberdoc | 帝国CMS8.0版会员系统手册 | http://www.phome.net/docs/memberdoc/ | 8.0 | 恢复 | 分册 `<title>` 含 "8.0版"，版本有官方证据 |
| ecms8-moddoc | 帝国CMS8.0版系统模型扩展手册 | http://www.phome.net/docs/moddoc/ | 8.0 | 恢复 | 分册 `<title>` 含 "8.0版"，版本有官方证据 |
| ecms8-setsafedoc | 帝国CMS安全设置手册 | http://www.phome.net/docs/setsafedoc/ | 8.0 | 恢复 | 分册 `<title>` = "帝国CMS安全设置手册 － …"（实测） |
| ecms8-tempdoc | 帝国CMS 8.0 模板制作手册 | http://www.phome.net/docs/tempdoc/ | 8.0 | meta.title | JSON `meta.title` 原文 |
| ecms8-xsjc_install | 帝国CMS系统安装图文教程 | http://www.phome.net/docs/xsjc/install/ | 8.0 | meta.title | JSON `meta.title` 原文 |

### 1.3 8 个"恢复标题"的匹配依据与 URL
这 8 个分册 JSON 的 `meta.title` 原为占位符「总览」。其正式标题从**各分册自己的索引页 `<title>` 标签**恢复（非从总目录 `ecmsdoc.html` 的简短别名）。总目录页仅给出简称（如 admindoc 简称"管理员手册"），而分册索引页给出全称（"帝国CMS管理员设置手册"）。二者不一致处（如 admindoc 的"管理员"vs"管理员设置"）以分册索引页全称为准，且已实测确认"设置"为官方全称的一部分，非臆造。

### 1.4 cms_version 依据评估（诚实标注）
- 全部 12 个 JSON 均带 `meta.version="8.0"`，该字段由抓取脚本写入，**并非官方文档内独立声明的版本字段**。
- 有力的旁证：① `dbdoc` 的 `source_url` 含 `dbdoc80`；② `cjdoc`/`memberdoc`/`moddoc` 三个分册索引页 `<title>` 明确含 "8.0版"；③ 安装教程为 8.0 图文教程。
- 对 `admindoc`/`bakdatadoc`/`cquestiondoc`/`editordoc`/`setsafedoc` 这 5 个分册，官方标题中**不含版本字符串**，其 8.0 归属依据为"同属该 8.0 文档全集"的推断 + 抓取脚本标注。
- **结论**：`cms_version=8.0` 对全部 12 文档属"合理推断、强旁证、非每册独立官方字段证明"。本验收未将其标为"已确认事实"，建议未来若需严格出处，以 dbdoc80 与含"8.0版"的 3 个分册为硬证据，其余 5 册保留"推断"标注。

### 1.5 source_url 与文档对应性
每个 `source_url` 即该 JSON 的抓取来源根地址（如 `memberdoc` → `…/memberdoc/`），与正文内容一致，对应正确。无错配。

---

## 2. 索引定位准确性

### 2.1 方法
对 manifest 中每个文档的 `sections` 做反向校验：用 `json_path` 在真实 JSON 中解析目标，比对标题/ID/分类/表名/字段数，并检查遗漏/重复/错误路径。**manual(pages) 与 dbdoc(tables) 分别验证**。

### 2.2 结果
- **dbdoc（数据字典）**：索引 196 个 `tables.*` 节；JSON 实有 196 表；`field_count` 全部一致（0 处不符）；无遗漏、无多余、无重复。
- **11 个 manual**：每个 `sections[*].json_path = pages.<page_id>.category`，逐页验证：① 每个 page 的 `category` 均能在 `sections` 中找到对应节；② `page_count` 与实有页一致；③ 样本 `json_path` 解析返回的分类与节标题一致；④ 所有 `meta.categories` 均出现在 `sections` 中。12 文档合计 233 页，全部被覆盖（0 页遗漏）。
- **随机抽查 ≥10 张表（dbdoc）**：`phome_enewstagsdata_check`/`phome_enewsshopdd`/`phome_enewsvg`/`phome_enewsworkflow`/`phome_enewssp_3`/`phome_enewsadclass`/`phome_enewssp_2`/`phome_enewsuseronepass`/`phome_enewsfz_class`/`phome_ecms_news_index`/`phome_enewspublicadd`/`phome_enewsshop_address` —— 表名、字段数、首字段名/类型与原始 JSON 完全一致。

### 2.3 结论
索引定位**准确**：所有 `json_path` 真实可解析，计数一致，无遗漏/重复/错误路径。manual 与 dbdoc 两类结构均通过，未假设同一 schema。

---

## 3. 重建脚本安全性和确定性（scripts/build_manifest.py）

### 3.1 只读性
脚本仅对 12 个手册 JSON 做 `json.load`（读），唯一写操作是 `json.dump` 到 `manifest.json`。**不写入任何手册文件**。

### 3.2 确定性测试（已执行）
- 备份当前 `manifest.json` → 重新运行 `build_manifest.py` → 与原文件 `diff`。
- **发现差异**：重新生成的 manifest 多出一条 `ecms8-manifest` 文档（id 推断自文件名，path 指向 manifest.json 自身）。原因：脚本扫描 `os.listdir(KB)` 下所有 `*.json`，**未排除 `manifest.json` 自身**，重跑时把 manifest 也当成一个"文档"编入。
- 因存在差异，按验收规则**立即恢复原 `manifest.json`**（已恢复，当前 `document_count=12`，无 `ecms8-manifest`）。
- 除"自包含"这一项外，文档生成逻辑（标题、路径、关键词、章节）本身具确定性（输入文件相同则输出相同）。

### 3.3 人工维护字段
manifest.json 的所有字段（title/keywords/description/sections/source_url 等）**均由脚本从原始 JSON 自动派生**，脚本内不含任何"人工维护字段"机制。含义：若有人手工编辑 manifest.json（如补充备注、修正标题），重新运行 `build_manifest.py` 会**整体覆盖、丢失人工改动**（标题来自脚本内 `RECOVERED_TITLES`/`REAL_TITLE_FILES` 常量，不从 manifest 读取）。

### 3.4 建议修复（最小改动，待你确认后由我执行）
在 `build_manifest.py` 扫描列表排除自身：`sorted(f for f in os.listdir(KB) if f.endswith(".json") and f != "manifest.json")`。一行即可消除重跑污染。亦可加 `if fn == "manifest.json": continue`。**本次验收未擅自修改脚本**，保持只读。

---

## 4. 原始文件完整性检查

- 本目录**不是 Git 仓库**（无可用的版本历史）。
- 因此**无法证明** 12 个原始 JSON 自生成以来"从未改变"。本次仅记录当前 SHA256 前 16 位作为**今后比对基线**，不做改动声明。

| 文件 | SHA256(前16位) |
|---|---|
| empirecms8_admindoc.json | b1287d6c2f19d4b8 |
| empirecms8_bakdatadoc.json | f82c090db7b8ca7b |
| empirecms8_cjdoc.json | d764ac8e83679c00 |
| empirecms8_cquestiondoc.json | cd1b34edadd14ad2 |
| empirecms8_dbdoc.json | 33346f5986b5eb49 |
| empirecms8_editordoc.json | 64f798ec65e13960 |
| empirecms8_extenddoc.json | e9a305025c91b30b |
| empirecms8_memberdoc.json | e40a2b07379b7c78 |
| empirecms8_moddoc.json | 89cad58b6a72854d |
| empirecms8_setsafedoc.json | 9e9f1b2d9980e6c4 |
| empirecms8_tempdoc.json | 682b8e542b59560a |
| empirecms8_xsjc_install.json | b397cdb08b6e3daf |

- 重跑 build 脚本前后，12 个手册哈希**未变化**（已比对，与基线一致），证明重建过程未触碰原始正文。
- 注意：`extenddoc` 的 `exp3infolist` 页正文有一处 `&amp;` 残留（源站双重转义），可读不影响检索，依只读原则未改。

---

## 5. 检索主题测试结果

方法：用关键词对 manifest 定位文档，再对命中文档做全文检索，记录命中文件/JSON 路径/章节/是否实际读取原文/证据是否充分。**未命中项明确标记，不猜测**。

### 5.1 会员投稿和会员权限
- 关键词：`投稿` `权限` `member`
- 命中：`empirecms8_memberdoc.json`（章节「会员管理」`pages.membergroup` = "会员组管理：对前台会员的权限进行管理"；`pages.dtpagetemp` 投稿入口）、`empirecms8_editordoc.json`（章节「栏目管理」`pages.addclass` = "开放投稿/栏目访问权限"）、`empirecms8_admindoc.json`（"会员空间权限组"）、`empirecms8_dbdoc.json`（`phome_ecms_news` 主表含会员相关字段）。
- 实际读取原文：是。证据充分：✅

### 5.2 模型扩展与自定义字段
- 关键词：`模型扩展` `自定义字段` `字段` `mod`
- 命中：`empirecms8_moddoc.json`（章节「系统模型功能说明」`pages.modsay`/`pages.makemod` = "新建表、自定义字段、组成新的系统模型"；`pages.modfield` 字段管理）、`empirecms8_memberdoc.json`（章节「会员管理」`pages.memberfield` = "自定义会员字段"）、`empirecms8_cquestiondoc.json`（"系统模型扩展特性"）。
- 实际读取原文：是。证据充分：✅

### 5.3 数据字典中的主表和副表
- 关键词：`主表` `副表` `索引表` `data_1`
- 命中：`empirecms8_dbdoc.json`：`phome_ecms_news`（新闻系统模型－主表）、`phome_ecms_news_data_1`（副表1）、`phome_ecms_news_index`（索引表）、`phome_ecms_news_doc`（归档主表）、`phome_ecms_news_doc_index`（归档索引表）；命名后缀实测出现 `data_1/index/check/check_data/doc/doc_data` 全族。
- 另 `empirecms8_cquestiondoc.json`「常见问题大全」`pages.qmod` 明确解释"字段不在列表页或标签中调用的放副表，主表字段越少效率越高"；`pages.qinfo` 给出 `phome_ecms_表名` 与 `phome_ecms_表名_data_1` 主副表对应。
- 实际读取原文：是。证据充分：✅

### 5.4 phome_enewsf 字段注册
- 关键词：`phome_enewsf`
- 命中：`empirecms8_dbdoc.json` → `tables.phome_enewsf`，说明="模型字段表"，字段数=37。
- 实际读取原文：是。此为系统模型字段注册表（字段名/类型/录入项/副表标记等均在此注册）。证据充分：✅

### 5.5 tbdataf 的含义
- 关键词：`tbdataf`
- 命中：`empirecms8_dbdoc.json` → `tables.phome_enewsf` 内字段 `tbdataf`（**不是表，是字段**）。
- 字段原文：`{name:"tbdataf", type:"tinyint(1)", desc:"是否为副表字段", note:"0为主表，1为副表"}`。
- 含义：该字段标记某注册字段是否属于副表（0=主表，1=副表）。实际读取原文：是。证据充分：✅

### 5.6 灵动标签及其实际章节
- 关键词：`灵动标签` `灵动`
- 命中主文档：`empirecms8_tempdoc.json`（章节「调用标签」`pages.sysbq` 列出 "灵动标签 (e:loop)" 与 "灵动标签-数组参数型 (e:loopr)"；`pages.eloop/eloop` 为灵动标签专用教程页）；`empirecms8_cquestiondoc.json`「常见问题大全」`pages.qtemp` 含"如何用灵动标签调用副表字段内容"。
- 实际读取原文：是。章节定位明确（模板手册→调用标签）。证据充分：✅

### 5.7 自定义搜索或二次开发入口
- 关键词：`自定义搜索` `搜索` `二次开发` `sqlfun`
- 命中：`empirecms8_extenddoc.json`（章节「二次开发说明」`pages.comfun`/`pages.jsonfun`/`pages.sqlfun`/`pages.dtuserpage`；`pages.downtool` 官方插件"可当二次开发范例参考"）—— 二次开发主入口；`empirecms8_tempdoc.json`（章节「搜索模板」`pages.searchtemp`）+ `empirecms8_cquestiondoc.json`「常见问题大全」`pages.qinfo`/`pages.qtemp`（多条件搜索、会员自定义字段搜索教程）；`empirecms8_admindoc.json`（"全站全文搜索"）。
- 实际读取原文：是。证据充分：✅

---

## 6. 校验脚本覆盖范围（scripts/validate_docs.py）

### 6.1 当前覆盖
仅用 Python 标准库，检查：
1. 知识库内所有 `*.json` 可解析；
2. `manifest.json` 可解析；
3. manifest 引用的 `path` 真实存在；
4. 文档 `id` 唯一；
5. 是否引用不存在的文件（悬空引用）；
6. 反向检查：未被索引的 `empirecms8_*.json` 给出 WARN。

### 6.2 缺口（如实列出）
- **不校验 `sections[].json_path` 是否在被引文件中真实可解析**（本次 Phase 2 已人工验证通过，但脚本未自动覆盖）。
- 不校验 `field_count` 与实际一致；不检测节内重复；不校验 `title`/`source_url` 等必要字段非空（null 不报错）；不校验 `document_count` 与数组长度一致。
- 不校验内容编码（残留 HTML 实体如 `&amp;`）。

### 6.3 最小改进建议（非必须）
建议为 `validate_docs.py` 增加一个轻量节：对每个文档按 schema 校验 `sections` 目标存在性（dbdoc→`tables[name]`；manual→`meta.categories` 含该节标题且 `pages` 中 id 存在）。当前索引由脚本确定性生成、Phase 2 已人工全量验证通过，故该缺口**优先级低**，不影响日常使用。保持"简单可维护"原则，暂不强行扩充。

---

## 7. 发现的问题及优先级

| 优先级 | 问题 | 状态 / 处置 |
|---|---|---|
| **中** | `build_manifest.py` 重跑会把 `manifest.json` 自身编入索引（生成伪 `ecms8-manifest` 文档，污染 manifest） | 已发现并恢复原文件；建议一行修复（排除 manifest.json），**待你确认后执行** |
| 低 | `cms_version=8.0` 对 5 个分册仅为推断（标题无版本串） | 已在 §1.4 标注为"推断"，未伪造为已确认 |
| 低 | `extenddoc` 的 `exp3infolist` 页一处 `&amp;` 残留 | 源站双重转义，可读；依只读原则未改 |
| 低 | `validate_docs.py` 不自动校验章节路径 | 见 §6.3，优先级低 |
| 信息 | 目录非 Git 仓库，无历史基线 | 已记录当前哈希为今后基线 |

**无重复、缺失、截断或异常编码的原始手册文档。**

---

## 8. 是否建议进入 GitHub 上传阶段

- **知识库内容层（12 手册 JSON + manifest + README + AGENTS + 校验脚本）已通过只读验收**：标题来源属实、索引定位准确、检索可用、原始正文完好。
- **进入 GitHub 上传前的唯一阻塞项**：先修复 `build_manifest.py` 的"自包含"bug（§7 中），以免将来重跑污染 manifest。该修复需你授权（属对辅助脚本的改动，非原始手册）。
- **建议**：在修复该 bug 后，可将 `帝国cms/` 整个目录纳入 Git 并提交（提交说明可沿用 Phase 7 建议文案）。授权前我**不会**推送。另：`.workbuddy/` 为 WorkBuddy 托管目录，是否适合放入用户 Git 仓库请在提交前确认路径（可考虑复制到项目仓库再提交）。

---

## 9. 本地复现命令

```bash
cd C:/Users/jelld/.workbuddy/帝国cms
python scripts/validate_docs.py            # 校验全部 JSON / manifest / 路径 / id
python scripts/build_manifest.py            # 重建 manifest（修复自包含 bug 前请勿盲目重跑）
sha256sum empirecms8_*.json | cut -c1-16    # 记录/比对原始文件基线哈希
```
