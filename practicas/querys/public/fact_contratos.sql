CREATE TABLE public.fact_dncp_contrato
(
	id serial
	, dim_categoria_id integer
	, dim_tipo_procedimiento_id integer
	, dim_tiempo_fecha_firma_contrato integer
	, dim_tiempo_vigencia_contrato integer
	, monto_adjudicado numeric(15,0)
    , CONSTRAINT fk_contrato_categoria FOREIGN KEY (dim_categoria_id) REFERENCES dim_categoria (id) ON UPDATE NO ACTION ON DELETE NO ACTION
    , CONSTRAINT fk_contrato_tipo_procedimiento FOREIGN KEY (dim_tipo_procedimiento_id) REFERENCES dim_tipo_procedimiento (id) ON UPDATE NO ACTION ON DELETE NO ACTION
--    , CONSTRAINT fk_contratos_fecha_firma_contrato FOREIGN KEY (dim_tiempo_fecha_firma_contrato) REFERENCES dim_tiempo (datesid) ON UPDATE NO ACTION ON DELETE NO ACTION
--    , CONSTRAINT fk_contratos_vigencia_contrato FOREIGN KEY (dim_tiempo_vigencia_contrato) REFERENCES dim_tiempo (datesid) ON UPDATE NO ACTION ON DELETE NO ACTION

)WITH (
  OIDS = FALSE
)
;
ALTER TABLE public.fact_dncp_contrato
  OWNER TO postgres;
