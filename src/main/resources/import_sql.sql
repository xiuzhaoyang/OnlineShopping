
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

<<<<<<< HEAD
INSERT INTO CUSTOMER (firstname, lastname, user_id) VALUES ('firstname1', 'lastname1', 1);
INSERT INTO CUSTOMER (firstname, lastname, user_id) VALUES ('firstname2', 'lastname2', 2);
INSERT INTO CUSTOMER (firstname, lastname, user_id) VALUES ('firstname3', 'lastname3', 3);
INSERT INTO CUSTOMER (firstname, lastname, user_id) VALUES ('firstname4', 'lastname4', 4);

INSERT INTO ADDRESS (address1, address2, city, country, fullname, phone_number, state, zip) VALUES ('address1-1','address1-2','FF','USA','fullname1','phone1','state1','zip1')
INSERT INTO ADDRESS (address1, address2, city, country, fullname, phone_number, state, zip) VALUES ('address2-1','address2-2','FF','USA','fullname2','phone2','state2','zop2')

INSERT INTO CUSTOMER_ADDRESS (customer_id, address_id) VALUES (2,1)
INSERT INTO CUSTOMER_ADDRESS (customer_id, address_id) VALUES (2,2)
					
=======
-- Product
INSERT INTO [dbo].[PRODUCT] ([IMAGE],[NAME],[PRICE],[QUANTITY],[THUMBNAIL],[VENDOR_ID])
     VALUES ('images/product/pc.jpg','PC',2000,10,'images/product/pc.jpg',1);

>>>>>>> branch 'master' of https://github.com/xiuzhaoyang/OnlineShopping
