# Relational Schema of Military Management System

# -- Relations:
-BRANCH(branch_id, branch_name, headquarters)
-UNIT(unit_id, unit_name, location, branch_id)
-RANK(rank_id, rank_name, rank_level)
-SOLDIER(soldier_id, name, date_of_birth, gender, join_date, status, branch_id, unit_id, rank_id)
-WEAPON(weapon_id, weapon_name, weapon_type)
-MISSION(mission_id, mission_name, start_date, end_date, status)
-AWARD(award_id, award_name, award_type)
-SERVICE_RECORD(record_id, soldier_id, service_type, start_date, end_date)
-SOLDIER_WEAPON(soldier_id, weapon_id, issue_date, return_date)
-SOLDIER_MISSION(soldier_id, mission_id, role)
-SOLDIER_AWARD(soldier_id, award_id, award_date)
