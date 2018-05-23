-- Materialized View: v_contrato

-- DROP MATERIALIZED VIEW v_contrato;

CREATE MATERIALIZED VIEW v_contrato AS 
 SELECT max(fc.id) AS contrato_id,
    fc.codigo_contratacion
   FROM fact_contrato fc
  GROUP BY fc.codigo_contratacion
  ORDER BY max(fc.id)
WITH DATA;

ALTER TABLE v_contrato
  OWNER TO postgres;
