SELECT
	fl.film_name AS "Название фильма",
	fl.tickets AS "Продано билетов",
    fl.summ AS "На общую сумму"
    FROM
    (
		SELECT
			f.film_name,
			COUNT(0) AS tickets,
			SUM(t.price) AS summ
		FROM
			ticket t
		INNER JOIN
			show_schedule sh
		ON
			t.id_show = sh.id_show
        LEFT JOIN
			film f
		ON
			sh.id_film = f.id_film
		GROUP BY
			f.id_film
		ORDER BY
			SUM(t.price) DESC) as fl
    UNION ALL
    SELECT "----------", " ", 0
    UNION ALL
    SELECT "Итого", (SELECT COUNT(0) FROM ticket t), (SELECT SUM(t.price) FROM ticket t);