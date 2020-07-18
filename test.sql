
CREATE TABLE index_demo (
person_id NUMBER(10),
gender    VARCHAR2(1),
state     VARCHAR2(2),
textcol   VARCHAR2(2000))
;

DECLARE
 g index_demo.gender%TYPE := 'F'; 
BEGIN
  FOR i IN 1 .. 50000 LOOP
    INSERT INTO index_demo
    (person_id, gender, state, textcol)
    VALUES
    (i, g, 'WA', RPAD('x', 1799, 'x'));

    IF g = 'F' THEN
      g := 'M';
    ELSE
      g := 'F';
    END IF;
  END LOOP;
  COMMIT;

  UPDATE index_demo
  SET state = 'OR'
  WHERE person_id LIKE '%1';

  UPDATE index_demo
  SET state = 'CA'
  WHERE person_id LIKE '%2';

  UPDATE index_demo
  SET state = 'ID'
  WHERE person_id LIKE '%3';

  UPDATE index_demo
  SET state = 'NY'
  WHERE person_id LIKE '%4';

  UPDATE index_demo
  SET state = 'MA'
  WHERE person_id LIKE '%5';

  UPDATE index_demo
  SET state = 'MN'
  WHERE person_id LIKE '%6';

  UPDATE index_demo
  SET state = 'VA'
  WHERE person_id LIKE '%7';

  UPDATE index_demo
  SET state = 'NC'
  WHERE person_id LIKE '%8';

  UPDATE index_demo
  SET state = 'MI'
  WHERE person_id like '%9';

  COMMIT;
END;
/


CREATE TABLE airplanes (program_id  VARCHAR2(3),line_number NUMBER(10),customer_id VARCHAR2(4),order_date  DATE,delivered_date DATE)PCTFREE 0;

--CREATE INDEX programid_idx ON airplanes (program_id) PCTFREE 0;

CREATE TABLE parts (program_id VARCHAR2(3),line_type VARCHAR2(4),part_type VARCHAR2(10),quantity NUMBER(3));


CREATE TABLE ap_parts AS SELECT a.customer_id, p.part_type, p.quantity FROM airplanes a, parts p WHERE a.program_id = p.program_id AND 1=2;

DECLARE progid  airplanes.program_id%TYPE;lineno  airplanes.line_number%TYPE;custid  airplanes.customer_id%TYPE := 'AAL'; orddate airplanes.order_date%TYPE;deldate airplanes.delivered_date%TYPE; BEGIN FOR i IN 1 .. 5 LOOP SELECT DECODE(i, 1, '737', 2, '747', 3, '757', 4, '767', 5, '777') INTO progid FROM dual;FOR lineno IN 1..250 LOOP SELECT DECODE(custid, 'AAL','DAL','DAL','SAL','SAL','ILC','ILC','SWA', 'SWA','NWO','NWO','AAL') INTO custid FROM dual; IF progid = '737' THEN   OrdDate := SYSDATE + lineno; DelDate := OrdDate + lineno + 100; ELSIF progid = '747' THEN OrdDate := SYSDATE + lineno+17; DelDate := OrdDate + lineno + 302; ELSIF progid = '757' THEN OrdDate := SYSDATE + lineno+22; DelDate := OrdDate + lineno + 202; ELSIF progid = '767' THEN OrdDate := SYSDATE + lineno+43; DelDate := OrdDate + lineno + 189; ELSIF progid = '777' THEN OrdDate := SYSDATE + lineno-69; DelDate := OrdDate + lineno + 299; END IF; INSERT INTO airplanes (program_id, line_number, customer_id, order_date, delivered_date) VALUES (progid, lineno, custid, orddate, deldate); 
END LOOP; 
END LOOP; 
COMMIT; 
END load_airplanes; 
/

BEGIN
  INSERT INTO parts VALUES ('737', 'Even', 'Wing', 2);
  INSERT INTO parts VALUES ('747', 'Even', 'Wing', 2);
  INSERT INTO parts VALUES ('757', 'Even', 'Wing', 2);
  INSERT INTO parts VALUES ('767', 'EVen', 'Wing', 2);
  INSERT INTO parts VALUES ('777', 'even', 'Wing', 2);
  INSERT INTO parts VALUES ('737', 'ODD', 'Wing', 2);
  INSERT INTO parts VALUES ('747', 'odd', 'Wing', 2);
  INSERT INTO parts VALUES ('757', 'Odd', 'Wing', 2);
  INSERT INTO parts VALUES ('767', 'Odd', 'Wing', 2);
  INSERT INTO parts VALUES ('777', 'Odd', 'Wing', 2); 
  INSERT INTO parts VALUES ('737', 'Even', 'Galley', 1);
  INSERT INTO parts VALUES ('747', 'EVen', 'Galley', 3);
  INSERT INTO parts VALUES ('757', 'EVEN', 'Galley', 3);
  INSERT INTO parts VALUES ('767', 'EVeN', 'Galley', 2);
  INSERT INTO parts VALUES ('777', 'even', 'Galley', 3);
  INSERT INTO parts VALUES ('737', 'ODD', 'Galley', 2);
  INSERT INTO parts VALUES ('747', 'odd', 'Galley', 4);
  INSERT INTO parts VALUES ('757', 'Odd', 'Galley', 3);
  INSERT INTO parts VALUES ('767', 'ODd', 'Galley', 4);
  INSERT INTO parts VALUES ('777', 'odD', 'Galley', 4); 
  INSERT INTO parts VALUES ('737', 'Even', 'Tire', 10);
  INSERT INTO parts VALUES ('747', 'Even', 'Tire', 18);
  INSERT INTO parts VALUES ('757', 'Even', 'Tire', 12);
  INSERT INTO parts VALUES ('767', 'Even', 'Tire', 14);
  INSERT INTO parts VALUES ('777', 'EveN', 'Tire', 16);
  INSERT INTO parts VALUES ('737', 'ODD', 'Tire', 14);
  INSERT INTO parts VALUES ('747', 'Odd', 'Tire', 20);
  INSERT INTO parts VALUES ('757', 'Odd', 'Tire', 14);
  INSERT INTO parts VALUES ('767', 'Odd', 'Tire', 16);
  INSERT INTO parts VALUES ('777', 'Odd', 'Tire', 18); 
  INSERT INTO parts VALUES ('737', 'Even', 'Seats', 105);
  INSERT INTO parts VALUES ('747', 'Even', 'Seats', 255);
  INSERT INTO parts VALUES ('757', 'Even', 'Seats', 140);
  INSERT INTO parts VALUES ('767', 'Even', 'Seats', 200);
  INSERT INTO parts VALUES ('777', 'EveN', 'Seats', 210);
  INSERT INTO parts VALUES ('737', 'ODD', 'Seats', 137);
  INSERT INTO parts VALUES ('747', 'Odd', 'Seats', 20);
  INSERT INTO parts VALUES ('757', 'Odd', 'Seats', 166);
  INSERT INTO parts VALUES ('767', 'Odd', 'Seats', 345);
  INSERT INTO parts VALUES ('777', 'Odd', 'Seats', 267);
  COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE nested_loop AUTHID DEFINER IS
 CURSOR a_cur IS
 SELECT program_id, line_number, customer_id
 FROM airplanes;
 a_rec a_cur%ROWTYPE;
 CURSOR p_cur IS
 SELECT part_type, quantity
 FROM parts
 WHERE program_id = a_rec.program_id
 AND UPPER(line_type)=DECODE(MOD(a_rec.line_number,2),0,'EVEN','ODD');
 p_rec p_cur%ROWTYPE;
BEGIN
  OPEN a_cur;
  LOOP
    FETCH a_cur INTO a_rec;
    EXIT WHEN a_cur%NOTFOUND;
    OPEN p_cur;
    LOOP
      FETCH p_cur INTO p_rec;
      EXIT WHEN p_cur%NOTFOUND;
      INSERT INTO ap_parts
      (customer_id, part_type, quantity)
      VALUES
      (a_rec.customer_id, p_rec.part_type, p_rec.quantity);
    END LOOP; 
    CLOSE p_cur;
  END LOOP;
  COMMIT;
  CLOSE a_cur;
END nested_loop;
/

--select a.program_id,a.line_number,a.customer_idb.part_type,b.quantity from airplanes a,parts b where a.program_id=b.program_id and a.customer_id='DAL';

--CREATE BITMAP INDEX parttype_idx ON parts (part_type) PCTFREE 30;

--select CASE (a.customer_id) WHEN ('DAL') THEN 'Delta Airlines' WHEN ('SWA') THEN 'Southwest Airlines' ELSE 'Ryan Airlines or EasyJet' END AS RESULTSET,a.program_id,b.part_type,b.quantity from airplanes a,parts b where a.program_id=b.program_id and a.program_id=777;


