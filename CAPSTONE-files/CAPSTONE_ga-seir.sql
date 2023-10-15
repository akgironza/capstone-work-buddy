CREATE TABLE "user" (
  "id" serial PRIMARY KEY,
  "username" varchar,
  "password" chkpass,
  "weekly_tasks" serial
);

CREATE TABLE "weekly_tasks" (
  "id" serialpk,
  "todos" serial,
  "follow_ups" serial,
  "unplanned_asks" serial,
  "accomplishments" serial
);

CREATE TABLE "todos" (
  "id" serialpk,
  "date" date,
  "priority" int,
  "task" varchar,
  "progress_status" varchar,
  "value_add" varchar
);

CREATE TABLE "follow_ups" (
  "id" serialpk,
  "priority" int,
  "date" date,
  "task" varchar,
  "progress_status" varchar,
  "stakeholder" varchar
);

CREATE TABLE "unplanned_asks" (
  "id" serialpk,
  "priority" int,
  "date" date,
  "task" varchar,
  "progress_status" varchar,
  "value_add" varchar
);

CREATE TABLE "accomplishments" (
  "id" serialpk,
  "date" date,
  "task" varchar
);

ALTER TABLE "user" ADD FOREIGN KEY ("weekly_tasks") REFERENCES "weekly_tasks" ("id");

ALTER TABLE "weekly_tasks" ADD FOREIGN KEY ("todos") REFERENCES "todos" ("id");

ALTER TABLE "weekly_tasks" ADD FOREIGN KEY ("follow_ups") REFERENCES "follow_ups" ("id");

ALTER TABLE "weekly_tasks" ADD FOREIGN KEY ("unplanned_asks") REFERENCES "unplanned_asks" ("id");

ALTER TABLE "weekly_tasks" ADD FOREIGN KEY ("accomplishments") REFERENCES "accomplishments" ("id");
