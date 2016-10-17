INSERT INTO AUTHORITIES (username, authority) VALUES ('guest', 'ROLE_USER');
INSERT INTO AUTHORITIES (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO AUTHORITIES (username, authority) VALUES ('admin', 'ROLE_USER');
INSERT INTO AUTHORITIES (username, authority) VALUES ('customer', 'ROLE_CUSTOMER');
INSERT INTO AUTHORITIES (username, authority) VALUES ('vendor', 'ROLE_VENDOR');
 
INSERT INTO users(username,password,enabled) VALUES ('guest','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', 1);
INSERT INTO users(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', 1);
INSERT INTO users(username,password,enabled) VALUES ('customer','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', 1);
INSERT INTO users(username,password,enabled) VALUES ('vendor','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', 1);

INSERT INTO MEMBER (age,firstName,lastName,MEMBERNUMBER,title,USERNAME) VALUES (12,'Curious','George', 8754,'Boy Monkey',1);
INSERT INTO MEMBER (age,firstName,lastName,MEMBERNUMBER,title,USERNAME) VALUES (123,'Allen','Rench', 8733,'Torque Master',2);


INSERT INTO CUSTOMER (firstname, lastname, user_id) VALUES ('firstname1', 'lastname1', 1);
INSERT INTO CUSTOMER (firstname, lastname, user_id) VALUES ('firstname2', 'lastname2', 2);
INSERT INTO CUSTOMER (firstname, lastname, user_id) VALUES ('firstname3', 'lastname3', 3);
INSERT INTO CUSTOMER (firstname, lastname, user_id) VALUES ('firstname4', 'lastname4', 4);

INSERT INTO CUSTOMER_ADDRESS (add_line_1, address_type, city_name, create_time, enabled, state_name, zip_code, CUSTOMER_ID) VALUES ('address1-1','HOME','city_name',null,true,'state','zip1',3)
INSERT INTO CUSTOMER_ADDRESS (add_line_1, address_type, city_name, create_time, enabled, state_name, zip_code, CUSTOMER_ID) VALUES ('address1-1','WORK','city_name',null,true,'state','zip1',3)

INSERT INTO CONTACTINFORMATION (information_type, information_field,CUSTOMER_ID) VALUES ('fax', '641-645-4567',3);
INSERT INTO CONTACTINFORMATION (information_type, information_field,CUSTOMER_ID) VALUES ('home phone', '641-645-4567',3);
INSERT INTO CONTACTINFORMATION (information_type, information_field,CUSTOMER_ID) VALUES ('mobile phone', '641-645-4567',3);
INSERT INTO CONTACTINFORMATION (information_type, information_field,CUSTOMER_ID) VALUES ('skype1', 'superman123',3);
INSERT INTO CONTACTINFORMATION (information_type, information_field,CUSTOMER_ID) VALUES ('skype2', 'batman123',3);
INSERT INTO CONTACTINFORMATION (information_type, information_field,CUSTOMER_ID) VALUES ('email', 'superbat@gmail.com',3);
INSERT INTO CONTACTINFORMATION (information_type, information_field,CUSTOMER_ID) VALUES ('email', 'superbat123@gmail.com',3);

-------- SAMPLE PRODUCTS----------------


