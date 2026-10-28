-- ============================================================
-- go2us.net 租房模型(info) 字段改造 - 修订草稿 (待审核, 未在生产执行)
-- 生成时间: 2026-10-28
-- 适用: 帝国CMS8 / MariaDB10.4 生产; 本稿在本地 MySQL8 测试库 usinfo_test 验证
-- 重要: 执行前务必整库备份 (mysqldump -uroot -p usinfo > usinfo_bak.sql)
-- 本稿仅做结构扩展(ADD COLUMN / 登记 / 索引), 不删除任何旧字段、不清空数据
-- ============================================================

-- ---------- 1. 主表新增字段 (phome_ecms_info / _check / _doc) ----------
SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `lat` decimal(10,7) NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='lat';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `lat` decimal(10,7) NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='lat';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `lat` decimal(10,7) NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='lat';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `lng` decimal(10,7) NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='lng';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `lng` decimal(10,7) NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='lng';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `lng` decimal(10,7) NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='lng';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `rent` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `rent` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `rent` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `rentperiod` tinyint NOT NULL DEFAULT 1",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rentperiod';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `rentperiod` tinyint NOT NULL DEFAULT 1",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rentperiod';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `rentperiod` tinyint NOT NULL DEFAULT 1",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rentperiod';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `rent_orig` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rent_orig';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `rent_orig` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rent_orig';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `rent_orig` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rent_orig';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `bill` smallint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='bill';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `bill` smallint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='bill';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `bill` smallint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='bill';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `bedrooms` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='bedrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `bedrooms` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='bedrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `bedrooms` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='bedrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `bathrooms` decimal(2,1) NOT NULL DEFAULT 0.0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='bathrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `bathrooms` decimal(2,1) NOT NULL DEFAULT 0.0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='bathrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `bathrooms` decimal(2,1) NOT NULL DEFAULT 0.0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='bathrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `sqft` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='sqft';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `sqft` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='sqft';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `sqft` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='sqft';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `proptype` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='proptype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `proptype` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='proptype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `proptype` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='proptype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `furnished` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='furnished';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `furnished` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='furnished';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `furnished` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='furnished';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `parking` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='parking';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `parking` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='parking';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `parking` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='parking';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `laundry` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='laundry';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `laundry` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='laundry';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `laundry` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='laundry';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `pets` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `pets` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `pets` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `tenantpolicy` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='tenantpolicy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `tenantpolicy` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='tenantpolicy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `tenantpolicy` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='tenantpolicy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `occupancy` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='occupancy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `occupancy` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='occupancy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `occupancy` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='occupancy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `availmode` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='availmode';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `availmode` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='availmode';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `availmode` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='availmode';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `availdate` date DEFAULT NULL",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='availdate';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `availdate` date DEFAULT NULL",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='availdate';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `availdate` date DEFAULT NULL",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='availdate';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `listingstatus` tinyint NOT NULL DEFAULT 1",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='listingstatus';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `listingstatus` tinyint NOT NULL DEFAULT 1",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='listingstatus';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `listingstatus` tinyint NOT NULL DEFAULT 1",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='listingstatus';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `rentaltype` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `rentaltype` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `rentaltype` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `rentterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `rentterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `rentterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `issublet` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='issublet';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `issublet` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='issublet';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `issublet` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='issublet';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `minterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='minterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `minterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='minterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `minterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='minterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `maxterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='maxterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `maxterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='maxterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `maxterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='maxterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- ---------- 2.5 会员投稿临时表 phome_ecms_infotmp_info (补主表新字段, 待核实) ----------
-- 说明: infotmp_info 为扁平精简临时表, 与 enewsf 非自动同步(例如 qq 已登记副表却不在 infotmp)。
-- 为避免前台会员投稿因缺少新列报错, 这里把主表新字段也补到 infotmp_info。加列无害; 上线前需实测投稿流程确认。
SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `lat` decimal(10,7) NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='lat';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `lng` decimal(10,7) NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='lng';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `rent` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `rentperiod` tinyint NOT NULL DEFAULT 1",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rentperiod';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `rent_orig` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rent_orig';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `bill` smallint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='bill';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `bedrooms` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='bedrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `bathrooms` decimal(2,1) NOT NULL DEFAULT 0.0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='bathrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `sqft` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='sqft';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `proptype` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='proptype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `furnished` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='furnished';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `parking` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='parking';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `laundry` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='laundry';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `pets` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `tenantpolicy` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='tenantpolicy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `occupancy` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='occupancy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `availmode` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='availmode';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `availdate` date DEFAULT NULL",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='availdate';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `listingstatus` tinyint NOT NULL DEFAULT 1",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='listingstatus';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `rentaltype` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `rentterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `issublet` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='issublet';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `minterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='minterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_infotmp_info` ADD COLUMN `maxterm` tinyint NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='maxterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- ---------- 2. 副表新增字段 (phome_ecms_info_data_1 / _check_data / _doc_data) ----------
SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `deposit` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='deposit';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `deposit` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='deposit';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `deposit` mediumint unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='deposit';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `videourl` varchar(200) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='videourl';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `videourl` varchar(200) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='videourl';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `videourl` varchar(200) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='videourl';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `contactshow` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='contactshow';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `contactshow` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='contactshow';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `contactshow` int unsigned NOT NULL DEFAULT 0",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='contactshow';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `instagram` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='instagram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `instagram` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='instagram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `instagram` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='instagram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `line` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='line';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `line` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='line';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `line` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='line';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `whatsapp` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='whatsapp';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `whatsapp` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='whatsapp';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `whatsapp` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='whatsapp';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `telegram` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='telegram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `telegram` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='telegram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `telegram` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='telegram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `signal` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='signal';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `signal` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='signal';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `signal` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='signal';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `skype` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='skype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `skype` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='skype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `skype` varchar(40) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='skype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_data_1` ADD COLUMN `facebook` varchar(80) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='facebook';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check_data` ADD COLUMN `facebook` varchar(80) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='facebook';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc_data` ADD COLUMN `facebook` varchar(80) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='facebook';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- ---------- 3. zip 迁移到主表 (待确认项, 需负责人批准后方可执行) ----------
-- 理由: 帝国CMS列表/搜索/结合项只支持主表字段; 若zip需参与检索/地图/列表展示则必须转主表。
-- 证据: 当前 zip 在副表(tbdataf=1, varchar(9))。ZIP+4 带连字符为10字符, varchar(9)会截断, 故改为 varchar(10)。
-- 风险: 须同步 3 张主表 + 改 enewsf.tbdataf=0 + 历史回填; 副表 zip 列保留不删。
SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info` ADD COLUMN `zip` varchar(10) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='zip';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;
SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_check` ADD COLUMN `zip` varchar(10) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='zip';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;
SET @sql=NULL;
SELECT IF(COUNT(*)=0,"ALTER TABLE `phome_ecms_info_doc` ADD COLUMN `zip` varchar(10) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='zip';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;
-- 历史数据回填: 主表 zip 取自副表
UPDATE `phome_ecms_info` i JOIN `phome_ecms_info_data_1` d ON i.`id`=d.`id` AND i.`classid`=d.`classid`
  SET i.`zip`=d.`zip` WHERE (i.`zip`='' OR i.`zip` IS NULL) AND d.`zip`<>'';
-- 字段登记表: zip 改为存主表(tbdataf=0), 否则帝国仍往副表写
UPDATE `phome_enewsf` SET `tbdataf`=0 WHERE `f`='zip' AND `tbname`='info';

-- ---------- 4. phone 放宽 varchar(12) -> varchar(30) (3 副表) ----------
SET @sql=NULL;
SELECT IF(COLUMN_TYPE='varchar(12)',"ALTER TABLE `phome_ecms_info_data_1` MODIFY COLUMN `phone` varchar(30) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='phone';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;
SET @sql=NULL;
SELECT IF(COLUMN_TYPE='varchar(12)',"ALTER TABLE `phome_ecms_info_check_data` MODIFY COLUMN `phone` varchar(30) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='phone';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;
SET @sql=NULL;
SELECT IF(COLUMN_TYPE='varchar(12)',"ALTER TABLE `phome_ecms_info_doc_data` MODIFY COLUMN `phone` varchar(30) NOT NULL DEFAULT ''",NULL) INTO @sql
  FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='phone';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- ---------- 5. 字段登记 (phome_enewsf) ----------
INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "lat","纬度",'text',"地图选点自动写入的纬度",1,1,100,"DECIMAL","10,7",8,'info',0,"<input name=\"lat\" type=\"text\" id=\"lat\" value=\"\" size=\"45\">","<input name=\"lat\" type=\"text\" id=\"lat\" value=\"\" size=\"45\">",'',"<input name=\"lat\" type=\"text\" id=\"lat\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="lat" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "lng","经度",'text',"地图选点自动写入的经度",1,1,101,"DECIMAL","10,7",8,'info',0,"<input name=\"lng\" type=\"text\" id=\"lng\" value=\"\" size=\"45\">","<input name=\"lng\" type=\"text\" id=\"lng\" value=\"\" size=\"45\">",'',"<input name=\"lng\" type=\"text\" id=\"lng\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="lng" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "rent","月租金(归一化)",'text',"月租金USD,0=面议;按周/晚报价时折算为月用于筛选排序",1,1,102,"MEDIUMINT","",8,'info',0,"<input name=\"rent\" type=\"text\" id=\"rent\" value=\"\" size=\"45\">","<input name=\"rent\" type=\"text\" id=\"rent\" value=\"\" size=\"45\">",'',"<input name=\"rent\" type=\"text\" id=\"rent\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="rent" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "rentperiod","报价周期",'text',"1月 2周 3晚;与rent_orig配合,保留原始报价与周期",1,1,103,"TINYINT","",8,'info',0,"<input name=\"rentperiod\" type=\"text\" id=\"rentperiod\" value=\"\" size=\"45\">","<input name=\"rentperiod\" type=\"text\" id=\"rentperiod\" value=\"\" size=\"45\">",'',"<input name=\"rentperiod\" type=\"text\" id=\"rentperiod\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="rentperiod" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "rent_orig","原始报价额",'text',"按rentperiod周期报价的原始金额USD,0=面议",1,1,104,"MEDIUMINT","",8,'info',0,"<input name=\"rent_orig\" type=\"text\" id=\"rent_orig\" value=\"\" size=\"45\">","<input name=\"rent_orig\" type=\"text\" id=\"rent_orig\" value=\"\" size=\"45\">",'',"<input name=\"rent_orig\" type=\"text\" id=\"rent_orig\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="rent_orig" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "bill","含费用",'text',"位掩码:1水 2电 4燃气 8网 16垃圾 32物业/HOA 64暖气",1,1,105,"SMALLINT","",8,'info',0,"<input name=\"bill\" type=\"text\" id=\"bill\" value=\"\" size=\"45\">","<input name=\"bill\" type=\"text\" id=\"bill\" value=\"\" size=\"45\">",'',"<input name=\"bill\" type=\"text\" id=\"bill\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="bill" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "bedrooms","卧室数",'text',"0=Studio(开间),1~9室",1,1,106,"TINYINT","",8,'info',0,"<input name=\"bedrooms\" type=\"text\" id=\"bedrooms\" value=\"\" size=\"45\">","<input name=\"bedrooms\" type=\"text\" id=\"bedrooms\" value=\"\" size=\"45\">",'',"<input name=\"bedrooms\" type=\"text\" id=\"bedrooms\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="bedrooms" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "bathrooms","卫浴数",'text',"支持半卫:1.0/1.5/2.5",1,1,107,"DECIMAL","2,1",8,'info',0,"<input name=\"bathrooms\" type=\"text\" id=\"bathrooms\" value=\"\" size=\"45\">","<input name=\"bathrooms\" type=\"text\" id=\"bathrooms\" value=\"\" size=\"45\">",'',"<input name=\"bathrooms\" type=\"text\" id=\"bathrooms\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="bathrooms" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "sqft","面积",'text',"使用面积,平方英尺sqft",1,1,108,"INT","",8,'info',0,"<input name=\"sqft\" type=\"text\" id=\"sqft\" value=\"\" size=\"45\">","<input name=\"sqft\" type=\"text\" id=\"sqft\" value=\"\" size=\"45\">",'',"<input name=\"sqft\" type=\"text\" id=\"sqft\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="sqft" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "proptype","房屋类型",'text',"0未设 1公寓 2独立屋 3联排 4康斗 9其他",1,1,109,"TINYINT","",8,'info',0,"<input name=\"proptype\" type=\"text\" id=\"proptype\" value=\"\" size=\"45\">","<input name=\"proptype\" type=\"text\" id=\"proptype\" value=\"\" size=\"45\">",'',"<input name=\"proptype\" type=\"text\" id=\"proptype\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="proptype" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "furnished","家具",'text',"0未设 1无家具 2部分家具 3家具齐全",1,1,110,"TINYINT","",8,'info',0,"<input name=\"furnished\" type=\"text\" id=\"furnished\" value=\"\" size=\"45\">","<input name=\"furnished\" type=\"text\" id=\"furnished\" value=\"\" size=\"45\">",'',"<input name=\"furnished\" type=\"text\" id=\"furnished\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="furnished" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "parking","车位",'text',"0未设 1无车位 2车位 3车库",1,1,111,"TINYINT","",8,'info',0,"<input name=\"parking\" type=\"text\" id=\"parking\" value=\"\" size=\"45\">","<input name=\"parking\" type=\"text\" id=\"parking\" value=\"\" size=\"45\">",'',"<input name=\"parking\" type=\"text\" id=\"parking\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="parking" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "laundry","洗衣",'text',"0未设 1无 2房内洗烘 3接口 4楼层公用 5院内洗衣房",1,1,112,"TINYINT","",8,'info',0,"<input name=\"laundry\" type=\"text\" id=\"laundry\" value=\"\" size=\"45\">","<input name=\"laundry\" type=\"text\" id=\"laundry\" value=\"\" size=\"45\">",'',"<input name=\"laundry\" type=\"text\" id=\"laundry\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="laundry" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "pets","宠物",'text',"0未设 1不可养 2可猫 3可狗 4猫狗均可",1,1,113,"TINYINT","",8,'info',0,"<input name=\"pets\" type=\"text\" id=\"pets\" value=\"\" size=\"45\">","<input name=\"pets\" type=\"text\" id=\"pets\" value=\"\" size=\"45\">",'',"<input name=\"pets\" type=\"text\" id=\"pets\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="pets" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "tenantpolicy","入住政策",'text',"位掩码(0=均未设):1抽烟 2聚会 4留宿 8短转租 16信用审查 32收入证明 64在职 128背景调查 256租客保险 512无驱逐记录 1024无申请费 2048无中介费",1,1,114,"INT","",8,'info',0,"<input name=\"tenantpolicy\" type=\"text\" id=\"tenantpolicy\" value=\"\" size=\"45\">","<input name=\"tenantpolicy\" type=\"text\" id=\"tenantpolicy\" value=\"\" size=\"45\">",'',"<input name=\"tenantpolicy\" type=\"text\" id=\"tenantpolicy\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="tenantpolicy" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "occupancy","可住人数",'text',"最多可住人数,0=不限",1,1,115,"TINYINT","",8,'info',0,"<input name=\"occupancy\" type=\"text\" id=\"occupancy\" value=\"\" size=\"45\">","<input name=\"occupancy\" type=\"text\" id=\"occupancy\" value=\"\" size=\"45\">",'',"<input name=\"occupancy\" type=\"text\" id=\"occupancy\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="occupancy" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "availmode","可入住方式",'text',"0面议 1立即入住 2指定日期(availdate生效)",1,1,116,"TINYINT","",8,'info',0,"<input name=\"availmode\" type=\"text\" id=\"availmode\" value=\"\" size=\"45\">","<input name=\"availmode\" type=\"text\" id=\"availmode\" value=\"\" size=\"45\">",'',"<input name=\"availmode\" type=\"text\" id=\"availmode\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="availmode" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "availdate","可入住日期",'text',"availmode=2时生效,真实DATE;可立即入住筛选=availmode=1或(availmode=2且availdate<=今日+3天)",1,1,117,"DATE","",8,'info',0,"<input name=\"availdate\" type=\"text\" id=\"availdate\" value=\"\" size=\"45\">","<input name=\"availdate\" type=\"text\" id=\"availdate\" value=\"\" size=\"45\">",'',"<input name=\"availdate\" type=\"text\" id=\"availdate\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="availdate" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "listingstatus","房源状态",'text',"1招租中 2已出租 3已下架 4已过期;与CMS审核状态(checked)相互独立",1,1,118,"TINYINT","",8,'info',0,"<input name=\"listingstatus\" type=\"text\" id=\"listingstatus\" value=\"\" size=\"45\">","<input name=\"listingstatus\" type=\"text\" id=\"listingstatus\" value=\"\" size=\"45\">",'',"<input name=\"listingstatus\" type=\"text\" id=\"listingstatus\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="listingstatus" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "rentaltype","出租方式",'text',"0未设 1整租 2合租单间(业务维度1)",1,1,119,"TINYINT","",8,'info',0,"<input name=\"rentaltype\" type=\"text\" id=\"rentaltype\" value=\"\" size=\"45\">","<input name=\"rentaltype\" type=\"text\" id=\"rentaltype\" value=\"\" size=\"45\">",'',"<input name=\"rentaltype\" type=\"text\" id=\"rentaltype\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="rentaltype" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "rentterm","租期类型",'text',"0未设 1长租 2短租度假(业务维度2)",1,1,120,"TINYINT","",8,'info',0,"<input name=\"rentterm\" type=\"text\" id=\"rentterm\" value=\"\" size=\"45\">","<input name=\"rentterm\" type=\"text\" id=\"rentterm\" value=\"\" size=\"45\">",'',"<input name=\"rentterm\" type=\"text\" id=\"rentterm\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="rentterm" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "issublet","是否转租",'text',"0否 1是(转租,业务维度3)",1,1,121,"TINYINT","",8,'info',0,"<input name=\"issublet\" type=\"text\" id=\"issublet\" value=\"\" size=\"45\">","<input name=\"issublet\" type=\"text\" id=\"issublet\" value=\"\" size=\"45\">",'',"<input name=\"issublet\" type=\"text\" id=\"issublet\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="issublet" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "minterm","最短租期(月)",'text',"最短租期,月,0=不限",1,1,122,"TINYINT","",8,'info',0,"<input name=\"minterm\" type=\"text\" id=\"minterm\" value=\"\" size=\"45\">","<input name=\"minterm\" type=\"text\" id=\"minterm\" value=\"\" size=\"45\">",'',"<input name=\"minterm\" type=\"text\" id=\"minterm\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="minterm" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "maxterm","最长租期(月)",'text',"最长租期,月,0=不限;与minterm同置主表保持一致性",1,1,123,"TINYINT","",8,'info',0,"<input name=\"maxterm\" type=\"text\" id=\"maxterm\" value=\"\" size=\"45\">","<input name=\"maxterm\" type=\"text\" id=\"maxterm\" value=\"\" size=\"45\">",'',"<input name=\"maxterm\" type=\"text\" id=\"maxterm\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="maxterm" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "deposit","押金",'text',"押金USD,0=面议",1,1,125,"MEDIUMINT","",8,'info',1,"<input name=\"deposit\" type=\"text\" id=\"deposit\" value=\"\" size=\"45\">","<input name=\"deposit\" type=\"text\" id=\"deposit\" value=\"\" size=\"45\">",'',"<input name=\"deposit\" type=\"text\" id=\"deposit\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="deposit" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "videourl","视频",'text',"YouTube/Vimeo/B站视频页地址,详情页自动转iframe",1,1,126,"VARCHAR","200",8,'info',1,"<input name=\"videourl\" type=\"text\" id=\"videourl\" value=\"\" size=\"45\">","<input name=\"videourl\" type=\"text\" id=\"videourl\" value=\"\" size=\"45\">",'',"<input name=\"videourl\" type=\"text\" id=\"videourl\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="videourl" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "contactshow","联系方式公开",'text',"隐藏掩码(0=全部公开已填项):1phone 2email 4wechat 8qq 16whatsapp 32line 64telegram 128signal 256skype 512facebook 1024instagram",1,1,127,"INT","",8,'info',1,"<input name=\"contactshow\" type=\"text\" id=\"contactshow\" value=\"\" size=\"45\">","<input name=\"contactshow\" type=\"text\" id=\"contactshow\" value=\"\" size=\"45\">",'',"<input name=\"contactshow\" type=\"text\" id=\"contactshow\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="contactshow" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "instagram","Instagram",'text',"Instagram账号",1,1,128,"VARCHAR","40",8,'info',1,"<input name=\"instagram\" type=\"text\" id=\"instagram\" value=\"\" size=\"45\">","<input name=\"instagram\" type=\"text\" id=\"instagram\" value=\"\" size=\"45\">",'',"<input name=\"instagram\" type=\"text\" id=\"instagram\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="instagram" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "line","Line",'text',"Line账号",1,1,129,"VARCHAR","40",8,'info',1,"<input name=\"line\" type=\"text\" id=\"line\" value=\"\" size=\"45\">","<input name=\"line\" type=\"text\" id=\"line\" value=\"\" size=\"45\">",'',"<input name=\"line\" type=\"text\" id=\"line\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="line" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "whatsapp","WhatsApp",'text',"WhatsApp账号",1,1,130,"VARCHAR","40",8,'info',1,"<input name=\"whatsapp\" type=\"text\" id=\"whatsapp\" value=\"\" size=\"45\">","<input name=\"whatsapp\" type=\"text\" id=\"whatsapp\" value=\"\" size=\"45\">",'',"<input name=\"whatsapp\" type=\"text\" id=\"whatsapp\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="whatsapp" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "telegram","Telegram",'text',"Telegram账号",1,1,131,"VARCHAR","40",8,'info',1,"<input name=\"telegram\" type=\"text\" id=\"telegram\" value=\"\" size=\"45\">","<input name=\"telegram\" type=\"text\" id=\"telegram\" value=\"\" size=\"45\">",'',"<input name=\"telegram\" type=\"text\" id=\"telegram\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="telegram" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "signal","Signal",'text',"Signal账号",1,1,132,"VARCHAR","40",8,'info',1,"<input name=\"signal\" type=\"text\" id=\"signal\" value=\"\" size=\"45\">","<input name=\"signal\" type=\"text\" id=\"signal\" value=\"\" size=\"45\">",'',"<input name=\"signal\" type=\"text\" id=\"signal\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="signal" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "skype","Skype",'text',"Skype账号",1,1,133,"VARCHAR","40",8,'info',1,"<input name=\"skype\" type=\"text\" id=\"skype\" value=\"\" size=\"45\">","<input name=\"skype\" type=\"text\" id=\"skype\" value=\"\" size=\"45\">",'',"<input name=\"skype\" type=\"text\" id=\"skype\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="skype" AND `tbname`='info');

INSERT INTO `phome_enewsf` (f,fname,fform,fzs,isadd,isshow,myorder,ftype,flen,tid,tbname,tbdataf,fhtml,cjhtml,fvalue,qfhtml)
SELECT "facebook","Facebook",'text',"Facebook/Messenger用户名或链接",1,1,134,"VARCHAR","80",8,'info',1,"<input name=\"facebook\" type=\"text\" id=\"facebook\" value=\"\" size=\"45\">","<input name=\"facebook\" type=\"text\" id=\"facebook\" value=\"\" size=\"45\">",'',"<input name=\"facebook\" type=\"text\" id=\"facebook\" value=\"\" size=\"45\">"
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsf` WHERE `f`="facebook" AND `tbname`='info');

-- ---------- 6. 标题分类 (phome_enewsinfotype, mid=8) ----------
-- 说明: 仅把"出租方式"(整租/合租单间)做成标题分类用于导航; 短租度假/转租已改为 rentterm/issublet 字段。
-- 经核实: 当前 phome_enewsinfotype 无任何记录; mid=8 即"分类信息模型"。
INSERT INTO `phome_enewsinfotype` (`tname`,`mid`,`myorder`,`tid`,`tbname`,`tnum`,`listtempid`,`tpath`,`ttype`,`maxnum`,`reorder`)
SELECT "整租",8,1,0,'',0,0,'','',0,'' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsinfotype` WHERE `tname`="整租" AND `mid`=8);
INSERT INTO `phome_enewsinfotype` (`tname`,`mid`,`myorder`,`tid`,`tbname`,`tnum`,`listtempid`,`tpath`,`ttype`,`maxnum`,`reorder`)
SELECT "合租单间",8,2,0,'',0,0,'','',0,'' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM `phome_enewsinfotype` WHERE `tname`="合租单间" AND `mid`=8);

-- ---------- 7. 索引 (phome_ecms_info, 修订) ----------
-- idx_status_time : 列表页: 招租中+按时间
SET @sql=NULL;
SELECT IF(COUNT(*)=0,'CREATE INDEX `idx_status_time` ON `phome_ecms_info` (listingstatus,newstime)',NULL) INTO @sql
  FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_status_time';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- idx_map : 地图bbox; 注: 未地理编码记录lat/lng=0会被bbox排除
SET @sql=NULL;
SELECT IF(COUNT(*)=0,'CREATE INDEX `idx_map` ON `phome_ecms_info` (lat,lng)',NULL) INTO @sql
  FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_map';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- idx_zip : zip检索(依赖第3节zip迁移); 若不迁移zip则不要建
SET @sql=NULL;
SELECT IF(COUNT(*)=0,'CREATE INDEX `idx_zip` ON `phome_ecms_info` (zip)',NULL) INTO @sql
  FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_zip';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- idx_rent : 价格区间筛选
SET @sql=NULL;
SELECT IF(COUNT(*)=0,'CREATE INDEX `idx_rent` ON `phome_ecms_info` (rent)',NULL) INTO @sql
  FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- idx_beds : 卧室数筛选
SET @sql=NULL;
SELECT IF(COUNT(*)=0,'CREATE INDEX `idx_beds` ON `phome_ecms_info` (bedrooms)',NULL) INTO @sql
  FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_beds';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- idx_pets : 宠物筛选(可养=pets>=2)
SET @sql=NULL;
SELECT IF(COUNT(*)=0,'CREATE INDEX `idx_pets` ON `phome_ecms_info` (pets)',NULL) INTO @sql
  FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- idx_rentaltype : 出租方式筛选
SET @sql=NULL;
SELECT IF(COUNT(*)=0,'CREATE INDEX `idx_rentaltype` ON `phome_ecms_info` (rentaltype)',NULL) INTO @sql
  FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- idx_rentterm : 租期类型筛选
SET @sql=NULL;
SELECT IF(COUNT(*)=0,'CREATE INDEX `idx_rentterm` ON `phome_ecms_info` (rentterm)',NULL) INTO @sql
  FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- ---------- 8. 执行结果自检 ----------
SELECT '主表新增字段数' AS item, COUNT(*) AS cnt FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME IN ('lat','lng','rent','rentperiod','rent_orig','bill','bedrooms','bathrooms','sqft','proptype','furnished','parking','laundry','pets','tenantpolicy','occupancy','availmode','availdate','listingstatus','rentaltype','rentterm','issublet','minterm','maxterm');
SELECT '副表新增字段数' AS item, COUNT(*) AS cnt FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME IN ('deposit','videourl','contactshow','instagram','line','whatsapp','telegram','signal','skype','facebook');
SELECT 'zip已登记为主表(tbdataf)' AS item, tbdataf FROM phome_enewsf WHERE f='zip' AND tbname='info';
SELECT '字段登记条数' AS item, COUNT(*) AS cnt FROM phome_enewsf WHERE tbname='info' AND f IN ('lat','lng','rent','rentperiod','rent_orig','bill','bedrooms','bathrooms','sqft','proptype','furnished','parking','laundry','pets','tenantpolicy','occupancy','availmode','availdate','listingstatus','rentaltype','rentterm','issublet','minterm','maxterm','deposit','videourl','contactshow','instagram','line','whatsapp','telegram','signal','skype','facebook');
SELECT '主表索引' AS item, GROUP_CONCAT(DISTINCT INDEX_NAME) AS idx FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME LIKE 'idx_%';
SELECT 'zip回填行数(>0=历史已迁移)' AS item, COUNT(*) AS cnt FROM phome_ecms_info WHERE zip<>'';
SELECT '标题分类' AS item, GROUP_CONCAT(tname ORDER BY myorder) AS names FROM phome_enewsinfotype WHERE mid=8 AND tname IN ('整租','合租单间');
SELECT 'SQL 执行完毕(草稿,未在生产执行)' AS done;