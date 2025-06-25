CREATE DATABASE Electricity_Billing_System;
CREATE TABLE Login (
    UserName VARCHAR(50) PRIMARY KEY,
    Password VARCHAR(100) NOT NULL
);

CREATE TABLE Bill (
    MeterNumber VARCHAR(50) PRIMARY KEY,
    Units INT NOT NULL,
    Month DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Emp (
    Name VARCHAR(100) NOT NULL,
    MeterNumber VARCHAR(50) PRIMARY KEY,
    Address VARCHAR(255) NOT NULL,
    State VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15) NOT NULL
);

CREATE TABLE Tax (
    MeterLocation VARCHAR(100) NOT NULL,
    MeterType VARCHAR(50) NOT NULL,
    PhaseCode VARCHAR(20) NOT NULL,
    BillType VARCHAR(50) NOT NULL,
    Days INT NOT NULL,
    MeterRent DECIMAL(10, 2) NOT NULL,
    MCB_Rent DECIMAL(10, 2) NOT NULL,
    ServiceRent DECIMAL(10, 2) NOT NULL,
    GST DECIMAL(5, 2) NOT NULL,
    PRIMARY KEY (MeterLocation, MeterType, PhaseCode, BillType)
);
