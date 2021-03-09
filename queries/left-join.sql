select
comments.body,
posts.title
from comments
left join posts on posts.id = comments.post_id
order by posts.title