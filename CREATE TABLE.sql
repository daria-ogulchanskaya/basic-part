CREATE TABLE Flower (
	[Id]   INT IDENTITY PRIMARY KEY,
	[Name] VARCHAR(255) NOT NULL,
);

CREATE TABLE Plantation (
	[Id]	  INT IDENTITY PRIMARY KEY,
	[Name]	  VARCHAR(255) NOT NULL,
	[Address] VARCHAR(255) NOT NULL
);

CREATE TABLE PlantationFlowers (
	[PlantationId] INT NOT NULL FOREIGN KEY REFERENCES Plantation(Id),
	[FlowerId]     INT NOT NULL FOREIGN KEY REFERENCES Flower(Id),
	[Amount]       INT NOT NULL CHECK([Amount] > 0)
);

CREATE TABLE Warehouse (
	[Id]      INT IDENTITY PRIMARY KEY,
	[Name]    VARCHAR(255) NOT NULL,
	[Address] VARCHAR(255) NOT NULL
);

CREATE TABLE WarehouseFlowers (
	[WarehouseId] INT NOT NULL FOREIGN KEY REFERENCES Warehouse(Id),
	[FlowerId]    INT NOT NULL FOREIGN KEY REFERENCES Flower(Id),
	[Amount]      INT NOT NULL CHECK([Amount] > 0)
);

CREATE TABLE Supply (
	[Id]	       INT IDENTITY PRIMARY KEY,
	[PlantationId] INT NOT NULL FOREIGN KEY REFERENCES Plantation(Id),
	[WarehouseId]  INT NOT NULL FOREIGN KEY REFERENCES Warehouse(Id),
	[ScheduleDate] DATE NOT NULL,
	[ClosedDate]   DATE,
	[Status]       VARCHAR(10) NOT NULL CHECK([Status] IN ('Scheduled', 'InProgress', 'Canceled', 'Closed'))
);

CREATE TABLE SupplyFlowers (
	[SupplyId] INT NOT NULL FOREIGN KEY REFERENCES Supply(Id),
	[FlowerId] INT NOT NULL FOREIGN KEY REFERENCES Flower(Id),
	[Amount]   INT NOT NULL CHECK([Amount] > 0)
);
