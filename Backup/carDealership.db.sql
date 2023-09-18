BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "companies" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Date"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "employees" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Role"	TEXT NOT NULL,
	"Company"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "compEmp" (
	"Name"	TEXT,
	"Company"	TEXT,
	"Date"	INT
);
INSERT INTO "companies" VALUES (1,'Google',1998);
INSERT INTO "companies" VALUES (2,'Facebook',2004);
INSERT INTO "companies" VALUES (3,'Instagram',2010);
INSERT INTO "companies" VALUES (4,'Snapchat',2011);
INSERT INTO "employees" VALUES (1,'Marc','Software Engineer','Google');
INSERT INTO "employees" VALUES (2,'Maria','Software Engineer','Google');
INSERT INTO "employees" VALUES (3,'Alaa','Team Leader','Facebook');
INSERT INTO "employees" VALUES (4,'Hala','Graphic Designer','Snapchat');
INSERT INTO "compEmp" VALUES ('Marc','Google',1998);
INSERT INTO "compEmp" VALUES ('Maria','Google',1998);
INSERT INTO "compEmp" VALUES ('Alaa','Facebook',2004);
INSERT INTO "compEmp" VALUES ('Hala','Snapchat',2011);
COMMIT;
