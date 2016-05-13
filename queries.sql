use music_store;

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

SELECT track, avg(star) AS star
FROM (
  SELECT t_id, track
  FROM Tracks NATURAL JOIN Track_Genre NATURAL JOIN Genres
  WHERE genre = "Rock"
     ) AS T3 LEFT JOIN Suggests AS S ON (T3.t_id = S.t_id)
GROUP BY T3.t_id
ORDER BY star DESC ;