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

SELECT DAYNAME(created_at) as day, COUNT(*) as total FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;
