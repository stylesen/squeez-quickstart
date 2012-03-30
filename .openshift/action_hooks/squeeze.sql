--
-- Table structure for table `url_mapper`
--
DROP TABLE IF EXISTS `url_mapper`;
CREATE TABLE url_mapper (hash varchar(50) NOT NULL PRIMARY KEY,
       url text NOT NULL, created TIMESTAMP, expiry TIMESTAMP DEFAULT 0);
