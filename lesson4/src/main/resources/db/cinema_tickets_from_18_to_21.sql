select
	count(0) AS `Продано билетов на сеансы с 18:00 до 21:00`,
    sum(`t`.`price`) AS `На сумму`
from
	`ticket` `t`
left join
	`show_schedule` `sh`
on
	`sh`.`id_show` = `t`.`id_show`
where
	`sh`.`start_time` >= '18:00:00'
and
	`sh`.`start_time` < '21:00:00';