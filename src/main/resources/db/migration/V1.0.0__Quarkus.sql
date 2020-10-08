--
-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

--
-- Table structure for table `EXPENSES`
--

-- DROP TABLE IF EXISTS EXPENSES;

CREATE TABLE REPORT (
    ID SERIAL NOT NULL PRIMARY KEY,
    NAME varchar(100) NOT NULL,
    CREATED date,
    TSTAMP TIMESTAMP   DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE EXPENSES (
  ID SERIAL PRIMARY KEY ,
  DESCRIPTION  varchar(250) NOT NULL,
  AMOUNT numeric(15,6) ,
  CREATED date,
  TSTAMP TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
  FK_REPORT INTEGER REFERENCES REPORT(ID)
);




INSERT INTO REPORT (ID,NAME, CREATED) VALUES ('Simple Report','2019-07-30');

INSERT INTO EXPENSES   (DESCRIPTION, AMOUNT ,CREATED,FK_REPORT)
 VALUES ('Lunch',30.3,'2019-07-30',1),
 ('Lenovo Tablet',149,'2019-07-30',1),
 ('Dinner',30.3,'2019-09-29',1),
 ('Book',28.19,'2019-09-29',1);

