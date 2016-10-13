 
INSERT INTO users(username,password,enabled) VALUES ('guest','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', 1);
INSERT INTO users(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', 1);

INSERT INTO AUTHORITIES (username, authority) VALUES ('guest', 'ROLE_USER');
INSERT INTO AUTHORITIES (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO AUTHORITIES (username, authority) VALUES ('admin', 'ROLE_USER');

INSERT INTO MEMBER (age,firstName,lastName,MEMBERNUMBER,title,USERNAME) VALUES (12,'Curious','George', 8754,'Boy Monkey','guest');
INSERT INTO MEMBER (age,firstName,lastName,MEMBERNUMBER,title,USERNAME) VALUES (123,'Allen','Rench', 8733,'Torque Master','admin');

-- Product
INSERT INTO [dbo].[PRODUCT] ([IMAGE],[NAME],[PRICE],[QUANTITY],[THUMBNAIL],[VENDOR_ID])
     VALUES ('images/product/pc.jpg','PC',2000,10,'images/product/pc.jpg',1);

