# PROCEDURES
  
-- 1. Add New Soldier
CREATE OR REPLACE PROCEDURE ADD_SOLDIER (
    p_soldier_id IN NUMBER,
    p_name IN VARCHAR2,
    p_dob IN DATE,
    p_gender IN VARCHAR2,
    p_join_date IN DATE,
    p_status IN VARCHAR2,
    p_branch_id IN NUMBER,
    p_unit_id IN NUMBER,
    p_rank_id IN NUMBER
) IS
BEGIN
    INSERT INTO SOLDIER (soldier_id, name, date_of_birth, gender, join_date, status, branch_id, unit_id, rank_id)
    VALUES (p_soldier_id, p_name, p_dob, p_gender, p_join_date, p_status, p_branch_id, p_unit_id, p_rank_id);
END ADD_SOLDIER;

-- 2. Promote Soldier
CREATE OR REPLACE PROCEDURE PROMOTE_SOLDIER (
    p_soldier_id IN NUMBER,
    p_new_rank_id IN NUMBER
) IS
BEGIN
    UPDATE SOLDIER
    SET rank_id = p_new_rank_id
    WHERE soldier_id = p_soldier_id;
END PROMOTE_SOLDIER;
