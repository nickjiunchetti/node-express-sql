select 
users.first_name,
users.last_name,
posts.title,
posts.publish_date
from users
inner join posts
on users.id = posts.user_id
order by posts.title;