# Normalization of Military Management System

# 1. BRANCH 
(branch_id, branch_name, headquarters) 
• 1NF: All attributes contain atomic values and there are no repeating groups. 
• 2NF: Since the primary key is a single attribute (branch_id), there are no partial 
dependencies. 
• 3NF: There are no transitive dependencies; all non-key attributes depend directly on 
the primary key. 
• BCNF: Every determinant is a candidate key. 
• 4NF: No multi-valued dependencies exist. 
• 5NF: The relation cannot be further decomposed without losing information. 
BRANCH is in 5NF 

 # 2. UNIT 
(unit_id, unit_name, location, branch_id) 
• 1NF: The table contains atomic attributes only. 
• 2NF: Single primary key ensures no partial dependency. 
• 3NF: All non-key attributes depend only on unit_id. 
• BCNF: All determinants are candidate keys. 
• 4NF: No multi-valued dependencies exist. 
• 5NF: No join dependency requiring further decomposition exists. 
UNIT is in 5NF 

# 3. RANK 
(rank_id, rank_name, rank_level) 
• 1NF: All attributes are atomic. 
• 2NF: No partial dependency due to single primary key. 
• 3NF: No transitive dependency exists. 
• BCNF: Determinants are candidate keys. 
• 4NF: No multi-valued dependencies. 
• 5NF: Relation is already fully decomposed. 
RANK is in 5NF 

# 4. SOLDIER 
(soldier_id, name, date_of_birth, gender, join_date, status, branch_id, unit_id, rank_id) 
• 1NF: All attributes contain atomic values. 
• 2NF: The primary key is single-valued; hence no partial dependency exists. 
• 3NF: All non-key attributes depend directly on soldier_id. Transitive dependencies 
are removed by separate tables for Branch, Unit, and Rank. 
• BCNF: All determinants are candidate keys. 
• 4NF: Multi-valued attributes such as weapons, missions, and awards are moved to 
separate relations. 
• 5NF: No further decomposition is possible without loss of data. 
SOLDIER is in 5NF 

# 5. WEAPON 
(weapon_id, weapon_name, weapon_type) 
• 1NF: Atomic attributes with no repeating groups. 
• 2NF: No partial dependency. 
• 3NF: No transitive dependency. 
• BCNF: All determinants are candidate keys. 
• 4NF: No multi-valued dependency exists. 
• 5NF: Table is fully normalized. 
WEAPON is in 5NF 

# 6. MISSION 
(mission_id, mission_name, start_date, end_date, status) 
• 1NF: All values are atomic. 
• 2NF: Single primary key ensures no partial dependency. 
• 3NF: All attributes depend on mission_id. 
• BCNF: All determinants are candidate keys. 
• 4NF: No multi-valued dependency exists. 
• 5NF: No further decomposition required. 
MISSION is in 5NF 
# 7. AWARD 
(award_id, award_name, award_type) 
• 1NF: Atomic attributes. 
• 2NF: No partial dependency. 
• 3NF: No transitive dependency. 
• BCNF: All determinants are candidate keys. 
• 4NF: No multi-valued dependency exists. 
• 5NF: Table is in its final form. 
AWARD is in 5NF 

# 8. SERVICE_RECORD 
(record_id, soldier_id, service_type, start_date, end_date) 
• 1NF: All attributes are atomic. 
• 2NF: Single primary key ensures no partial dependency. 
• 3NF: Non-key attributes depend only on record_id. 
• BCNF: Determinants are candidate keys. 
• 4NF: No multi-valued dependencies exist. 
• 5NF: Cannot be further decomposed. 
SERVICE_RECORD is in 5NF 

# 9. SOLDIER_WEAPON 
(soldier_id, weapon_id, issue_date, return_date) 
• 1NF: Atomic attributes. 
• 2NF: Non-key attributes depend on the full composite key. 
• 3NF: No transitive dependency exists. 
• BCNF: Composite key is a candidate key. 
• 4NF: Represents a single multi-valued dependency resolved properly. 
• 5NF: No further lossless decomposition possible. 
SOLDIER_WEAPON is in 5NF 

# 10. SOLDIER_MISSION 
(soldier_id, mission_id, role) 
• 1NF: Atomic values only. 
• 2NF: Role depends on both parts of the composite key. 
• 3NF: No transitive dependency. 
• BCNF: All determinants are candidate keys. 
• 4NF: Independent relationship stored correctly. 
• 5NF: Fully normalized relation. 
SOLDIER_MISSION is in 5NF 

# 11. SOLDIER_AWARD 
(soldier_id, award_id, award_date) 
• 1NF: Atomic attributes. 
• 2NF: Award date depends on the full composite key. 
• 3NF: No transitive dependency. 
• BCNF: Determinants are candidate keys. 
• 4NF: No multi-valued dependency remains. 
• 5NF: Relation is complete. 
SOLDIER_AWARD is in 5NF
