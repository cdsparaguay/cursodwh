CREATE TABLE public.dim_tiempo
(
	id numeric PRIMARY KEY
	, DayInDimension character varying
	, DimensionDate character varying
	, Year numeric
	, Quarter numeric
	, Month numeric
	, Day numeric
	, Weekday numeric
	, MonthName character varying
	, MonthAbbreviation character varying
	, DayName character varying
	, DayAbbreviation character varying
	, YearInDimension numeric
	, QuartersInDimension numeric
	, MonthInDimension numeric
	, DayInYear numeric
);

INSERT INTO dim_tiempo VALUES (0, 'No Asignado', 'No Asignado', 0, 0, 0, 0, 0, 'No Asignado', 'No Asignado', 'No Asignado', 'No Asignado', 0, 0, 0, 0);

CREATE TABLE dim_clasificador_entidad (
id bigserial,
anho numeric(4,0),
nivel_codigo Numeric(5,0),
nivel_descripcion character varying,
entidad_codigo Numeric(5,0),
entidad_descripcion character varying,
unidad_jerarquica_codigo Numeric(7,0),
unidad_jerarquica_descripcion character varying,
uaf_codigo Numeric(7,0),
uaf_descripcion character varying,
unidad_responsable_codigo Numeric(5,0),
unidad_responsable_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_entidad PRIMARY KEY (id) );

INSERT INTO dim_clasificador_entidad VALUES (0,0,0,'No Asignado',0,'No Asignado',0,'No Asignado',0,'No Asignado',0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_clasificador_programa (
id bigserial,
anho numeric(4,0),
tipo_presupuesto_codigo Numeric(5,0),
tipo_presupuesto_descripcion character varying,
programa_codigo Numeric(5,0),
programa_descripcion character varying,
subprograma_codigo Numeric(5,0),
subprograma_descripcion character varying,
proyecto_codigo Numeric(5,0),
proyecto_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_programa PRIMARY KEY (id) );

INSERT INTO dim_clasificador_programa VALUES (0,0,0,'No Asignado',0,'No Asignado',0,'No Asignado',0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_clasificador_objeto_gasto (
id bigserial,
anho numeric(4,0),
grupo_codigo Numeric(5,0),
grupo_descripcion character varying,
subgrupo_codigo Numeric(5,0),
subgrupo_descripcion character varying,
objeto_gasto_codigo Numeric(5,0),
objeto_gasto_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_objeto_gasto PRIMARY KEY (id) );

INSERT INTO dim_clasificador_objeto_gasto VALUES(0,0,0,'No Asignado',0,'No Asignado',0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_clasificador_control_financiero (
id bigserial,
anho numeric(4,0),
control_financiero_codigo Numeric(5,0),
control_financiero_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_control_financiero PRIMARY KEY (id) );

INSERT INTO dim_clasificador_control_financiero VALUES(0,0,0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_clasificador_funcion (
id bigserial,
anho numeric(4,0),
finalidad_codigo Numeric(5,0),
finalidad_descripcion character varying,
funcion_codigo Numeric(5,0),
funcion_descripcion character varying,
subfuncion_codigo Numeric(5,0),
subfuncion_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_funcion PRIMARY KEY (id) );

INSERT INTO dim_clasificador_funcion VALUES(0,0,0,'No Asignado',0,'No Asignado',0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_clasificador_fuente_financiamiento (
id bigserial,
anho numeric(4,0),
fuente_financiamiento_codigo Numeric(5,0),
fuente_financiamiento_descripcion character varying,
organismo_financiador_codigo Numeric(5,0),
organismo_financiador_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_fuente_financiamiento PRIMARY KEY (id) );

INSERT INTO dim_clasificador_fuente_financiamiento VALUES (0,0,0,'No Asignado',0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_clasificador_geografico (
id bigserial,
pais_codigo Numeric(5,0),
pais_simbolo character varying,
pais_descripcion character varying,
departamento_codigo Numeric(5,0),
departamento_simbolo character varying,
departamento_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_geografico PRIMARY KEY (id) );

INSERT INTO dim_clasificador_geografico VALUES (0,0,'No Asignado','No Asignado',0,'No Asignado','No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_proveedor (
id bigserial,
proveedor_id Numeric(5,0),
razon_social character varying,
ruc character varying,
nombre_fantasia character varying,
direccion character varying,
telefono character varying,
email character varying,
representante_legal character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_proveedor PRIMARY KEY (id) );

INSERT INTO dim_proveedor VALUES (0,0,'No Asignado','No Asignado','No Asignado','No Asignado','No Asignado','No Asignado','No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_cuenta_bancaria (
id bigserial,
banco_codigo character varying,
banco_descripcion character varying,
banco_simbolo character varying,
numero_cuenta character varying,
moneda_codigo character varying,
moneda_simbolo character varying,
moneda_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_cuenta_bancaria PRIMARY KEY (id) );

INSERT INTO dim_cuenta_bancaria VALUES (0,'No Asignado','No Asignado','No Asignado','No Asignado','No Asignado','No Asignado','No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_categoria_dncp (
id bigserial,
categoria_codigo Numeric(5,0),
categoria_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_categoria_dncp PRIMARY KEY (id) );

INSERT INTO dim_categoria_dncp VALUES (0,0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_tipo_procedimiento_dncp (
id bigserial,
tipo_procedimiento_codigo Numeric(5,0),
tipo_procedimiento_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_tipo_procedimiento_dncp PRIMARY KEY (id) );

INSERT INTO dim_tipo_procedimiento_dncp VALUES (0,0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_junk_obligacion (
id bigserial,
concepto_obligacion_codigo Numeric(5,0),
concepto_obligacion_descripcion character varying,
moneda_codigo Numeric(5,0),
moneda_descripcion character varying,
tipo_cambio Numeric(17,2),
codigo_contratacion character varying,
fuente_financiamiento_codigo character varying,
fuente_financiamiento_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_junk_obligacion PRIMARY KEY (id) );

INSERT INTO dim_junk_obligacion VALUES (0,0,'No Asignado',0,'No Asignado',0,'No Asignado','No Asignado','No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_junk_str (
id bigserial,
situacion_str_codigo Numeric(5,0),
situacion_str_descripcion character varying,
tipo_str_codigo Numeric(5,0),
tipo_str_descripcion character varying,
descripcion_str character varying,
detalle_str character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_junk_str PRIMARY KEY (id) );

INSERT INTO dim_junk_str VALUES (0,0,'No Asignado',0,'No Asignado','No Asignado','No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_junk_ot (
id bigserial,
concepto_codigo Numeric(5,0),
concepto_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_junk_ot PRIMARY KEY (id) );

INSERT INTO dim_junk_ot VALUES (0,0,'No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE dim_junk_contrato (
id bigserial,
nombre_licitacion character varying,
convocante character varying,
estado character varying,
moneda_codigo Numeric(5,0),
moneda_simbolo character varying,
moneda_descripcion character varying,
vigencia_contrato character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_junk_contrato PRIMARY KEY (id) );

INSERT INTO dim_junk_contrato VALUES (0,'No Asignado','No Asignado','No Asignado',0,'No Asignado','No Asignado','No Asignado','1950-01-01','1950-01-01',0,'No Asignado');

CREATE TABLE fact_obligacion (
id bigserial,
fecha_elaboracion bigint,
fecha_aprobacion bigint,
proveedor bigint,
fecha_factura bigint,
clasificador_entidad bigint,
clasificador_programa bigint,
clasificador_objeto_gasto bigint,
clasificador_fuente_financiamiento bigint,
clasificador_geografico bigint,
clasificador_control_financiero bigint,
junk_obligacion bigint,
numero_obligacion Numeric(7,0),
numero_str Numeric(7,0),
monto_obligado Numeric(17,2),
monto_deduccion_iva Numeric(17,2),
monto_deduccion_renta Numeric(17,2),
monto_deduccion_dncp Numeric(17,2),
monto_deduccion_incumplimiento_contrato Numeric(17,2),
monto_deduccion_otras Numeric(17,2),
CONSTRAINT fk_fecha_elaboracion FOREIGN KEY (fecha_elaboracion) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_fecha_aprobacion FOREIGN KEY (fecha_aprobacion) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_proveedor FOREIGN KEY (proveedor) REFERENCES dim_proveedor(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_fecha_factura FOREIGN KEY (fecha_factura) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_entidad FOREIGN KEY (clasificador_entidad) REFERENCES dim_clasificador_entidad(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_programa FOREIGN KEY (clasificador_programa) REFERENCES dim_clasificador_programa(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_objeto_gasto FOREIGN KEY (clasificador_objeto_gasto) REFERENCES dim_clasificador_objeto_gasto(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_fuente_financiamiento FOREIGN KEY (clasificador_fuente_financiamiento) REFERENCES dim_clasificador_fuente_financiamiento(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_geografico FOREIGN KEY (clasificador_geografico) REFERENCES dim_clasificador_geografico(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_control_financiero FOREIGN KEY (clasificador_control_financiero) REFERENCES dim_clasificador_control_financiero(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_junk_obligacion FOREIGN KEY (junk_obligacion) REFERENCES dim_junk_obligacion(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT pk_fact_obligacion PRIMARY KEY (id) );

CREATE TABLE fact_str (
id bigserial,
clasificador_entidad bigint,
clasificador_programa bigint,
clasificador_objeto_gasto bigint,
clasificador_fuente_financiamiento bigint,
clasificador_geografico bigint,
clasificador_control_financiero bigint,
fecha_ingreso bigint,
fecha_aprobacion bigint,
fecha_recepcion_tesoro bigint,
proveedor bigint,
junk_str bigint,
cuenta_origen bigint,
numero_str Numeric(7,0),
monto_solicitado Numeric(17,2),
monto_deducciones Numeric(17,2),
CONSTRAINT fk_clasificador_entidad FOREIGN KEY (clasificador_entidad) REFERENCES dim_clasificador_entidad(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_programa FOREIGN KEY (clasificador_programa) REFERENCES dim_clasificador_programa(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_objeto_gasto FOREIGN KEY (clasificador_objeto_gasto) REFERENCES dim_clasificador_objeto_gasto(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_fuente_financiamiento FOREIGN KEY (clasificador_fuente_financiamiento) REFERENCES dim_clasificador_fuente_financiamiento(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_geografico FOREIGN KEY (clasificador_geografico) REFERENCES dim_clasificador_geografico(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_control_financiero FOREIGN KEY (clasificador_control_financiero) REFERENCES dim_clasificador_control_financiero(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_fecha_ingreso FOREIGN KEY (fecha_ingreso) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_fecha_aprobacion FOREIGN KEY (fecha_aprobacion) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_fecha_recepcion_tesoro FOREIGN KEY (fecha_recepcion_tesoro) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_proveedor FOREIGN KEY (proveedor) REFERENCES dim_proveedor(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_junk_str FOREIGN KEY (junk_str) REFERENCES dim_junk_str(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_cuenta_origen FOREIGN KEY (cuenta_origen) REFERENCES dim_cuenta_bancaria(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT pk_fact_str PRIMARY KEY (id) );

CREATE TABLE fact_ot (
id bigserial,
clasificador_entidad bigint,
clasificador_programa bigint,
clasificador_objeto_gasto bigint,
clasificador_fuente_financiamiento bigint,
clasificador_geografico bigint,
clasificador_control_financiero bigint,
clasificador_entidad_destino bigint,
fecha_generacion bigint,
fecha_deposito bigint,
proveedor bigint,
cuenta_origen bigint,
cuenta_destino bigint,
junk_ot bigint,
numero_ot Numeric(7,0),
numero_str Numeric(7,0),
cotizacion Numeric(17,2),
monto_ot Numeric(17,2),
monto_ot_gs Numeric(17,2),
monto_ot_destino Numeric(17,2),
CONSTRAINT fk_clasificador_entidad FOREIGN KEY (clasificador_entidad) REFERENCES dim_clasificador_entidad(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_programa FOREIGN KEY (clasificador_programa) REFERENCES dim_clasificador_programa(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_objeto_gasto FOREIGN KEY (clasificador_objeto_gasto) REFERENCES dim_clasificador_objeto_gasto(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_fuente_financiamiento FOREIGN KEY (clasificador_fuente_financiamiento) REFERENCES dim_clasificador_fuente_financiamiento(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_geografico FOREIGN KEY (clasificador_geografico) REFERENCES dim_clasificador_geografico(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_control_financiero FOREIGN KEY (clasificador_control_financiero) REFERENCES dim_clasificador_control_financiero(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_clasificador_entidad_destino FOREIGN KEY (clasificador_entidad_destino) REFERENCES dim_clasificador_entidad(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_fecha_generacion FOREIGN KEY (fecha_generacion) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_fecha_deposito FOREIGN KEY (fecha_deposito) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_proveedor FOREIGN KEY (proveedor) REFERENCES dim_proveedor(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_cuenta_origen FOREIGN KEY (cuenta_origen) REFERENCES dim_cuenta_bancaria(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_cuenta_destino FOREIGN KEY (cuenta_destino) REFERENCES dim_cuenta_bancaria(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_junk_ot FOREIGN KEY (junk_ot) REFERENCES dim_junk_ot(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT pk_fact_ot PRIMARY KEY (id) );

CREATE TABLE fact_contrato (
id bigserial,
categoria_dncp bigint,
tipo_procedimiento_dncp bigint,
proveedor bigint,
fecha_firma_contrato bigint,
junk_contrato bigint,
id_llamado Numeric(7,0),
codigo_contratacion character varying,
monto_adjudicado Numeric(17,2),
CONSTRAINT fk_categoria_dncp FOREIGN KEY (categoria_dncp) REFERENCES dim_categoria_dncp(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_tipo_procedimiento_dncp FOREIGN KEY (tipo_procedimiento_dncp) REFERENCES dim_tipo_procedimiento_dncp(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_proveedor FOREIGN KEY (proveedor) REFERENCES dim_proveedor(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_fecha_firma_contrato FOREIGN KEY (fecha_firma_contrato) REFERENCES dim_tiempo(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT fk_junk_contrato FOREIGN KEY (junk_contrato) REFERENCES dim_junk_contrato(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
CONSTRAINT pk_fact_contrato PRIMARY KEY (id) );

CREATE TABLE br_obligacion_contrato (
id bigserial,
obligacion bigint,
contrato bigint,
CONSTRAINT pk_br_obligacion_contrato PRIMARY KEY (id) );
