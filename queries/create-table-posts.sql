create table posts(
	id int auto_increment,
    user_id int,
    title varchar(100),
    body text,
    publish_date datetime default current_timestamp,
    primary key(id),
    foreign key(user_id) references users(id)
);