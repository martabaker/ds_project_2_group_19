-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/lk0sCi
-- Original code was exported from QuickDBD and then updated to be more easily understood

-- Drop Tables if they exist
Drop table if exists category cascade;
Drop table if exists subcategory cascade;
Drop table if exists contacts cascade;
Drop table if exists campaign cascade;

-- Create tables
CREATE TABLE "category" (
    "category_id" CHAR(4)   NOT NULL primary key,
    "category" VARCHAR(13)   NOT NULL,
    "Last_Updated" Timestamp default localtimestamp  NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(8)   NOT NULL primary key,
    "subcategory" VARCHAR(25)   NOT NULL,
    "Last_Updated" Timestamp default localtimestamp  NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL primary key,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    "Last_Updated" Timestamp default localtimestamp   NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL primary key,
    "contact_id" INT   NOT NULL references contacts (contact_id),
    "company_name" VARCHAR(50)   NOT NULL,
    "description" VARCHAR(75)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(11)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(4)   NOT NULL,
    "currency" VARCHAR(4)   NOT NULL,
	"launched_date" timestamp NOT NULL,
	"end_date" timestamp NOT NULL,
    "category_id" CHAR(4)   NOT NULL references category (category_id),
    "subcategory_id" VARCHAR(8)   NOT NULL references subcategory (subcategory_id),
    "Last_Updated" Timestamp default localtimestamp  NOT NULL
);
