/*
https://data.humdata.org/dataset/nepal-municipalities
*/

SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "geography"."admin0" (gid serial,
"admin0name" varchar(50),
"admin0pcod" varchar(50),
"admin0refn" varchar(50),
"admin0altn" varchar(50),
"admin0al_1" varchar(50),
"date" date,
"validon" date,
"validto" date,
"shape_star" numeric,
"shape_stle" numeric,
"shape_leng" numeric,
"shape_area" numeric);
ALTER TABLE "geography"."admin0" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('geography','admin0','geom','4326','MULTIPOLYGON',2);
CREATE INDEX "admin0_geom_gist" ON "geography"."admin0" USING GIST ("geom");
COMMIT;