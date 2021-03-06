PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Students (
first_name VARCHAR(30),
last_name VARCHAR(30),
github VARCHAR(30)
);
INSERT INTO "Students" VALUES('Jane','Hacker','jhacks');
INSERT INTO "Students" VALUES('Sarah','Developer','sdevelops');
CREATE TABLE Projects (
id INTEGER PRIMARY KEY AUTOINCREMENT,
title VARCHAR(30),
description TEXT,
max_grade INTEGER);
INSERT INTO "Projects" VALUES(1,'Markov','Tweets generated from Markovchains',50);
INSERT INTO "Projects" VALUES(2,'Blockly','Programmatic Logic Puzzle Game',10);
INSERT INTO "Projects" VALUES(3,'Balloonicorn.io','Magical creature game',20);
INSERT INTO "Projects" VALUES(4,'Final Project','Blow our minds',220);
INSERT INTO "Projects" VALUES(5,'Harry Potter game','secrets.sh',42);
CREATE TABLE Grades (
student_github VARCHAR(30),
project_title VARCHAR(30),
grade INTEGER);
INSERT INTO "Grades" VALUES('jhacks','Markov',10);
INSERT INTO "Grades" VALUES('jhacks','Blockly',2);
INSERT INTO "Grades" VALUES('sdevelops','Markov',50);
INSERT INTO "Grades" VALUES('sdevelops','Blockly',100);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('Projects',5);
COMMIT;
