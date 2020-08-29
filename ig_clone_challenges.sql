USE ig_clone; 

###############################
# Challenge 1
# Find the 5 oldest users
###############################

-- SELECT * FROM users 
-- ORDER BY created_at 
-- LIMIT 5;

###############################
# Challenge 2
# What day of the week do most people register?
###############################

-- SELECT DAYNAME(created_at) as day, COUNT(*) as total FROM users
-- GROUP BY day
-- ORDER BY total DESC
-- LIMIT 2;

###############################
# Challenge 3
# Find the users who have not posted a photo
###############################

SELECT username from users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;