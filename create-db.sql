CREATE TABLE "users" (
	"id"	INTEGER,
	"first_name"	TEXT,
	"last_name"	TEXT,
	"email"	TEXT UNIQUE,
    "created_at" DATETIME DEFAULT CURRENT_TIMESTAMP,
	"pass_hash"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "consultants" (
	"id"	INTEGER,
	"first_name"	TEXT,
	"last_name"	TEXT,
	"email"	TEXT,
	"company_name"	TEXT,
	"profile_photo"	BLOB,
	"user_id"	INTEGER,

	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "applications" (
	"id"	INTEGER,
	"application_type_id"	INTEGER,
	"creator_id"	DATETIME,
	"assigned_consultant_id"	INTEGER,
	"created_at"	DATETIME DEFAULT CURRENT_TIMESTAMP,
	"updated_at"	DATETIME DEFAULT CURRENT_TIMESTAMP,
    "status" TEXT DEFAULT 'Submitted',
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "application_types" (
	"id"	INTEGER,
	"title"	TEXT,
	"created_at"	DATETIME DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "application_responses" (
	"id"	INTEGER,
	"created_at"	DATETIME DEFAULT CURRENT_TIMESTAMP,
	"updated_at"	DATETIME DEFAULT CURRENT_TIMESTAMP,
	"question_id"	INTEGER,
	"application_id"	INTEGER,
	"response"	TEXT,
	"attachments"	BLOB,
	PRIMARY KEY("id" AUTOINCREMENT)
);



CREATE TABLE "questions" (
	"id"	INTEGER,
    "application_type_id"	INTEGER,
	"title"	TEXT,
	"created_at" DATETIME DEFAULT CURRENT_TIMESTAMP, 
	"required" INTEGER,
    PRIMARY KEY("id" AUTOINCREMENT)
);

/* Run triggers separately after database is created*/

CREATE TRIGGER updated_applications
AFTER UPDATE ON applications FOR EACH ROW BEGIN UPDATE applications 
SET updated_at = CURRENT_TIMESTAMP WHERE id = OLD.id; 
END;

CREATE TRIGGER updated_responses
AFTER UPDATE ON application_responses
FOR EACH ROW BEGIN UPDATE application_responses 
SET updated_at = CURRENT_TIMESTAMP WHERE id = OLD.id;
END;




