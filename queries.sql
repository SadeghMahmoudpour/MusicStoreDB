use music_store;

#Q1
SELECT album, price
FROM (
  SELECT T2.album, sum(T2.price) AS price
  from(
    SELECT t_id, price, a_id, album
    FROM Tracks AS T NATURAL JOIN Albums AS A NATURAL JOIN Track_Genre NATURAL JOIN Genres
    WHERE genre = "Pop"
      )AS T2
  GROUP BY T2.a_id
)AS T1
ORDER BY price ASC ;

#Q2
SELECT track, avg(star) AS star
FROM (
  SELECT t_id, track
  FROM Tracks NATURAL JOIN Track_Genre NATURAL JOIN Genres
  WHERE genre = "Rock"
     ) AS T3 LEFT JOIN Suggests AS S ON (T3.t_id = S.t_id)
GROUP BY T3.t_id
ORDER BY star DESC ;

#Q3
SELECT C.customer
FROM Customers AS C
WHERE  NOT exists(
  SELECT T.t_id AS t_id
  FROM Suggests AS T
  WHERE NOT exists(
    SELECT *
    FROM Suggests AS S1
    WHERE T.t_id = S1.t_id AND S1.star < 10
  ) AND
  T.t_id NOT IN (
    SELECT t_id
    FROM Suggests AS S2
    WHERE S2.c_id = C.c_id
  )
);

#Q4
SELECT singer, count(DISTINCT g_id) AS genders
FROM Singers NATURAL JOIN Track_Singer NATURAL JOIN Tracks NATURAL JOIN Track_Genre
GROUP BY s_id
ORDER BY genders DESC ;

#Q5
SELECT singer
FROM Singers AS S
WHERE NOT exists(
  SELECT *
  FROM Track_Singer AS TS NATURAL JOIN Tracks AS T
  WHERE S.s_id = TS.s_id AND T.a_id IS NULL
);

#Q6
SELECT DISTINCT singer
FROM Singers NATURAL JOIN Track_Singer
WHERE t_id IN (
  SELECT t_id
  FROM Track_Singer
  GROUP BY t_id
  HAVING count(s_id) > 3
  );

#Q7
SELECT genre, sum(oNum) AS orders
FROM (
  SELECT t_id, count(DISTINCT o_id) AS oNum
  FROM Track_Order
  GROUP BY t_id
     ) AS T_O NATURAL JOIN Track_Genre NATURAL JOIN Genres
GROUP BY g_id
ORDER BY orders DESC ;

#Q8
CREATE FUNCTION similarity(c1 INT, c2 INT) RETURNS INT
  DETERMINISTIC
BEGIN
  DECLARE SimTrack INT;
  SET SimTrack = (
    SELECT count(t_id)
    FROM
  );
END;

 SELECT *
 FROM t AS t1 , t AS t2
 (SELECT c_id, t_id
 FROM Orders NATURAL JOIN Track_Order) AS t;

SELECT *
FROM Track_Singer NATURAL JOIN Tracks NATURAL JOIN Singers NATURAL JOIN Track_Genre NATURAL JOIN Genres;

SELECT singer
FROM Singers AS S1
WHERE S1.s_id NOT IN(
  SELECT s_id
  FROM Track_Singer AS TS1 NATURAL JOIN (
    SELECT t_id, count(DISTINCT s_id) AS sNum
    FROM Track_Singer AS TS2 NATURAL JOIN Track_Genre AS TG2 NATURAL JOIN Genres
    WHERE genre = "Rock"
    GROUP BY t_id
  )AS T1
  WHERE sNum > 1
);

SELECT *
FROM Suggests NATURAL JOIN Tracks NATURAL JOIN Customers;