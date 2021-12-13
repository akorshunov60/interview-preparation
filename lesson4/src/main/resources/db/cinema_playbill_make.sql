select
	`f`.`film_name` AS `Название фильма`,
    `sh`.`start_time` AS `Начало сеанса`,
    `f`.`film_duration` AS `Продолжительность`,
    addtime((`sh`.`start_time` + `f`.`film_duration`),`sh`.`break_duration`) AS `Начало следующего сеанса`,
    `sh`.`break_duration` AS `Длительность перерыва`
from
	`show_schedule` `sh`
left join
	`film` `f`
on
	`sh`.`id_film` = `f`.`id_film`
group by
	`sh`.`start_time`
order by
	`sh`.`start_time`