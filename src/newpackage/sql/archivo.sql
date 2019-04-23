/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Author:  User
 * Created: 22-abr-2019
 */

CREATE TABLE PROVINCIA (
    ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    CODIGO CHAR(2),
    NOMBRE VARCHAR(20) NOT NULL,
    CONSTRAINT ID_PROVINCIA_PK PRIMARY KEY (ID)
);

CREATE TABLE PERSONA (
    ID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY, -- Id autonumérico
    NOMBRE VARCHAR(20) NOT NULL,
    APELLIDOS VARCHAR(40) NOT NULL,
    TELEFONO VARCHAR(15),
    EMAIL VARCHAR(30),
    PROVINCIA INTEGER NOT NULL,
    FECHA_NACIMIENTO DATE,
    NUM_HIJOS SMALLINT,
    ESTADO_CIVIL CHAR(1),
    SALARIO DECIMAL(7,2),
    JUBILADO BOOLEAN,
    FOTO VARCHAR(30),
    CONSTRAINT ID_PERSONA_PK PRIMARY KEY (ID),
    CONSTRAINT PROV_PERSONA_FK FOREIGN KEY (PROVINCIA) REFERENCES PROVINCIA (ID)
);