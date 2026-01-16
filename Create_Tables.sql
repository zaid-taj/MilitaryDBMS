#  Create_Tables (SQL Code)
  
-- BRANCH
CREATE TABLE BRANCH (
    branch_id NUMBER(5),
    branch_name VARCHAR2(50) NOT NULL,
    headquarters VARCHAR2(100) NOT NULL,
    CONSTRAINT branch_pk PRIMARY KEY (branch_id)
);

-- UNIT
CREATE TABLE UNIT (
    unit_id NUMBER(5),
    unit_name VARCHAR2(50) NOT NULL,
    location VARCHAR2(50) NOT NULL,
    branch_id NUMBER(5),
    CONSTRAINT unit_pk PRIMARY KEY (unit_id),
    CONSTRAINT unit_branch_fk FOREIGN KEY (branch_id)
        REFERENCES BRANCH(branch_id)
);

-- RANK
CREATE TABLE RANK (
    rank_id NUMBER(5),
    rank_name VARCHAR2(30) NOT NULL,
    rank_level NUMBER(2) NOT NULL,
    CONSTRAINT rank_pk PRIMARY KEY (rank_id)
);

-- SOLDIER
CREATE TABLE SOLDIER (
    soldier_id NUMBER(5),
    name VARCHAR2(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR2(10) NOT NULL,
    join_date DATE NOT NULL,
    status VARCHAR2(20) NOT NULL,
    branch_id NUMBER(5),
    unit_id NUMBER(5),
    rank_id NUMBER(5),
    CONSTRAINT soldier_pk PRIMARY KEY (soldier_id),
    CONSTRAINT soldier_branch_fk FOREIGN KEY (branch_id) REFERENCES BRANCH(branch_id),
    CONSTRAINT soldier_unit_fk FOREIGN KEY (unit_id) REFERENCES UNIT(unit_id),
    CONSTRAINT soldier_rank_fk FOREIGN KEY (rank_id) REFERENCES RANK(rank_id)
);

-- WEAPON
CREATE TABLE WEAPON (
    weapon_id NUMBER(5),
    weapon_name VARCHAR2(50) NOT NULL,
    weapon_type VARCHAR2(30) NOT NULL,
    CONSTRAINT weapon_pk PRIMARY KEY (weapon_id)
);

-- MISSION
CREATE TABLE MISSION (
    mission_id NUMBER(5),
    mission_name VARCHAR2(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR2(20) NOT NULL,
    CONSTRAINT mission_pk PRIMARY KEY (mission_id)
);

-- AWARD
CREATE TABLE AWARD (
    award_id NUMBER(5),
    award_name VARCHAR2(50) NOT NULL,
    award_type VARCHAR2(30) NOT NULL,
    CONSTRAINT award_pk PRIMARY KEY (award_id)
);

-- SERVICE_RECORD
CREATE TABLE SERVICE_RECORD (
    record_id NUMBER(5),
    soldier_id NUMBER(5),
    service_type VARCHAR2(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    CONSTRAINT service_record_pk PRIMARY KEY (record_id),
    CONSTRAINT service_soldier_fk FOREIGN KEY (soldier_id) REFERENCES SOLDIER(soldier_id)
);

-- SOLDIER_WEAPON
CREATE TABLE SOLDIER_WEAPON (
    soldier_id NUMBER(5),
    weapon_id NUMBER(5),
    issue_date DATE NOT NULL,
    return_date DATE,
    CONSTRAINT soldier_weapon_pk PRIMARY KEY (soldier_id, weapon_id),
    CONSTRAINT sw_soldier_fk FOREIGN KEY (soldier_id) REFERENCES SOLDIER(soldier_id),
    CONSTRAINT sw_weapon_fk FOREIGN KEY (weapon_id) REFERENCES WEAPON(weapon_id)
);

-- SOLDIER_MISSION
CREATE TABLE SOLDIER_MISSION (
    soldier_id NUMBER(5),
    mission_id NUMBER(5),
    role VARCHAR2(50) NOT NULL,
    CONSTRAINT soldier_mission_pk PRIMARY KEY (soldier_id, mission_id),
    CONSTRAINT sm_soldier_fk FOREIGN KEY (soldier_id) REFERENCES SOLDIER(soldier_id),
    CONSTRAINT sm_mission_fk FOREIGN KEY (mission_id) REFERENCES MISSION(mission_id)
);

-- SOLDIER_AWARD
CREATE TABLE SOLDIER_AWARD (
    soldier_id NUMBER(5),
    award_id NUMBER(5),
    award_date DATE NOT NULL,
    CONSTRAINT soldier_award_pk PRIMARY KEY (soldier_id, award_id),
    CONSTRAINT sa_soldier_fk FOREIGN KEY (soldier_id) REFERENCES SOLDIER(soldier_id),
    CONSTRAINT sa_award_fk FOREIGN KEY (award_id) REFERENCES AWARD(award_id)
);
