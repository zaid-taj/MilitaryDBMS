-- Example of some Views

-- 1. View: Soldier Details
CREATE OR REPLACE VIEW SOLDIER_DETAILS AS
SELECT S.soldier_id, S.name, S.gender, S.join_date, S.status,
       B.branch_name, U.unit_name, R.rank_name
FROM SOLDIER S
JOIN BRANCH B ON S.branch_id = B.branch_id
JOIN UNIT U ON S.unit_id = U.unit_id
JOIN RANK R ON S.rank_id = R.rank_id;

-- 2. View: Soldier Weapons
CREATE OR REPLACE VIEW SOLDIER_WEAPON_DETAILS AS
SELECT S.soldier_id, S.name AS soldier_name, W.weapon_name, W.weapon_type,
       SW.issue_date, SW.return_date
FROM SOLDIER S
JOIN SOLDIER_WEAPON SW ON S.soldier_id = SW.soldier_id
JOIN WEAPON W ON SW.weapon_id = W.weapon_id;

-- 3. View: Soldier Missions
CREATE OR REPLACE VIEW SOLDIER_MISSION_DETAILS AS
SELECT S.soldier_id, S.name AS soldier_name, M.mission_name, M.start_date,
       M.end_date, M.status, SM.role
FROM SOLDIER S
JOIN SOLDIER_MISSION SM ON S.soldier_id = SM.soldier_id
JOIN MISSION M ON SM.mission_id = M.mission_id;

-- 4. View: Soldier Awards
CREATE OR REPLACE VIEW SOLDIER_AWARD_DETAILS AS
SELECT S.soldier_id, S.name AS soldier_name, A.award_name, A.award_type, SA.award_date
FROM SOLDIER S
JOIN SOLDIER_AWARD SA ON S.soldier_id = SA.soldier_id
JOIN AWARD A ON SA.award_id = A.award_id;

-- 5. View: Soldier Service History
CREATE OR REPLACE VIEW SOLDIER_SERVICE_HISTORY AS
SELECT S.soldier_id, S.name AS soldier_name, SR.service_type, SR.start_date, SR.end_date
FROM SOLDIER S
JOIN SERVICE_RECORD SR ON S.soldier_id = SR.soldier_id;

-- 6. View: Active Missions
CREATE OR REPLACE VIEW ACTIVE_MISSIONS AS
SELECT mission_id, mission_name, start_date, end_date, status
FROM MISSION
WHERE status = 'Active';
