# Military Database Management System (MDBMS)

This repository contains an academic **Military Database Management System** designed using relational database principles and implemented in **Oracle SQL**.

The system models real-world military operations, including personnel, units, ranks, missions, weapons, awards, and service records. It ensures data integrity, enforces business rules, and automates operations using views, stored procedures, functions, and triggers.

---

## Project Overview

Modern military organizations operate with extensive data involving personnel, operational units, missions, weapons, and service histories. Fragmented or manual record-keeping can introduce redundancy, inconsistencies, and operational inefficiencies.

The Military Management System addresses these challenges by offering a **fully normalized relational database** that centralizes military data while maintaining strict referential integrity and data accuracy.

---

## System Goals

The system is designed to:

* Maintain structured records of military personnel
* Organize branches such as Army, Navy, and Air Force
* Track ranks and promotion history
* Manage mission assignments and participation
* Record weapon issuance and returns
* Store awards and service history
* Reduce redundancy through advanced normalization
* Enforce consistency using primary and foreign keys

---

## Database Design Approach

* Entity Relationship Modeling (ERD)
* Bottom-up relational schema construction
* Normalization up to **Fifth Normal Form (5NF)**
* Resolution of many-to-many relationships using associative tables
* Strong dependency management through keys and constraints

The database is designed to support future extensions such as training logs, deployment history, and performance evaluations.

---

## Core Entities

* Soldier
* Branch
* Unit
* Rank
* Mission
* Weapon
* Award
* Service Record

---

## Associative Tables

* Soldier_Weapon
* Soldier_Mission
* Soldier_Award

These tables efficiently model complex relationships while preserving normalization.

---

## Reporting & Views

Multiple SQL views and queries provide:

* Soldier profiles with branch, unit, and rank
* Active mission participation
* Weapon assignment history
* Award and service records
* Aggregate statistics for administrative insights

---

## Technologies Used

* Oracle Database 11g XE
* SQL
* PL/SQL
* Relational Database Design
* ER Modeling and Normalization

---

## Academic Context

This project was developed as part of the **Database Systems** course to demonstrate practical application of:

* Relational modeling
* Advanced normalization
* Database-level business logic
* Integrity enforcement mechanisms

---

## Contributors

* Muhammad Zaid Taj (BITF24A004)
* Muhammad Fahad (BITF24A009)
* Hafiz Muhammad Tayyab Hayyat (BITF24A013)

**Supervised by:** Dr. Asif Sohail
