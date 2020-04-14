INSERT INTO [Supply] ([PlantationId], [WarehouseId], [ScheduleDate], [ClosedDate], [Status])
VALUES 
	(4, 1, '2020-07-11', '2020-07-30', 'Closed'), 
	(5,	2, '2020-08-15', '2020-08-31', 'Closed'),
	(3, 3, '2020-04-23', '2020-05-6',  'Closed'),
	(3, 3, '2020-03-16', '2020-04-16', 'Closed'),
	(1, 2, '2020-01-20', NULL,		   'InProgress'), 
	(2,	3, '2020-02-5',  NULL,		   'InProgress'),
	(3, 3, '2020-03-16', NULL,		   'InProgress')

INSERT INTO [SupplyFlowers] 
		   ([SupplyId]
		   ,[FlowerId]
		   ,[Amount])
VALUES
	(2, 3, 4890),
	(1, 5, 1500),
	(2, 6, 2666),
	(3, 7, 7000),
	(1, 2, 596),
	(1, 3, 3999),
	(2, 1, 555)