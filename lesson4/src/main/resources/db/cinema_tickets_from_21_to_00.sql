select
	count(*) as "Продано билетов на сеансы с 21:00 до 23:59",
    sum(price) as "На сумму"
from
	ticket t
left join
	show_schedule sh
on
	sh.id_show = t.id_show
where sh.start_time >= "21:00:00" and sh.start_time <= "23:59:59";