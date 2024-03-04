BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "bank" (
    "id" serial PRIMARY KEY,
    "bankName" text NOT NULL,
    "branchName" text NOT NULL,
    "ifscCode" text NOT NULL
);


--
-- MIGRATION VERSION FOR geoestate
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('geoestate', '20240303084013361', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240303084013361', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
