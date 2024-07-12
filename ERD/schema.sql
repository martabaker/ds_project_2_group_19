-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/lk0sCi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "crowdfunding" (
    "cf_id" int   NOT NULL,
    "contact_id" char(4)   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "blurb" varchar(100)   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" varchar(10)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" char(2)   NOT NULL,
    "currency" char(3)   NOT NULL,
    "launched_at" datetime   NOT NULL,
    "deadline" datetime   NOT NULL,
    "staff_pick" bool   NOT NULL,
    "spotlight" bool   NOT NULL,
    "category_n_subcategory" varchar(50)   NOT NULL,
    CONSTRAINT "pk_crowdfunding" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" char(4)   NOT NULL,
    "name" varchar(30)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "crowdfunding" ("contact_id");

