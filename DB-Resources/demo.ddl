-- demo.demostats definition

-- Drop table

-- DROP TABLE demo.demostats;

CREATE TABLE demo.demostats (
	correlation_id varchar NOT NULL,
	"timestamp" information_schema."time_stamp" NOT NULL DEFAULT CURRENT_TIMESTAMP,
	retry_count int4 NOT NULL,
	mp_name varchar NULL,
	mp_isdisabled varchar NULL,
	is_success varchar NULL,
	CONSTRAINT demostats_pk PRIMARY KEY (correlation_id, retry_count)
);
CREATE INDEX demostats_correlation_id_idx ON demo.demostats USING btree (correlation_id);

