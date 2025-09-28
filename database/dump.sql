-- Adminer 5.4.0 PostgreSQL 15.14 dump

DROP TABLE IF EXISTS "roles";
CREATE TABLE "public"."roles" (
    "RoleId" integer NOT NULL,
    "Role" character varying(45) NOT NULL,
    CONSTRAINT "roles_pkey" PRIMARY KEY ("RoleId")
)
WITH (oids = false);

INSERT INTO "roles" ("RoleId", "Role") VALUES
(0,	'Quản trị viên');

DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS users_userid_seq;
CREATE SEQUENCE users_userid_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."users" (
    "UserId" integer DEFAULT nextval('users_userid_seq') NOT NULL,
    "Email" character varying(45) NOT NULL,
    "Password" character varying(45) NOT NULL,
    "RoleId" integer NOT NULL,
    CONSTRAINT "users_pkey" PRIMARY KEY ("UserId")
)
WITH (oids = false);

INSERT INTO "users" ("UserId", "Email", "Password", "RoleId") VALUES
(3,	'admin3@example.com',	'a',	0),
(2,	'admin2@example.com',	'a',	0),
(1,	'admin1@example.com',	'a',	0);

-- 2025-09-28 16:10:56 UTC