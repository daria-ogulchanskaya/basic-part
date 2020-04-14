SELECT [Name], [Address] FROM Plantation

SELECT Plantation.[Id], 
	   Plantation.[Name], 
	   Plantation.[Address], 
	   Flower.[Name] AS [FlowerName],
	   PlantationFlowers.[Amount] 
FROM Plantation, PlantationFlowers 
LEFT OUTER JOIN Flower ON Flower.[Id] = PlantationFlowers.[FlowerId]
WHERE  Plantation.[Id] = PlantationFlowers.[PlantationId]

SELECT Flower.[Id], Flower.[Name], COUNT(PlantationFlowers.[FlowerId]) AS [PlantationNumber]
FROM Flower 
LEFT OUTER JOIN PlantationFlowers ON Flower.[Id] = PlantationFlowers.[FlowerId]
GROUP BY Flower.[Id], Flower.[Name];

SELECT Flower.[Id], Flower.[Name], COUNT(PlantationFlowers.[FlowerId]) AS [PlantationNumber]
FROM Flower 
LEFT OUTER JOIN PlantationFlowers ON Flower.[Id] = PlantationFlowers.[FlowerId]
WHERE PlantationFlowers.[Amount] > 1000
GROUP BY Flower.[Id], Flower.[Name]

SELECT SupplyFlowers.[FlowerId], 
	   Flower.[Name],
	   SupplyFlowers.[Amount] 
FROM SupplyFlowers
LEFT OUTER JOIN Supply ON Supply.[Id] = SupplyFlowers.[SupplyId]
LEFT OUTER JOIN Flower ON Flower.[Id] = SupplyFlowers.[FlowerId]
WHERE [PlantationId] = 1

SELECT Supply.[Id], 
	   Plantation.[Name] AS [Plantation],
	   Warehouse.[Name] AS [Warehouse],
	   Supply.[ClosedDate] 
FROM Supply
LEFT OUTER JOIN Plantation ON Plantation.[Id] = Supply.[PlantationId]
LEFT OUTER JOIN Warehouse ON Warehouse.[Id] = Supply.[WarehouseId]
WHERE Supply.[ClosedDate] IS NOT NULL