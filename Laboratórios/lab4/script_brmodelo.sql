CREATE TABLE Proprietário 
( 
 CPF INT PRIMARY KEY,  
 Nome INT,  
 Endereço INT,  
 Data de nascimento INT,  
 Sexo INT,  
 Idade INT,  
); 

CREATE TABLE Veículo 
( 
 Placa INT PRIMARY KEY,  
 Chassi INT,  
 Ano de fabricação INT,  
 Cor INT,  
 idProprietário INT,  
 idModelo INT,  
 idCategoria INT,  
); 

CREATE TABLE Modelo 
( 
 id_Modelo INT PRIMARY KEY,  
 Descrição INT,  
); 

CREATE TABLE Categoria 
( 
 id_Categoria INT PRIMARY KEY,  
 Descrição INT,  
); 

CREATE TABLE Tipo de Infração 
( 
 Valor INT,  
 id_Tipo INT PRIMARY KEY,  
 Descrição INT,  
); 

CREATE TABLE Infração 
( 
 Velocidade aferida INT,  
 Data/Hora INT PRIMARY KEY,  
 idAgente de trânsito INT,  
 idLocal INT,  
 idVeículo INT PRIMARY KEY,  
 idTipo de Infração INT PRIMARY KEY,  
); 

CREATE TABLE Local 
( 
 id_Local INT PRIMARY KEY,  
 Posição geográfica INT,  
 Velocidade permitida INT,  
); 

CREATE TABLE Agente de trânsito 
( 
 Nome INT,  
 Matrícula INT PRIMARY KEY,  
 Data de contratação INT,  
 Tempo de serviço INT,  
); 

ALTER TABLE Veículo ADD FOREIGN KEY(idProprietário) REFERENCES Proprietário (idProprietário)
ALTER TABLE Veículo ADD FOREIGN KEY(idModelo) REFERENCES Modelo (idModelo)
ALTER TABLE Veículo ADD FOREIGN KEY(idCategoria) REFERENCES Categoria (idCategoria)
ALTER TABLE Infração ADD FOREIGN KEY(idAgente de trânsito) REFERENCES Proprietário (idAgente de trânsito)
ALTER TABLE Infração ADD FOREIGN KEY(idLocal) REFERENCES Local (idLocal)
ALTER TABLE Infração ADD FOREIGN KEY(idVeículo) REFERENCES Proprietário (idVeículo)
ALTER TABLE Infração ADD FOREIGN KEY(idTipo de Infração) REFERENCES Proprietário (idTipo de Infração)
