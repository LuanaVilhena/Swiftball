CREATE DATABASE swiftball;

	CREATE TABLE usuario (
		id SERIAL PRIMARY KEY,
		nome VARCHAR(255) NOT NULL,
		telefone CHAR(11) NOT NULL,
		email VARCHAR(255) NOT NULL UNIQUE,
		dados_bancarios VARCHAR(50) NOT NULL 
	);

	CREATE TABLE figurino (
		FigurinosID INT PRIMARY KEY,
		era TEXT,
		estilo TEXT
	);

	CREATE TABLE aplauso (
		AplausosID INT PRIMARY KEY,
		duracao VARCHAR NOT NULL
	);

	CREATE TABLE instrumento (
		InstrumentosID INT PRIMARY KEY,
		era TEXT,
		cor TEXT
	);

	CREATE TABLE surpresa (
		SurpresasID INT PRIMARY KEY,
		instrumento TEXT,
		musica TEXT
	);

	CREATE TABLE sessao (
		id SERIAL PRIMARY KEY,
		FigurinoID INT,
		AplausoID INT,
		InstrumentoID INT,
		SurpresaID INT,
		FOREIGN KEY (FigurinoID) REFERENCES figurino(FigurinosID),
		FOREIGN KEY (AplausoID) REFERENCES aplauso(AplausosID),
		FOREIGN KEY (InstrumentoID) REFERENCES instrumento(InstrumentosID),
		FOREIGN KEY (SurpresaID) REFERENCES surpresa(SurpresasID)
	);
