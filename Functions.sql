# FUNCTIONS
  
-- 1. Count Missions Assigned to a Soldier
CREATE OR REPLACE FUNCTION GET_MISSION_COUNT (
    p_soldier_id IN NUMBER
) RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM SOLDIER_MISSION
    WHERE soldier_id = p_soldier_id;

    RETURN v_count;
END GET_MISSION_COUNT;
