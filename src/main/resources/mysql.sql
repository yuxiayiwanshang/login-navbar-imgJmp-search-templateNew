CREATE DATABASE  IF NOT EXISTS `accounts`;
USE `accounts`;

CREATE TABLE 'blog'(
  'id' INT(11) NOT NULL AUTO_INCREMENT,
  'title' VARCHAR(200) NOT NULL ,
  'content' VARCHAR(200),
  PRIMARY KEY ('id')
)ENGINE = InnoDB AUTO_INCREMENT =2 DEFAULT CHAR SET = UTF8;

LOCK TABLES 'blog' WRITE;
INSERT INTO 'blog' VALUES ('acm news','hello to mysql database,this is the first example');
UNLOCK TABLES ;

CREATE PROCEDURE insertblog()
  BEGIN
    DECLARE a int;
    DECLARE title VARCHAR(200);
    DECLARE content VARCHAR(200);
    DECLARE ss CURSOR FOR (SELECT b.title,b.content FROM blog b);
    SET a=0;
    IF a IS NOT NULL THEN

    END IF;

    WHILE a<10 DO

    END WHILE;

    open ss;
      my_loop: LOOP
        FETCH ss INTO title,content;
        IF a>10 THEN
          LEAVE my_loop;
        END IF;
        UPDATE blog b SET b.content=content,b.title=title WHERE b.title=title;
        FETCH ss INTO title,content;
      END LOOP;
    CLOSE ss;
  END;

call insertblog();