CREATE TABLE public.dim_tipo_procedimiento
(
	id serial PRIMARY KEY
	, tipo_procedimiento_id numeric
	, tipo_procedimiento_codigo character varying
	, tipo_procedimiento character varying
)WITH (
  OIDS = FALSE
)
;
ALTER TABLE public.dim_tipo_procedimiento
  OWNER TO postgres;

