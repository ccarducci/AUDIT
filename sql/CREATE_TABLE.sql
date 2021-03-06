
CREATE TABLE AU_C_NONCONF (
	ID_C_CAMPAGNA bigint NOT NULL,
	ID_M_NONCONF bigint NULL,
	ID_FASE bigint NULL,
	DATA_INIZIO date NULL,
	DATA_FINE date NULL,
	CODICE varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PESO_NONCONF decimal(18,2) NULL,
	NUM int NULL,
	VALORE_INCC decimal(18,4) NULL,
	VALORE_PESATO decimal(18,4) NULL,
	VALORE_PESATO_BASE decimal(18,4) NULL
	CONSTRAINT PK__AU_C_NONCONF PRIMARY KEY (ID_C_CAMPAGNA)
) 



CREATE TABLE AU_C_VARCOMP (
	ID_C_CAMPAGNA bigint NOT NULL,
	ID_M_NONCONF bigint NULL,
	ID_M_VARCOMP bigint NULL,
	DATA_INIZIO date NULL,
	DATA_FINE date NULL,
	NUM int NULL,
	PERC_SU_PS decimal(18,6) NULL,
	PERC_PESATA decimal(18,4) NULL,
	CONSTRAINT PK__AU_C_VARCOMP PRIMARY KEY (ID_C_CAMPAGNA)
) 

CREATE TABLE AU_C_RISCHIO (
	ID_C_CAMPAGNA bigint NOT NULL,
	ID_M_RISCHIO bigint NULL,
	DATA_INIZIO date NULL,
	DATA_FINE date NULL,
	PESO_RISCHIO decimal(18,2) NULL,
	SU_TOT_PS_PERC decimal(18,2) NULL,
	NUM int NULL,
	SU_TOT_PERC decimal(18,2) NULL,
	SU_PS_PERC decimal(18,2) NULL,
	IMPORTO decimal(18,2) NULL,
	NUM_PS decimal(18,2) NULL,
	CONSTRAINT PK__AU_C_RISCHIO PRIMARY KEY (ID_C_CAMPAGNA)
) 

CREATE TABLE AU_C_RISESPR (
	ID_C_CAMPAGNA bigint NOT NULL,
	ID_S_RISCHIO bigint NULL,
	DATA_INIZIO date NULL,
	DATA_FINE date NULL,
	NUM int NULL,
	SU_TOT decimal(18,2) NULL,
	SU_PS decimal(18,2) NULL,
	IMPORTO decimal(18,2) NULL,
	ID_M_RISCHIO bigint NULL,
	ID_M_RISESPR bigint NULL,
	CONSTRAINT PK__AU_C_RISESPR PRIMARY KEY (ID_C_CAMPAGNA)
)





