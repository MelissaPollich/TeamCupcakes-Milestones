
create table if not exists users(user_id integer, username varchar(40) not null, password varchar(40) not null, primary key (user_id));

create table if not exists levels_finished(user_id integer not null, level_1_finished integer not null, level_2_finished integer not null, level_3_finished integer not null, primary key (user_id), foreign key (user_id) references users(user_id));

create table if not exists scores(user_id integer not null, level_1_score integer not null, level_2_score integer not null, level_3_score integer not null, primary key (user_id), foreign key (user_id) references users(user_id));

insert into users (user_id, username, password) values (1, 'jeff', '1234'),(2, 'joe', 'password'),(3,'jill','jill1');

insert into levels_finished(user_id, level_1_finished, level_2_finished, level_3_finished) values (1, 1, 1, 1),(2, 1, 1, 0),(3,0,0,0);

insert into scores(user_id, level_1_score, level_2_score, level_3_score) values (1, 10, 15, 20),(2, 10, 15, 0),(3, 0, 0, 0);
