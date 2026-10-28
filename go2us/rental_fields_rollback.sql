-- ============================================================
-- 回滚脚本 (rental_fields_rollback.sql) - 仅用于撤销本迁移草案
-- 幂等: 按列/索引/记录是否存在执行; 不删除任何旧字段, 不清空业务数据
-- 注: 回滚会 DROP 新增列(主表zip回填数据将丢失, 但副表zip仍保留)
-- 终极回滚: mysql -uroot -p usinfo < usinfo_bak_YYYYMMDD.sql (整库备份)
-- ============================================================

-- 1. 删除主表新增字段 (含会员投稿临时表 infotmp_info)
SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `lat`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='lat';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `lat`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='lat';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `lat`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='lat';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `lat`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='lat';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `lng`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='lng';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `lng`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='lng';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `lng`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='lng';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `lng`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='lng';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `rent`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `rent`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `rent`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `rent`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `rentperiod`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rentperiod';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `rentperiod`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rentperiod';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `rentperiod`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rentperiod';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `rentperiod`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rentperiod';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `rent_orig`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rent_orig';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `rent_orig`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rent_orig';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `rent_orig`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rent_orig';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `rent_orig`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rent_orig';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `bill`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='bill';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `bill`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='bill';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `bill`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='bill';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `bill`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='bill';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `bedrooms`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='bedrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `bedrooms`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='bedrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `bedrooms`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='bedrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `bedrooms`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='bedrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `bathrooms`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='bathrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `bathrooms`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='bathrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `bathrooms`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='bathrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `bathrooms`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='bathrooms';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `sqft`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='sqft';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `sqft`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='sqft';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `sqft`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='sqft';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `sqft`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='sqft';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `proptype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='proptype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `proptype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='proptype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `proptype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='proptype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `proptype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='proptype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `furnished`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='furnished';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `furnished`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='furnished';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `furnished`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='furnished';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `furnished`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='furnished';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `parking`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='parking';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `parking`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='parking';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `parking`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='parking';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `parking`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='parking';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `laundry`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='laundry';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `laundry`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='laundry';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `laundry`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='laundry';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `laundry`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='laundry';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `pets`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `pets`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `pets`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `pets`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `tenantpolicy`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='tenantpolicy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `tenantpolicy`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='tenantpolicy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `tenantpolicy`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='tenantpolicy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `tenantpolicy`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='tenantpolicy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `occupancy`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='occupancy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `occupancy`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='occupancy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `occupancy`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='occupancy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `occupancy`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='occupancy';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `availmode`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='availmode';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `availmode`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='availmode';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `availmode`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='availmode';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `availmode`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='availmode';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `availdate`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='availdate';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `availdate`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='availdate';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `availdate`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='availdate';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `availdate`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='availdate';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `listingstatus`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='listingstatus';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `listingstatus`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='listingstatus';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `listingstatus`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='listingstatus';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `listingstatus`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='listingstatus';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `rentaltype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `rentaltype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `rentaltype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `rentaltype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `rentterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `rentterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `rentterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `rentterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `issublet`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='issublet';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `issublet`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='issublet';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `issublet`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='issublet';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `issublet`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='issublet';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `minterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='minterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `minterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='minterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `minterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='minterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `minterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='minterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `maxterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='maxterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `maxterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='maxterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `maxterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='maxterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_infotmp_info` DROP COLUMN `maxterm`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_infotmp_info' AND COLUMN_NAME='maxterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- 2. 删除副表新增字段
SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `deposit`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='deposit';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `deposit`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='deposit';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `deposit`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='deposit';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `videourl`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='videourl';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `videourl`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='videourl';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `videourl`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='videourl';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `contactshow`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='contactshow';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `contactshow`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='contactshow';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `contactshow`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='contactshow';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `instagram`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='instagram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `instagram`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='instagram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `instagram`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='instagram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `line`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='line';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `line`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='line';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `line`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='line';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `whatsapp`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='whatsapp';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `whatsapp`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='whatsapp';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `whatsapp`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='whatsapp';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `telegram`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='telegram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `telegram`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='telegram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `telegram`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='telegram';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `signal`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='signal';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `signal`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='signal';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `signal`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='signal';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `skype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='skype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `skype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='skype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `skype`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='skype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_data_1` DROP COLUMN `facebook`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='facebook';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check_data` DROP COLUMN `facebook`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='facebook';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc_data` DROP COLUMN `facebook`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='facebook';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- 3. 删除索引 (phome_ecms_info)
SET @sql=NULL;
SELECT IF(COUNT(*)=1,'DROP INDEX `idx_status_time` ON `phome_ecms_info`',NULL) INTO @sql FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_status_time';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'DROP INDEX `idx_map` ON `phome_ecms_info`',NULL) INTO @sql FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_map';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'DROP INDEX `idx_zip` ON `phome_ecms_info`',NULL) INTO @sql FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_zip';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'DROP INDEX `idx_rent` ON `phome_ecms_info`',NULL) INTO @sql FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_rent';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'DROP INDEX `idx_beds` ON `phome_ecms_info`',NULL) INTO @sql FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_beds';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'DROP INDEX `idx_pets` ON `phome_ecms_info`',NULL) INTO @sql FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_pets';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'DROP INDEX `idx_rentaltype` ON `phome_ecms_info`',NULL) INTO @sql FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_rentaltype';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'DROP INDEX `idx_rentterm` ON `phome_ecms_info`',NULL) INTO @sql FROM information_schema.STATISTICS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND INDEX_NAME='idx_rentterm';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- 4. 删除字段登记 (phome_enewsf)
DELETE FROM `phome_enewsf` WHERE `tbname`='info' AND `f` IN ('lat','lng','rent','rentperiod','rent_orig','bill','bedrooms','bathrooms','sqft','proptype','furnished','parking','laundry','pets','tenantpolicy','occupancy','availmode','availdate','listingstatus','rentaltype','rentterm','issublet','minterm','maxterm','deposit','videourl','contactshow','instagram','line','whatsapp','telegram','signal','skype','facebook');
-- 5. 删除标题分类
DELETE FROM `phome_enewsinfotype` WHERE `mid`=8 AND `tname` IN ('整租','合租单间');
-- 6. 还原 zip: 主表删列 + 登记表改回副表(tbdataf=1)
SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info` DROP COLUMN `zip`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME='zip';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_check` DROP COLUMN `zip`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check' AND COLUMN_NAME='zip';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COUNT(*)=1,'ALTER TABLE `phome_ecms_info_doc` DROP COLUMN `zip`',NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc' AND COLUMN_NAME='zip';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

UPDATE `phome_enewsf` SET `tbdataf`=1 WHERE `f`='zip' AND `tbname`='info';
-- 7. 还原 phone varchar(30)->varchar(12)
SET @sql=NULL;
SELECT IF(COLUMN_TYPE='varchar(30)',"ALTER TABLE `phome_ecms_info_data_1` MODIFY COLUMN `phone` varchar(12) NOT NULL DEFAULT ''",NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_data_1' AND COLUMN_NAME='phone';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COLUMN_TYPE='varchar(30)',"ALTER TABLE `phome_ecms_info_check_data` MODIFY COLUMN `phone` varchar(12) NOT NULL DEFAULT ''",NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_check_data' AND COLUMN_NAME='phone';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

SET @sql=NULL;
SELECT IF(COLUMN_TYPE='varchar(30)',"ALTER TABLE `phome_ecms_info_doc_data` MODIFY COLUMN `phone` varchar(12) NOT NULL DEFAULT ''",NULL) INTO @sql FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info_doc_data' AND COLUMN_NAME='phone';
SET @sql=IFNULL(@sql,'SELECT 1');
PREPARE __s FROM @sql; EXECUTE __s; DEALLOCATE PREPARE __s;

-- 8. 回滚自检
SELECT '主表残留新字段数(应0)' AS item, COUNT(*) AS cnt FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME='phome_ecms_info' AND COLUMN_NAME IN ('lat','lng','rent','rentperiod','rent_orig','bill','bedrooms','bathrooms','sqft','proptype','furnished','parking','laundry','pets','tenantpolicy','occupancy','availmode','availdate','listingstatus','rentaltype','rentterm','issublet','minterm','maxterm');
SELECT 'enewsf残留登记数(应0)' AS item, COUNT(*) AS cnt FROM phome_enewsf WHERE tbname='info' AND f IN ('lat','lng','rent','rentperiod','rent_orig','bill','bedrooms','bathrooms','sqft','proptype','furnished','parking','laundry','pets','tenantpolicy','occupancy','availmode','availdate','listingstatus','rentaltype','rentterm','issublet','minterm','maxterm','deposit','videourl','contactshow','instagram','line','whatsapp','telegram','signal','skype','facebook');
SELECT 'zip登记表(tbdataf应1)' AS item, tbdataf FROM phome_enewsf WHERE f='zip' AND tbname='info';
SELECT '回滚完毕' AS done;