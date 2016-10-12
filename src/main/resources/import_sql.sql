 
INSERT INTO users(username,password,enabled) VALUES ('guest','$2a$10$0.ESlGysrPaiW5HaapKwoehzWt5AibgbPPOvMhDv8D6H26QQ/CwhS', 1);
INSERT INTO users(username,password,enabled) VALUES ('admin','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', 1);
INSERT INTO users(username,password,enabled) VALUES ('customer','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', 1);
INSERT INTO users(username,password,enabled) VALUES ('vendor','$2a$10$S/wlXEo/APzf.Sn1cO2p4.V12EJmaw.uzrHelMvkpuahjmHWnSafe', 1);

INSERT INTO AUTHORITIES (username, authority) VALUES ('guest', 'ROLE_USER');
INSERT INTO AUTHORITIES (username, authority) VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO AUTHORITIES (username, authority) VALUES ('admin', 'ROLE_USER');
INSERT INTO AUTHORITIES (username, authority) VALUES ('customer', 'ROLE_CUSTOMER');
INSERT INTO AUTHORITIES (username, authority) VALUES ('vendor', 'ROLE_VENDOR');

INSERT INTO MEMBER (age,firstName,lastName,MEMBERNUMBER,title,USERNAME) VALUES (12,'Curious','George', 8754,'Boy Monkey',1);
INSERT INTO MEMBER (age,firstName,lastName,MEMBERNUMBER,title,USERNAME) VALUES (123,'Allen','Rench', 8733,'Torque Master',2);

					