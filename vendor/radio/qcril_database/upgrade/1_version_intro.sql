/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 1);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '234' AND NUMBER = '999';
INSERT INTO qcril_emergency_source_mcc_table VALUES('234','999','','');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '505' AND NUMBER = '000';
INSERT INTO qcril_emergency_source_mcc_table VALUES('505', '000', '','');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '425' AND NUMBER = '1221';
INSERT INTO qcril_emergency_source_mcc_table VALUES('425', '1221', '','');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '425' AND NUMBER = '1221';
INSERT INTO qcril_emergency_source_voice_table VALUES('425','1221','','full');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '425' AND NUMBER = '100';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('425', '100', '','');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '425' AND NUMBER = '101';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('425','101','','full');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '425' AND NUMBER = '102';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('425', '102', '','');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '425' AND NUMBER = '1221';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('425','1221','','full');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '520' AND NUMBER = '*911';
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','*911','','limited');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '520' AND NUMBER = '#911';
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','#911','','limited');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '520' AND NUMBER = '*911';
INSERT INTO qcril_emergency_source_voice_table VALUES('520','*911','','limited');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '520' AND NUMBER = '#911';
INSERT INTO qcril_emergency_source_voice_table VALUES('520','#911','','limited');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '525' AND NUMBER = '995';

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '525' AND NUMBER = '995';

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '414' AND NUMBER = '191';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','191',4);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '414' AND NUMBER = '192';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','192',2);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '414' AND NUMBER = '199';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','199',1);

COMMIT TRANSACTION;
