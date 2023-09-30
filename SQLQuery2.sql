WITH nums AS (
    SELECT 0 AS num
    UNION ALL
    SELECT num + 1 FROM nums WHERE num < 9
),
tickets AS (
    SELECT a.num * 100000 + b.num * 10000 + c.num * 1000 + d.num * 100 + e.num * 10 + f.num AS ticket_num
    FROM nums a, nums b, nums c, nums d, nums e, nums f
)
SELECT ticket_num
FROM tickets
WHERE (ticket_num / 100000 % 10) + (ticket_num / 10000 % 10) + (ticket_num / 1000 % 10) =
      (ticket_num / 100 % 10) + (ticket_num / 10 % 10) + (ticket_num % 10);
