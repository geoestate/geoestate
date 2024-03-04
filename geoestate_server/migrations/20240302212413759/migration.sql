BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dataset" (
    "id" serial PRIMARY KEY,
    "refNo" text NOT NULL,
    "datasetName" text NOT NULL,
    "bankName" text NOT NULL,
    "branchName" text NOT NULL,
    "partyName" text NOT NULL,
    "colonyName" text NOT NULL,
    "cityVillageName" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "marketRate" integer NOT NULL,
    "unit" text NOT NULL,
    "dateOfValuation" timestamp without time zone NOT NULL,
    "entryBy" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "remarks" text NOT NULL,
    "colorMark" text NOT NULL,
    "dateOfVisit" timestamp without time zone NOT NULL,
    "billId" text NOT NULL,
    "datasetId" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "marker" (
    "id" serial PRIMARY KEY,
    "markerId" text NOT NULL,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL,
    "marketRate" integer NOT NULL,
    "unit" text NOT NULL,
    "color" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR geoestate
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('geoestate', '20240302212413759', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240302212413759', "timestamp" = now();

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
