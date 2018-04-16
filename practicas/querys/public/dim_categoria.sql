CREATE TABLE public.dim_categoria
(
	id serial PRIMARY KEY
	, categoria_id numeric
	, categoria_codigo numeric
	, categoria character varying
)WITH (
  OIDS = FALSE
)
;
ALTER TABLE public.dim_categoria
  OWNER TO postgres;
