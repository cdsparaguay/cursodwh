CREATE TABLE public.dim_tiempo
(
	DateSid numeric PRIMARY KEY
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
