Простой сайт-визитка компании orbit.
------
`bindle exec rake db:create` -> `bundle exec rake db:migrate db:seed`.
------

Админка: /oradmin
Логпасс: cr@cr.cr: crimson0rb
------
Стили изображений (object.attachment.url(:style))

Объект | Символ | Разрешение
-------|--------|-----------
Все | :original | оригинальное
Все | :thumb | в четыре раза меньше наименьшего (62x63 для Client)
Client | :x63 | 62x63
VacancyElement | :x220 | 296x220
Worker | :x333 | 268x333
Worker | :x220 | 268x220
Done | :x325 | 842x325
