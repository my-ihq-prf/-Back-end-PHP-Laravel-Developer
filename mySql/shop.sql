-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- DROP DATABASE "axisbits" --------------------------------
DROP DATABASE IF EXISTS `axisbits`;
-- ---------------------------------------------------------


-- CREATE DATABASE "axisbits" ------------------------------
CREATE DATABASE `axisbits` CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `axisbits`;
-- ---------------------------------------------------------


-- CREATE TABLE "attributes" -----------------------------------
CREATE TABLE `attributes`( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`value` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`product_id` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 36;
-- -------------------------------------------------------------


-- CREATE TABLE "categories" -----------------------------------
CREATE TABLE `categories`( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`parent_id` Int( 11 ) NULL DEFAULT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "products" -------------------------------------
CREATE TABLE `products`( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`price` Decimal( 10, 2 ) NOT NULL,
	`category_id` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- Dump data of "attributes" -------------------------------
BEGIN;

REPLACE INTO `attributes`(`id`,`name`,`value`,`product_id`) VALUES 
( '71', 'Color', 'Black', '1' ),
( '72', 'Capacity', '128GB', '1' ),
( '73', 'Color', 'Phantom Gray', '2' ),
( '74', 'Capacity', '256GB', '2' ),
( '75', 'Color', 'Nightfall Black', '3' ),
( '76', 'Processor', 'Intel Core i7', '3' ),
( '77', 'Color', 'Black', '4' ),
( '78', 'Processor', 'Intel Core i5', '4' ),
( '79', 'Color', 'White/Black', '5' ),
( '80', 'Size', 'Men\'s 9', '5' ),
( '81', 'Color', 'Black', '6' ),
( '82', 'Size', '32x32', '6' ),
( '83', 'Color', 'Brushed Silver', '7' ),
( '84', 'Capacity', '1TB', '7' ),
( '85', 'Color', 'Red', '1' ),
( '86', 'Display', 'OLED', '1' ),
( '87', 'Processor', 'Snapdragon 865', '1' ),
( '88', 'Color', 'Space Gray', '2' ),
( '89', 'Display', 'Retina', '2' ),
( '90', 'Processor', 'M1', '2' ),
( '91', 'Processor', 'M1', '3' ),
( '92', 'Processor', 'M1', '4' ),
( '93', 'Color', 'Silver', '3' ),
( '94', 'Display', 'LCD', '3' ),
( '95', 'Processor', 'A14 Bionic', '3' ),
( '96', 'Color', 'Blue', '4' ),
( '97', 'Color', 'Blue', '7' ),
( '98', 'Color', 'Blue', '9' ),
( '99', 'Color', 'Blue', '13' ),
( '100', 'Display', 'IPS', '4' ),
( '101', 'Processor', 'Ryzen 5', '4' ),
( '102', 'Color', 'White', '5' ),
( '103', 'Display', 'AMOLED', '5' ),
( '104', 'Display', 'AMOLED', '2' ),
( '105', 'Display', 'AMOLED', '6' ),
( '106', 'Display', 'AMOLED', '16' ),
( '107', 'Processor', 'Snapdragon 888', '5' ),
( '108', 'Color', 'Gray', '6' ),
( '109', 'Display', 'LED', '6' ),
( '110', 'Processor', 'Core i3', '6' ),
( '111', 'Color', 'Gold', '7' ),
( '112', 'Display', 'Super Retina', '7' ),
( '113', 'Processor', 'A15 Bionic', '7' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "categories" -------------------------------
BEGIN;

REPLACE INTO `categories`(`id`,`name`,`parent_id`) VALUES 
( '1', 'Electronics', NULL ),
( '2', 'Clothing and Apparel', NULL ),
( '3', 'Home and Kitchen', NULL ),
( '4', 'Beauty and Personal Care', NULL ),
( '5', 'Sports and Outdoors', NULL ),
( '6', 'Toys and Games', NULL ),
( '7', 'Health and Wellness', NULL ),
( '8', 'Automotive', NULL ),
( '9', 'Books and Media', NULL ),
( '10', 'Food and Beverage', NULL ),
( '12', 'Yakama', NULL );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "products" ---------------------------------
BEGIN;

REPLACE INTO `products`(`id`,`name`,`price`,`category_id`) VALUES 
( '1', 'iPhone 13', '999.99', '1' ),
( '2', 'Samsung Galaxy S21', '799.99', '1' ),
( '3', 'HP Spectre x360', '1299.99', '1' ),
( '4', 'Lenovo ThinkPad X1 Carbon', '1499.99', '1' ),
( '5', 'Nike Air Max 270', '150.00', '2' ),
( '6', 'Levi\'s 501 Original Fit Jeans', '69.50', '2' ),
( '7', 'Keurig K-Elite Coffee Maker', '129.99', '3' ),
( '8', 'Instant Pot Duo 7-in-1 Electric Pressure Cooker', '79.99', '3' ),
( '9', 'L\'Oreal Paris Voluminous Lash Paradise Mascara', '9.99', '4' ),
( '10', 'Garnier SkinActive Micellar Cleansing Water', '6.99', '4' ),
( '11', 'YETI Tundra 65 Cooler', '349.99', '5' ),
( '12', 'Osprey Atmos AG 65 Backpack', '270.00', '5' ),
( '13', 'LEGO Star Wars Millennium Falcon', '149.99', '6' ),
( '14', 'Nintendo Switch', '299.99', '6' ),
( '15', 'Vitafusion MultiVites Gummy Vitamins', '9.99', '7' ),
( '16', 'Fitbit Charge 5', '179.95', '7' ),
( '17', 'Meguiar\'s Ultimate Wash & Wax', '12.99', '8' ),
( '18', 'Rain-X Original Glass Treatment', '7.99', '8' ),
( '19', 'The Hunger Games Trilogy Boxed Set', '39.97', '9' ),
( '20', 'The Lord of the Rings Boxed Set', '26.99', '9' ),
( '21', 'Kind Bars, Dark Chocolate Nuts & Sea Salt', '17.97', '10' ),
( '22', 'La Croix Sparkling Water, Grapefruit', '5.99', '10' ),
( '23', 'Yakima Skybox', '101.80', '12' ),
( '24', 'Yakima HoldUp', '133.11', '12' ),
( '25', 'Yakima JayLow', '163.41', '12' ),
( '26', 'Yakima FullTilt', '333.11', '12' ),
( '27', 'Yakima RidgeBack', '183.11', '12' ),
( '28', 'Yakima OffGrid', '153.00', '12' ),
( '29', 'Yakima HighRoad', '231.00', '12' );
COMMIT;
-- ---------------------------------------------------------


-- CREATE INDEX "product_id" -----------------------------------
CREATE INDEX `product_id` USING BTREE ON `attributes`( `product_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "parent_id" ------------------------------------
CREATE INDEX `parent_id` USING BTREE ON `categories`( `parent_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "category_id" ----------------------------------
CREATE INDEX `category_id` USING BTREE ON `products`( `category_id` );
-- -------------------------------------------------------------


-- CREATE LINK "attributes_ibfk_1" -----------------------------
ALTER TABLE `attributes`
	ADD CONSTRAINT `attributes_ibfk_1` FOREIGN KEY ( `product_id` )
	REFERENCES `products`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "categories_ibfk_1" -----------------------------
ALTER TABLE `categories`
	ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY ( `parent_id` )
	REFERENCES `categories`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


-- CREATE LINK "products_ibfk_1" -------------------------------
ALTER TABLE `products`
	ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY ( `category_id` )
	REFERENCES `categories`( `id` )
	ON DELETE Restrict
	ON UPDATE Restrict;
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


