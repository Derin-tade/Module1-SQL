create table vendor(
v_code integer,
v_name varchar(40) not null,
v_contact varchar(15) not null,
v_areacode char(5) not null,
v_phone varchar(10) not null,
v_country char(2) not null,
v_order char(1) not null,
primary key (v_code)
);

CREATE TABLE PRODUCT (
P_CODE VARCHAR(10) PRIMARY KEY,
P_DESCRIPT VARCHAR(35) NOT NULL,
P_QOH INTEGER NOT NULL,
P_MIN INTEGER NOT NULL,
P_PRICE NUMERIC(8,2) NOT NULL,
P_DISCOUNT NUMERIC(4,2) NOT NULL,
V_CODE INTEGER,
FOREIGN KEY (V_CODE)
REFERENCES VENDOR (V_CODE)
);


insert into vendor values (21225, 'Bryson Inc', 'Smithson', '0181', '223-3234','uk','y'
);
commit work
select * from vendor;

update vendor
set v_order = 'n'
where v_code = '21225';

