# freeCodeCamp Relational Database Certification

This repository contains my solutions for the [freeCodeCamp Relational Database Certification](https://www.freecodecamp.org/learn/relational-database/). It showcases my work with PostgreSQL, SQL data modeling, and Bash scripting for database automation.

## Project Tasks

| Project | Focus | Description |
| :--- | :--- | :--- |
| **1. Celestial Bodies** | Data Modeling | Designing a database to track galaxies, stars, planets, and moons. |
| **2. World Cup** | SQL Queries & Data Ingestion | Importing CSV data into a PostgreSQL database and running specific queries to retrieve insights. |
| **3. Salon Appointment** | Bash Scripting | Creating a bash script that interacts with a database to book appointments, manage customers, and update services. |
| **4. Periodic Table** | Data Cleanup | Fixing database inconsistencies, updating data types, and using bash scripts to query chemical element properties. |

## Languages
* **Database:** PostgreSQL
* **Scripting:** Bash (Shell Scripting)
* **Query Language:** SQL

## Repository Structure
Each project is contained within its own directory:

- `/celestial_bodies`: Contains the `.sql` schema file for the universe database.
- `/world_cup`: Contains the `.sql` schema and the `insert_data.sh` script used to populate the database.
- `/salon`: Contains the `.sql` schema and `salon.sh`, which automates appointment scheduling.
- `/periodic_table`: Contains the final `.sql` schema and the `element.sh` query script.

## How to use
To restore any of these databases, ensure you have PostgreSQL installed and run the following command in your terminal:

```bash
psql -U <username> -d <database_name> < <filename.sql>
