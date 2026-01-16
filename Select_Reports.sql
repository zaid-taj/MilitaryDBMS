-- Example of some Select Statements...

-- 1. Example: Soldiers with Branch, Unit, Rank
SELECT S.soldier_id, S.name AS soldier_name, B.branch_name, U.unit_name, R.rank_name, S.status
FROM SOLDIER S
JOIN BRANCH B ON S.branch_id = B.branch_id
JOIN UNIT U ON S.unit_id = U.unit_id
JOIN RANK R ON S.rank_id = R.rank_id
ORDER BY S.soldier_id;

-- 2. Soldiers in Active Missions
SELECT S.soldier_id, S.name AS soldier_name, M.mission_name, SM.role, M.status
FROM SOLDIER S
JOIN SOLDIER_MISSION SM ON S.soldier_id = SM.soldier_id
JOIN MISSION M ON SM.mission_id = M.mission_id
WHERE M.status = 'Active';

-- 3. Weapons issued to Soldiers
SELECT S.soldier_id, S.name AS soldier_name, W.weapon_name, W.weapon_type,
       SW.issue_date, SW.return_date
FROM SOLDIER S
JOIN SOLDIER_WEAPON SW ON S.soldier_id = SW.soldier_id
JOIN WEAPON W ON SW.weapon_id = W.weapon_id
ORDER BY S.soldier_id;

-- 4. Soldier Awards
SELECT S.soldier_id, S.name AS soldier_name, A.award_name, A.award_type, SA.award_date
FROM SOLDIER S
JOIN SOLDIER_AWARD SA ON S.soldier_id = SA.soldier_id
JOIN AWARD A ON SA.award_id = A.award_id
ORDER BY SA.award_date DESC;

-- 5. Service Record
SELECT S.soldier_id, S.name AS soldier_name, SR.service_type, SR.start_date, SR.end_date
FROM SOLDIER S
JOIN SERVICE_RECORD SR ON S.soldier_id = SR.soldier_id
ORDER BY S.soldier_id;

-- 6. Soldiers per Branch
SELECT B.branch_name, COUNT(S.soldier_id) AS total_soldiers
FROM BRANCH B
LEFT JOIN SOLDIER S ON B.branch_id = S.branch_id
GROUP BY B.branch_name;

-- 7. Missions with Soldier Count
SELECT M.mission_name, COUNT(SM.soldier_id) AS total_soldiers
FROM MISSION M
LEFT JOIN SOLDIER_MISSION SM ON M.mission_id = SM.mission_id
GROUP BY M.mission_name;

-- 8. Soldiers Eligible for Promotion (rank_level < 5)
SELECT S.soldier_id, S.name AS soldier_name, R.rank_name, R.rank_level
FROM SOLDIER S
JOIN RANK R ON S.rank_id = R.rank_id
WHERE R.rank_level < 5
ORDER BY R.rank_level;
