select
comments.body,
posts.title,
users.first_name,
users.last_name
from comments
inner join posts on posts.id = comments.post_id
inner join users on users.id = comments.user_id
order by posts.title