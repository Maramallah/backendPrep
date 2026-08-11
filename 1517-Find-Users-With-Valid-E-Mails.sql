SELECT *
FROM Users
-- 'c' → case-sensitive
-- 'i' → case-insensitive
WHERE REGEXP_LIKE(
    mail,
    '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$',
    'c'
);