CREATE DATABASE music_store;
use music_store;

CREATE TABLE Albums(
  a_id int PRIMARY KEY ,
  album  VARCHAR(20)
);

CREATE TABLE Tracks(
  t_id int PRIMARY KEY ,
  a_id int,
  track VARCHAR(20),
  price int,
  FOREIGN KEY (a_id) REFERENCES Albums(a_id)
);

CREATE TABLE Singers(
  s_id int PRIMARY KEY ,
  singer VARCHAR(20)
);

CREATE TABLE Track_Singer(
  ts_id int PRIMARY KEY ,
  t_id int NOT NULL ,
  s_id int NOT NULL ,
  FOREIGN KEY (t_id) REFERENCES Tracks(t_id),
  FOREIGN KEY (s_id) REFERENCES Singers(s_id)
);

CREATE TABLE Genres(
  g_id int PRIMARY KEY ,
  genre VARCHAR(20)
);

CREATE TABLE Track_Genre(
  tg_id int PRIMARY KEY ,
  t_id int NOT NULL ,
  g_id int NOT NULL ,
  FOREIGN KEY (t_id) REFERENCES Tracks(t_id),
  FOREIGN KEY (g_id) REFERENCES Genres(g_id)
);

CREATE TABLE Customers(
  c_id int PRIMARY KEY ,
  customer VARCHAR(20)
);

CREATE TABLE Orders(
  o_id int PRIMARY KEY ,
  c_id int NOT NULL ,
  FOREIGN KEY (c_id) REFERENCES Customers(c_id)
);

CREATE TABLE Track_Order(
  to_id int PRIMARY KEY ,
  t_id int NOT NULL ,
  o_id int NOT NULL ,
  FOREIGN KEY (t_id) REFERENCES Tracks(t_id),
  FOREIGN KEY (o_id) REFERENCES Orders(o_id)
);

CREATE TABLE Suggests(
  u_id int PRIMARY KEY ,
  t_id int NOT NULL ,
  c_id int NOT NULL ,
  comment TEXT,
  star int ,
  FOREIGN KEY (t_id) REFERENCES Tracks(t_id),
  FOREIGN KEY (c_id) REFERENCES Customers(c_id)
);