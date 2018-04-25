CREATE TABLE dim_clasificador_entidades (
id bigserial,
anho numeric(4,0),
nivel_codigo numeric(5,0),
nivel_descripcion character varying,
entidad_codigo numeric(5,0),
entidad_descripcion character varying,
unidad_jerarquica_codigo numeric(5,0),
unidad_jerarquica_descripcion character varying,
uaf_codigo numeric(5,0),
uaf_descripcion character varying,
unidad_responsable_codigo numeric(5,0),
unidad_responsable_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_entidades PRIMARY KEY (id) );

CREATE TABLE dim_clasificador_programa (
id bigserial,
anho numeric(4,0),
tipo_presupuesto_codigo numeric(5,0),
tipo_presupuesto_descripcion character varying,
programa_codigo numeric(5,0),
programa_descripcion character varying,
subprograma_codigo numeric(5,0),
subprograma_descripcion character varying,
proyecto_codigo numeric(5,0),
proyecto_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_programa PRIMARY KEY (id) );

CREATE TABLE dim_clasificador_objeto_gasto (
id bigserial,
anho numeric(4,0),
grupo_codigo numeric(5,0),
grupo_descripcion character varying,
subgrupo_codigo numeric(5,0),
subgrupo_descripcion character varying,
objeto_gasto_codigo numeric(5,0),
objeto_gasto_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_objeto_gasto PRIMARY KEY (id) );

CREATE TABLE dim_clasificador_control_financiero (
id bigserial,
anho numeric(4,0),
control_financiero_codigo numeric(5,0),
control_financiero_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_control_financiero PRIMARY KEY (id) );

CREATE TABLE dim_clasificador_funcion (
id bigserial,
anho numeric(4,0),
finalidad_codigo numeric(5,0),
finalidad_descripcion character varying,
funcion_codigo numeric(5,0),
funcion_descripcion character varying,
subfuncion_codigo numeric(5,0),
subfuncion_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_funcion PRIMARY KEY (id) );

CREATE TABLE dim_clasificador_fuente_financiamiento (
id bigserial,
anho numeric(4,0),
fuente_financiamiento_codigo numeric(5,0),
fuente_financiamiento_descripcion character varying,
organismo_financiador_codigo numeric(5,0),
organismo_financiador_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_fuente_financiamiento PRIMARY KEY (id) );

CREATE TABLE dim_clasificador_geografico (
id bigserial,
pais_codigo numeric(5,0),
pais_simbolo character varying,
pais_descripcion character varying,
departamento_codigo numeric(5,0),
departamento_simbolo character varying,
departamento_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_clasificador_geografico PRIMARY KEY (id) );

CREATE TABLE dim_proveedor (
id bigserial,
proveedor_id numeric(5,0),
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

CREATE TABLE dim_cuentas_bancarias (
id bigserial,
banco_codigo character varying,
banco_descripcion character varying,
banco_abreviatura character varying,
numero_cuenta character varying,
moneda_codigo character varying,
moneda_simbolo character varying,
moneda_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_cuentas_bancarias PRIMARY KEY (id) );

CREATE TABLE dim_categoria_dncp (
id bigserial,
categoria_codigo numeric(5,0),
categoria_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_categoria_dncp PRIMARY KEY (id) );

CREATE TABLE dim_tipo_procedimiento_dncp (
id bigserial,
tipo_procedimiento_codigo numeric(5,0),
tipo_procedimiento_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_tipo_procedimiento_dncp PRIMARY KEY (id) );

CREATE TABLE dim_junk_obligacion (
id bigserial,
concepto_obligacion_codigo numeric(5,0),
concepto_obligacion_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_junk_obligacion PRIMARY KEY (id) );

CREATE TABLE dim_junk_str (
id bigserial,
situacion_str_codigo numeric(5,0),
situacion_str_descripcion character varying,
tipo_str_codigo numeric(5,0),
tipo_str_descripcion character varying,
descripcion_str character varying,
detalle_str character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_junk_str PRIMARY KEY (id) );

CREATE TABLE dim_junk_ot (
id bigserial,
concepto_codigo numeric(5,0),
concepto_descripcion character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_junk_ot PRIMARY KEY (id) );

CREATE TABLE dim_junk_contrato (
id bigserial,
nombre_licitacion character varying,
convocante character varying,
estado character varying,
moneda_codigo numeric(5,0),
moneda_simbolo character varying,
moneda_descripcion character varying,
vigencia_contrato character varying,
fecha_vigencia timestamp without time zone,
fecha_fin_vigencia timestamp without time zone,
actual numeric(1,0),
checksum character varying,
CONSTRAINT pk_dim_junk_contrato PRIMARY KEY (id) );


