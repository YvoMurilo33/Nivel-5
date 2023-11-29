-- Obsv: Utilizar dbo. caso a tabela já exista
CREATE TABLE Pessoa (
    ID INT PRIMARY KEY,
    Nome VARCHAR(266),
    Logradouro VARCHAR(266),
    Cidade VARCHAR(266),
    Estado Char(3),
    Telefone VARCHAR(266),
    Email VARCHAR(266),
);

Create TABLE Usuario (
    IDUsuario INT PRIMARY KEY,
    Login VARCHAR(266),
    Senha VARCHAR(266)
);

CREATE TABLE PessoaFisica (
    IDPessoa INT PRIMARY KEY,
    CPF VARCHAR(266),
    FOREIGN KEY (IDPESSOA) REFERENCES Pessoa(ID)
);

CREATE TABLE PessoaJuridica (
	IDPessoa INT PRIMARY KEY,
	CNPJ VARCHAR(266),
	FOREIGN KEY (IDPESSOA) REFERENCES PESSOA(ID)
);

Create TABLE Produto (
    IDProduto INT PRIMARY KEY,
    Nome VARCHAR(266),
    Quantidade INT,
    PrecoVenda VARCHAR(266)
);

CREATE TABLE Movimento (
    IDMovimento INT PRIMARY KEY,
    IDUsuario INT,
    IDPessoa INT,
    IDProduto INT, 
    Quantidade VARCHAR(266),
    Tipo CHAR(3),
    ValorUnitario VARCHAR(266),
    FOREIGN KEY (IDUsuario) REFERENCES Usuario(IDUsuario),
    FOREIGN KEY (IDPessoa) REFERENCES PESSOA(ID),
    FOREIGN KEY (IDProduto) REFERENCES Produto(IDProduto)
);