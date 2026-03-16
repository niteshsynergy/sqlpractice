-- List all columns from the users table.
select  * from users;

-- Show only the username and email of all users.
select username,email from users;

-- # Find all users created after '2024-01-01'.
select * from users where created_at>'2024-01-01';
SELECT *
FROM users
WHERE created_at BETWEEN '2024-01-01' AND '2024-12-31';
SELECT *
FROM users
WHERE created_at BETWEEN '2024-01-01 00:00:00'
          AND '2024-12-31 23:59:59';

-- Get usernames that start with 'A'.
select * from users where full_name  like 'A%';
| Pattern | Meaning                  |
| ------- | ------------------------ |
| `'A%'`  | starts with A            |
| `'%A'`  | ends with A              |
| `'%A%'` | contains A               |
| `'A__'` | A + exactly 2 characters |

-- # List all users whose email ends in '@gmail.com'.

select *
from users where email like '%@gmail.com';

