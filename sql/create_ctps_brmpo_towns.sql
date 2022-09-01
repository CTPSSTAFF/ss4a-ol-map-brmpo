-- Table: public.ctps_brmpo_towns

-- DROP TABLE IF EXISTS public.ctps_brmpo_towns;

CREATE TABLE IF NOT EXISTS public.ctps_brmpo_towns
(
    objectid integer NOT NULL,
    town_id smallint,
    town character varying(21) COLLATE pg_catalog."default",
    fips_stco integer,
    pop1980 integer,
    pop1990 integer,
    pop2000 integer,
    pop2010 integer,
    popch80_90 integer,
    popch90_00 integer,
    popch00_10 integer,
    fourcolor smallint,
    type character varying(2) COLLATE pg_catalog."default",
    gdb_geomattr_data bytea,
    shape geometry,
    CONSTRAINT enforce_srid_shape CHECK (st_srid(shape) = 26986)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.ctps_brmpo_towns
    OWNER to gisadmin;

REVOKE ALL ON TABLE public.ctps_brmpo_towns FROM gispublisher;

GRANT SELECT ON TABLE public.ctps_brmpo_towns TO gisadmin;

GRANT ALL ON TABLE public.ctps_brmpo_towns TO gisadmin;

GRANT SELECT ON TABLE public.ctps_brmpo_towns TO gispublisher;
-- Index: a1801_ix1

-- DROP INDEX IF EXISTS mpodata.a1801_ix1;

CREATE INDEX IF NOT EXISTS a1801_ix1
    ON public.ctps_brmpo_towns USING gist
    (shape)
    TABLESPACE pg_default;
-- Index: r2060_sde_rowid_uk

-- DROP INDEX IF EXISTS mpodata.r2060_sde_rowid_uk;

CREATE UNIQUE INDEX IF NOT EXISTS r2060_sde_rowid_uk
    ON public.ctps_brmpo_towns USING btree
    (objectid ASC NULLS LAST)
    WITH (FILLFACTOR=75)
    TABLESPACE pg_default;