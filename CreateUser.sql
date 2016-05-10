CreateUser.sql

--------------------------------
-- CreateUser.sql
--
-- Create a new user for CIS-2720.
--
-- This script creates a new non-DBA user in the Oracle database for 
-- students to use during the semester.  The script grants that use
-- the privledges needed to complete the class work, but does not
-- grant DBA prevledges
--
--------------------------------

ACCEPT username VARCHAR2 PROMPT "User Name: "
ACCEPT password VARCHAR2 PROMPT "Password: "


CREATE USER &username IDENTIFIED BY &password
  DEFAULT TABLESPACE users
/

GRANT CONNECT, RESOURCE to &username;
GRANT CREATE VIEW to &username;


GRANT SELECT ON hr.regions TO &username;
GRANT SELECT ON hr.locations TO &username;
GRANT SELECT ON hr.departments TO &username;
GRANT SELECT ON hr.jobs TO &username;
GRANT SELECT ON hr.employees TO &username;
GRANT SELECT ON hr.job_history TO &username;
GRANT SELECT ON hr.countries TO &username;

__________________________________________
if not working, we can use:

ACCEPT username VARCHAR2 PROMPT "User Name: "
ACCEPT password VARCHAR2 PROMPT "Password: "


CREATE USER &username IDENTIFIED BY &password
  DEFAULT TABLESPACE users
/

GRANT CONNECT, RESOURCE to &username;
GRANT CREATE VIEW to &username;