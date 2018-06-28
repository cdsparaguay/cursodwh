ALTER TABLE fact_obligacion
  ADD COLUMN anho_obligacion Numeric(4,0);
ALTER TABLE fact_obligacion
  ADD COLUMN anho_str Numeric(4,0);
ALTER TABLE fact_obligacion
  ADD COLUMN codigo_contratacion character varying;

ALTER TABLE dim_junk_obligacion
  DROP COLUMN codigo_contratacion;
