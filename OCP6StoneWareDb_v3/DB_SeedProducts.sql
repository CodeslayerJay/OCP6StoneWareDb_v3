--===================================
-- Sample Data for testing purposes
--===================================

USE [OCP6StoneWareDB_V3]
GO

--===================================
-- Seeds
--===================================
IF  EXISTS (
	SELECT id 
		FROM Issues
		WHERE id > 0
)
DELETE FROM Issues

INSERT INTO [Issue_Status](status) VALUES('Outstanding')
INSERT INTO [Issue_Status](status) VALUES('Resolved')

IF  EXISTS (
	SELECT version 
		FROM [Versions]
		WHERE version > 0
)
DELETE FROM [Versions]

-- SEED VERSION NUMBERS
INSERT INTO [Versions](version) VALUES(1.0)
INSERT INTO [Versions](version) VALUES(1.1)
INSERT INTO [Versions](version) VALUES(1.2)
INSERT INTO [Versions](version) VALUES(1.3)
INSERT INTO [Versions](version) VALUES(2.0)
INSERT INTO [Versions](version) VALUES(2.1)

IF  EXISTS (
	SELECT name 
		FROM [Operating_Systems]
		WHERE name = 'Linux'
)
DELETE FROM [Operating_Systems]

-- SEED OPERATING SYSTEMS
INSERT INTO [Operating_Systems](name) VALUES('Linux')
INSERT INTO [Operating_Systems](name) VALUES('MacOS')
INSERT INTO [Operating_Systems](name) VALUES('Windows')
INSERT INTO [Operating_Systems](name) VALUES('Android')
INSERT INTO [Operating_Systems](name) VALUES('iOS')
INSERT INTO [Operating_Systems](name) VALUES('Windows Mobile')

IF  EXISTS (
	SELECT name 
		FROM [Product_Detail]
		WHERE name = 'Day Trader Wannabe'
)
DELETE FROM [Product_Detail]


-- SEED PRODUCTS
INSERT INTO [Product_Detail](name) VALUES('Day Trader Wannabe')
INSERT INTO [Product_Detail](name) VALUES('Investment Overlord')
INSERT INTO [Product_Detail](name) VALUES('Workout Planner')
INSERT INTO [Product_Detail](name) VALUES('Social Anxiety Planner')

--==========================
--SEED PRODUCT DETAILS
--==========================
IF  EXISTS (
	SELECT id 
		FROM [Products]
		WHERE id > 0
)
DELETE FROM [Products]

--Day Trader Wannabe 1.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)

-- Day Trader Wannabe 1.1
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)

INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)

INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)

-- Day Trader Wannabe 1.2
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows Mobile')
)

-- Day Trader Wannabe 1.3
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.3),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.3),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.3),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.3),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

-- Investment Overlord 1.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

-- Investment Overlord 2.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)

-- Investment Overlord 2.1
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

-- Workout Planner 1.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)

-- Workout Planner 1.1
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows Mobile')
)

-- Workout Planner 2.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

-- Social Anxiety Planner 1.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows Mobile')
)

-- Social Anxiety Planner 1.1
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

