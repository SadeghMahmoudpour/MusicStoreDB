use music_store;

INSERT INTO Albums VALUES (1, "Labe Karoon");
INSERT INTO Albums VALUES (2, "Fallen");
INSERT INTO Albums VALUES (3, "Mo sokhtom");

INSERT INTO Tracks VALUES (1, 1, "Jooni Junom", 5000);
INSERT INTO Tracks VALUES (2, 2, "Going under", 12000);
INSERT INTO Tracks VALUES (3, 2, "Bring me to life", 13000);
INSERT INTO Tracks VALUES (4, 2, "My last breath", 14000);
INSERT Into Tracks VALUES (5, 3, "Emsho shoeshe", 200);
INSERT Into Tracks VALUES (6, NULL , "dream life", 2000);

INSERT INTO Singers VALUES (1, "Leila Foruhar");
INSERT INTO Singers VALUES (2, "Evanescense");
INSERT INTO Singers VALUES (3, "Sandi");
INSERT INTO Singers VALUES (4, "Changiz");
INSERT INTO Singers VALUES (5, "Aghasi");
INSERT INTO Singers VALUES (6, "Akhari");

INSERT INTO Track_Singer VALUES (1, 1, 1);
INSERT INTO Track_Singer VALUES (2, 2, 2);
INSERT INTO Track_Singer VALUES (3, 3, 2);
INSERT INTO Track_Singer VALUES (4, 4, 2);
INSERT INTO Track_Singer VALUES (5, 5, 3);
INSERT INTO Track_Singer VALUES (6, 4, 3);
INSERT INTO Track_Singer VALUES (7, 6, 4);
INSERT INTO Track_Singer VALUES (8, 4, 1);
INSERT INTO Track_Singer VALUES (9, 4, 5);

INSERT INTO Genres VALUES (1, "Pop");
INSERT INTO Genres VALUES (2, "Rock");

INSERT INTO Track_Genre VALUES (1, 1, 1);
INSERT INTO Track_Genre VALUES (2, 2, 2);
INSERT INTO Track_Genre VALUES (3, 3, 2);
INSERT INTO Track_Genre VALUES (4, 4, 2);
INSERT INTO Track_Genre VALUES (5, 5, 1);
INSERT INTO Track_Genre VALUES (6, 6, 1);

INSERT INTO Customers VALUES (1, "Ansar");
INSERT INTO Customers VALUES (2, "Pashmak");
INSERT INTO Customers VALUES (3, "Kord");
INSERT INTO Customers VALUES (4, "Sadegh");
INSERT INTO Customers VALUES (5, "Big");
INSERT INTO Customers VALUES (6, "cust");

INSERT INTO Orders VALUES (1, 1);
INSERT INTO Orders VALUES (2, 3);

INSERT INTO Track_Order VALUES (1, 2, 1);
INSERT INTO Track_Order VALUES (2, 4, 1);
INSERT INTO Track_Order VALUES (3, 1, 2);
INSERT INTO Track_Order VALUES (4, 3, 2);
INSERT INTO Track_Order VALUES (5, 4, 2);

INSERT INTO Suggests VALUES (1, 3, 5, "Not bad", 5);
INSERT INTO Suggests VALUES (2, 1, 3, "Great", 9);
INSERT INTO Suggests VALUES (3, 4, 1, "Emotional", 8);
INSERT INTO Suggests VALUES (4, 2, 1, "Best track in the album", 9);
INSERT INTO Suggests VALUES (5, 3, 1, "nostalgic", 8);
INSERT INTO Suggests VALUES (6, 2, 2, "Good", 6);
INSERT INTO Suggests VALUES (7, 4, 2, "bad", 1);
INSERT INTO Suggests VALUES (8, 5, 2, "great", 10);
INSERT INTO Suggests VALUES (9, 2, 3, "aaalliii", 10);
INSERT INTO Suggests VALUES (10, 4, 6, "20", 10);
INSERT INTO Suggests VALUES (11, 5, 6, "21", 10);
INSERT INTO Suggests VALUES (12, 2, 6, "22", 10);

DESC Suggests;