# TRIGGERS

-- 1. Prevent Weapon Issue Without Return
CREATE OR REPLACE TRIGGER TRG_CHECK_WEAPON_RETURN
BEFORE INSERT ON SOLDIER_WEAPON
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM SOLDIER_WEAPON
    WHERE soldier_id = :NEW.soldier_id
      AND return_date IS NULL;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Soldier already has an unreturned weapon.');
    END IF;
END;

-- 2. Validate Mission End Date
CREATE OR REPLACE TRIGGER TRG_VALIDATE_MISSION_DATES
BEFORE INSERT OR UPDATE ON MISSION
FOR EACH ROW
BEGIN
    IF :NEW.end_date IS NOT NULL AND :NEW.end_date < :NEW.start_date THEN
        RAISE_APPLICATION_ERROR(-20002, 'Mission end date cannot be earlier than start date.');
    END IF;
END;
