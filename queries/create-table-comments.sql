create table comments(
id int auto_increment,
post_id int,
user_id int,
body text,
publish_date datetime default current_timestamp,
primary key(id),
foreign key(post_id) references posts(id),
foreign key(user_id) references users(id)
);