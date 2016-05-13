CREATE DATABASE music_store;
use music_store;

CREATE TABLE Albums(
  id int PRIMARY KEY ,
  album  VARCHAR(20)
);

CREATE TABLE Tracks(
  id int PRIMARY KEY ,
  a_id int,
  track VARCHAR(20),
  price int,
  FOREIGN KEY (a_id) REFERENCES Albums(id)
);

CREATE TABLE Singers(
  id int PRIMARY KEY ,
  singer VARCHAR(20)
);

CREATE TABLE Track_Singer(
  id int PRIMARY KEY ,
  t_id int NOT NULL ,
  s_id int NOT NULL ,
  FOREIGN KEY (t_id) REFERENCES Tracks(id),
  FOREIGN KEY (s_id) REFERENCES Singers(id)
);

CREATE TABLE Genres(
  id int PRIMARY KEY ,
  genre VARCHAR(20)
);

CREATE TABLE Track_Genre(
  id int PRIMARY KEY ,
  t_id int NOT NULL ,
  g_id int NOT NULL ,
  FOREIGN KEY (t_id) REFERENCES Tracks(id),
  FOREIGN KEY (g_id) REFERENCES Genres(id)
);

CREATE TABLE Customers(
  id int PRIMARY KEY ,
  customer VARCHAR(20)
);

CREATE TABLE Orders(
  id int PRIMARY KEY ,
  c_id int NOT NULL ,
  FOREIGN KEY (c_id) REFERENCES Customers(id)
);

CREATE TABLE Track_Order(
  id int PRIMARY KEY ,
  t_id int NOT NULL ,
  o_id int NOT NULL ,
  FOREIGN KEY (t_id) REFERENCES Tracks(id),
  FOREIGN KEY (o_id) REFERENCES Orders(id)
);

CREATE TABLE Suggests(
  id int PRIMARY KEY ,
  t_id int NOT NULL ,
  c_id int NOT NULL ,
  comment TEXT,
  point int ,
  FOREIGN KEY (t_id) REFERENCES Tracks(id),
  FOREIGN KEY (c_id) REFERENCES Customers(id)
);