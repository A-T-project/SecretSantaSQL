create table users (
	user_id int primary key auto_increment,
	name text unique,
	username text unique,
	password text,
    `time` timestamp
);

create table rooms (
	room_id int primary key auto_increment,
	admin_user_id int,
	title text,
	table_status boolean,
    room_url integer,
    room_password text,
    `time` timestamp,
    foreign key (admin_user_id) references users(user_id)
);

create table roomUsers (
	room_user_id integer,
	room_id integer,
	user_id integer,
	picked_user_id integer,
    time timestamp,
    foreign key (user_id) references users(user_id),
    foreign key (room_id) references rooms(room_id),
    foreign key (picked_user_id) references users(user_id)
);
   
