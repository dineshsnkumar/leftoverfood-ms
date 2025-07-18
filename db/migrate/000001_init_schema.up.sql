CREATE TABLE "users" (
  "user_id" integer PRIMARY KEY,
  "username" varchar,
  "first_name" varchar,
  "last_name" varchar,
  "street_name" varchar,
  "city" varchar,
  "country" varchar,
  "zip_code" varchar,
  "email_address" varchar,
  "currency" varchar,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz DEFAULT (now())
);

CREATE TABLE "business" (
  "business_id" integer PRIMARY KEY,
  "username" varchar,
  "name" varchar,
  "category" varchar,
  "street_name" varchar,
  "city" varchar,
  "country" varchar,
  "zip_code" varchar,
  "created_at" timestamptz DEFAULT (now()),
  "updated_at" timestamptz DEFAULT (now())
);

CREATE INDEX ON "users" ("user_id");

CREATE INDEX ON "business" ("business_id");

CREATE INDEX ON "business" ("category");
