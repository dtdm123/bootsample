CREATE DATABASE  IF NOT EXISTS tasksdb;
USE tasksdb;

--
-- Table structure for table 't_tasks'
--

DROP TABLE IF EXISTS t_tasks;

CREATE TABLE t_tasks (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(150) DEFAULT NULL,
  messages varchar(1000) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

