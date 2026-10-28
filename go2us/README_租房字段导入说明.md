# go2us.net 租房模型(info) 字段改造 —— 导入说明

> **⚠️ 状态更新（2026-10-28）**：`rental_fields_final.sql` 已**暂停导入**，进入审查修订阶段。
> 取代它的修订方案见 **`租房字段方案_修订与审查.md`**（含 A–F 全部交付物与十项问题逐条回应）。
> 新草稿 **`rental_fields_revised_draft.sql`** 为**待审核**版本，**未在生产执行**；配套 `rental_fields_rollback.sql` 回滚脚本已实测可逆。
> 在生产批准前，**请勿执行任何 SQL**。所有验证仅在本地测试库 `usinfo_test`（生产 MariaDB 备份副本）完成，不构成生产安全证明。

---

> **重要**：本目录下的 `rental_fields_01_core.sql` / `rental_fields_02_optional.sql` 是**旧版、已废弃**，请勿使用。
> 唯一要导入的是 **`rental_fields_final.sql`**（一个文件搞定全部，含标题分类）——**但该文件现已被修订方案取代，待审核**。
> 本说明只针对 `rental_fields_final.sql`（历史参考）。

---

## 一、这个 SQL 做了什么

1. **主表 6 张表同步加 17 个字段**（`phome_ecms_info` / `_check` / `_doc` 三套主副表共 6 张）：
   `lat` `lng` `zip` `rent` `bill` `bedrooms` `bathrooms` `sqft` `proptype`
   `furnished` `parking` `laundry` `pets` `tenantpolicy` `occupancy` `availdate` `listingstatus` `minterm`
2. **副表加 10 个字段**：`maxterm` `deposit` `videourl` `instagram` `line` `whatsapp` `telegram` `signal` `skype` `facebook`
3. **`zip` 从副表迁移到主表**：主表新增 `zip` 列 + 历史数据回填（主表 zip 取自副表）+ 字段登记表 `tbdataf` 改为 0（否则帝国仍往副表写）。**副表原 zip 列保留不删**。
4. **`phone` 字段 varchar(12) → varchar(30)**（国际号码加格式符不再溢出），三张副表同步。
5. **字段登记**（`phome_enewsf`）：27 条记录写入，后台"管理字段"可见。
6. **索引**：`idx_list(classid,listingstatus,ttid,newstime)`、`idx_map(lat,lng)`、`idx_zip(zip)`、`idx_rent(rent)`、`idx_beds(bedrooms)`、`idx_pets(pets)`。
7. **标题分类**（`phome_enewsinfotype`）：新增 `整租 / 合租单间 / 短租度假 / 转租`（mid=8），对应主表 `ttid`。

全部语句**幂等**，重复执行只会打印"已存在/跳过"，不会报错或重复加字段、重复插分类。

---

## 二、操作前必做：备份

```bash
mysqldump -uroot -p usinfo > usinfo_bak_20261027.sql
```

---

## 三、执行（用 utf8mb4 导入，防中文乱码）

```bash
mysql -uroot -p --default-character-set=utf8mb4 usinfo < rental_fields_final.sql
```

执行完末尾会打印自检结果，请核对：

| 自检项 | 期望 |
|---|---|
| 主表新增字段数 | 17 |
| 副表新增字段数 | 10 |
| zip 已登记为主表 (tbdataf) | 0 |
| 字段登记条数 | 27 |
| 主表索引 | idx_list, idx_map, idx_zip, idx_rent, idx_beds, idx_pets |
| zip 回填行数 | >0（历史数据已迁移，新库为 0 正常） |
| 标题分类 | 1,2,3,4 | 整租,合租单间,短租度假,转租 |

> 索引自检里 `idx_list` / `idx_map` 出现多次是正常现象——它们存在于主表、待审核表、归档表共 3 张表上。

---

## 四、跑完 SQL 后，后台还要做 3 步

1. **系统 → 数据表管理 → 管理字段**（能看到新字段，确认登记条数 27）。
2. **系统 → 数据表管理 → 更新数据表缓存**。
3. **模型管理 → 信息管理 → 房屋出租模型(mid=8) → 修改 → 提交**（重建前台投稿表单缓存，使新字段进入发布页）。

> 标题分类也可直接在后台 **栏目 → 管理标题分类 → 增加分类** 手动加，效果与 SQL 一致；SQL 已内置，二选一即可。

---

## 五、字段清单（主表 vs 副表）

### 主表 `phome_ecms_info`（参与搜索 / 筛选 / 列表 / 地图）

| 字段 | 类型 | 默认 | 说明 |
|---|---|---|---|
| `lat` / `lng` | decimal(10,7) | 0 | 地图坐标，发布页地图选点写入 |
| `zip` | varchar(9) | 空 | 邮编，已从副表迁来 + 历史回填 |
| `rent` | mediumint unsigned | 0 | 月租 USD，0=面议；前台按周/晚输入时自动折算为月 |
| `bill` | smallint unsigned | 0 | 租金含哪些费用（位掩码，见下） |
| `bedrooms` | tinyint | 0 | 0=Studio 开间，1~9 室 |
| `bathrooms` | decimal(2,1) | 0.0 | 支持半卫 1.5 / 2.5 |
| `sqft` | int unsigned | 0 | 面积，平方英尺 |
| `proptype` | tinyint | 0 | 0未设 1公寓 2独立屋 3联排 4康斗 9其他 |
| `furnished` | tinyint | 0 | 0空房 1部分家具 2家具齐全 |
| `parking` | tinyint | 0 | 0无 1车位 2车库 |
| `laundry` | tinyint | 0 | 0无 1房内洗烘 2接口 3楼层公用 4院内洗衣房 |
| `pets` | tinyint | 0 | 0不可养 1可猫 2可狗 3猫狗均可 |
| `tenantpolicy` | int unsigned | 0 | 入住政策（位掩码，见下） |
| `occupancy` | tinyint | 0 | 最多可住人数，0=不限 |
| `availdate` | int unsigned | 0 | 0面议 1立即入住 ≥20260101 具体日期 |
| `listingstatus` | tinyint | 1 | 1招租中 2已下架（含已租出） |
| `minterm` | tinyint | 0 | 最短租期(月)，0=不限 |

### 副表 `phome_ecms_info_data_1`（仅详情页展示）

| 字段 | 类型 | 说明 |
|---|---|---|
| `maxterm` | tinyint | 最长租期(月)，0=不限 |
| `deposit` | mediumint unsigned | 押金 USD，0=面议 |
| `videourl` | varchar(200) | YouTube/Vimeo/B站 视频页地址，详情页自动转 iframe |
| `instagram` `line` `whatsapp` `telegram` `signal` `skype` | varchar(40) | 各类 IM 账号 |
| `facebook` | varchar(80) | Facebook / Messenger 用户名或链接 |

---

## 六、位掩码速查（核心）

> 多选编码用 2 的幂：每个值占二进制一位，多个勾选求和后**唯一可反推**。

**`bill` 含费用**（1水 2电 4燃气 8网 16垃圾 32物业/HOA 64暖气）
例：水+网全包 = 1+8 = **9**，查询 `WHERE bill & 8`（含网络）。

**`tenantpolicy` 入住政策**
| 值 | 含义 | 值 | 含义 |
|---|---|---|---|
| 1 | 允许抽烟 | 512 | 无驱逐记录要求 |
| 2 | 允许聚会 | 1024 | 无申请费 |
| 4 | 允许访客留宿 | 2048 | 无中介费 |
| 8 | 允许短期转租 | 16 | 需信用审查 |
| 32 | 需收入证明(≥3倍租金) | 64 | 需在职证明 |
| 128 | 需背景调查 | 256 | 需租客保险 |

`pets` 已独立成 tinyint（0不可 1猫 2狗 3都可），列表页高频筛选更方便。

---

## 七、前台列表统一条件（给后续做搜索/列表页用）

```sql
WHERE checked=1              -- 已审核（帝国内置字段）
  AND listingstatus=1        -- 招租中
  -- 可选：AND ttid=1        -- 整租（标题分类）
  -- 可选：AND rent BETWEEN 1000 AND 3000
  -- 可选：AND pets & 3      -- 可养宠
```

**"可立即入住"筛选**（无需定时任务，动态计算，三天后自动归入）：
```sql
WHERE availdate=1 OR availdate=0 OR availdate <= (CURDATE() + INTERVAL 3 DAY)
```

---

## 八、回滚（如有意外）

1. 删主表新增字段（示例）：`ALTER TABLE phome_ecms_info DROP COLUMN lat, DROP COLUMN lng, ...`（6 张表都要）。
2. 恢复 `zip` 回副表：把 `phome_enewsf` 里 `f='zip'` 的 `tbdataf` 改回 1，并删主表 `zip` 列。
3. 删副表新增字段、删 27 条字段登记、删 6 个索引、删 4 个标题分类。
4. 或最简单：**直接 `mysql -uroot -p usinfo < usinfo_bak_20261027.sql` 恢复整库备份**。

---

## 九、已验证

- 本地 MySQL 8.0.30 实跑：6 张表字段同步成功、zip 迁移回填成功（测试数据命中）、27 条登记成功、6 个索引创建成功、4 个标题分类幂等插入成功、全程重复执行无报错。
- `signal` 是 MySQL 保留字，SQL 中已全程用反引号包裹，无语法问题。
