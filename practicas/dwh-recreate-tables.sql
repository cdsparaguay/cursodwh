DROP TABLE fact_contrato;
DROP TABLE dim_categoria_dncp;
DROP TABLE dim_tipo_procedimiento_dncp; 

CREATE TABLE dim_categoria_dncp (
id bigserial,
categoria_id Numeric(5,0),
categoria_codigo Numeric(5,0),
categoria_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_categoria_dncp PRIMARY KEY (id) );

INSERT INTO dim_categoria_dncp VALUES (0,0,0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_tipo_procedimiento_dncp (
id bigserial,
tipo_procedimiento_codigo Numeric(5,0),
tipo_procedimiento_abreviatura character varying,
tipo_procedimiento_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_tipo_procedimiento_dncp PRIMARY KEY (id) );

INSERT INTO dim_tipo_procedimiento_dncp VALUES (0,0,'No Asignado','No Asignado','1950-01-01','1950-01-01',0,'No Asignado');


-- Table: fact_contrato

-- DROP TABLE fact_contrato;

CREATE TABLE fact_contrato
(
  id bigserial NOT NULL,
  categoria_dncp bigint,
  tipo_procedimiento_dncp bigint,
  proveedor bigint,
  fecha_firma_contrato bigint,
  junk_contrato bigint,
  id_llamado numeric(7,0),
  codigo_contratacion character varying,
  monto_adjudicado numeric(17,2),
  CONSTRAINT pk_fact_contrato PRIMARY KEY (id),
  CONSTRAINT fk_categoria_dncp FOREIGN KEY (categoria_dncp)
      REFERENCES dim_categoria_dncp (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_fecha_firma_contrato FOREIGN KEY (fecha_firma_contrato)
      REFERENCES dim_tiempo (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_junk_contrato FOREIGN KEY (junk_contrato)
      REFERENCES dim_junk_contrato (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_proveedor FOREIGN KEY (proveedor)
      REFERENCES dim_proveedor (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_tipo_procedimiento_dncp FOREIGN KEY (tipo_procedimiento_dncp)
      REFERENCES dim_tipo_procedimiento_dncp (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE fact_contrato
  OWNER TO postgres;


ALTER TABLE dim_junk_contrato
  DROP COLUMN moneda_codigo;


CREATE TABLE br_obligacion_str (
id bigserial,
obligacion bigint,
str bigint,
CONSTRAINT pk_br_obligacion_contrato PRIMARY KEY (id) );
