CREATE TABLE blog(
  id INT NOT NULL,
  title VARCHAR2(200),
  content VARCHAR2(200) CONSTRAINT cc NOT NULL ,
  date DATE,
  PRIMARY KEY (id)
)TABLESPACE tms
  INITRANS 1
  MAXTRANS 255
  STORAGE (
  INITIAL 64k
  MINEXTENTS 1
  MAXEXTENTS UNLIMITED
);

DECLARE age INT :=100;
BEGIN
  FOR i in 1..100 LOOP
    SELECT DBMS_RANDOM.value(1,100) INTO age FROM dual;
  END LOOP;

  FOR cur in (SELECT * FROM blog) LOOP
    INSERT INTO blog(id, title, content, "date") VALUES (1,cur.title,cur.content,cur.date);
  END LOOP;
  COMMIT ;
END;

CREATE or REPLACE PROCEDURE tt(bb IN blog%TYPE,a OUT VARCHAR2(200)) IS
  BEGIN
     SELECT * from blog;
  END;

  CALL tt();
