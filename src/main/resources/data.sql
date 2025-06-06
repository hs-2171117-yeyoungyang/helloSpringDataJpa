-- 권한 데이터
insert into my_role (name) values ('ROLE_USER');
insert into my_role (name) values ('ROLE_ADMIN');

-- 관리자 계정 생성
insert into my_user (email, password) values ('admin@test.com', '$2a$12$rhUddFKTsJayJeQ/u9aqsei43vyFysUi4Chgl8hHLedyMVDIu.R.O');
insert into user_roles (user_id, role_id)
select u.id, r.id from my_user u, my_role r where u.email = 'admin@test.com' and r.name = 'ROLE_ADMIN';

-- Product 샘플 데이터
insert into product (name, brand, made_in, price) values ('Galaxy S6', 'Samsung Corp', 'Korea', 600.0);
insert into product (name, brand, made_in, price) values ('Galaxy S8', 'Samsung Corp', 'Korea', 800.0);
insert into product (name, brand, made_in, price) values ('Galaxy S10', 'Samsung Corp', 'Korea', 1000.0);
insert into product (name, brand, made_in, price) values ('Galaxy S21', 'Samsung Corp', 'Korea', 1000.0);

insert into product (name, brand, made_in, price) values ('MacBook Air1', 'Apple', 'China',  10000);
insert into product (name, brand, made_in, price) values ('MacBook Air2', 'Apple', 'China',  10000);
insert into product (name, brand, made_in, price) values ('MacBook Air3', 'Apple', 'China',  10000);
insert into product (name, brand, made_in, price) values ('MacBook Air4', 'Apple', 'China',  10000);
insert into product (name, brand, made_in, price) values ('MacBook Air5', 'Apple', 'China',  10000);
insert into product (name, brand, made_in, price) values ('MacBook Pro1', 'Apple', 'China',  15000);
insert into product (name, brand, made_in, price) values ('MacBook Pro2', 'Apple', 'China',  15000);

insert into product (name, brand, made_in, price) values ('iPad Air', 'Apple', 'China',  500);
insert into product (name, brand, made_in, price) values ('iPad Pro', 'Apple', 'China',  800);

insert into product (name, brand, made_in, price) values ('소나타', 'Hyundai', 'Japan',  20000);
insert into product (name, brand, made_in, price) values ('그랜저', 'Hyundai', 'Japan',  30000);
insert into product (name, brand, made_in, price) values ('제너시스', 'Hyundai', 'Japan',  50000);
insert into product (name, brand, made_in, price) values ('에쿠스', 'Hyundai', 'Japan',  60000);

insert into product (name, brand, made_in, price) values ('Accord', 'Honda', 'Japan',  25000);
insert into product (name, brand, made_in, price) values ('sienna', 'Honda', 'Japan',  40000);

insert into product (name, brand, made_in, price) values ('Camry', 'Toyota', 'Japan',  25000);
insert into product (name, brand, made_in, price) values ('Lexus', 'Toyota', 'Japan',  50000);