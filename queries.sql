-- Part 1
--
SELECT * FROM owners o
    LEFT JOIN vehicles v ON o.id = v.owner_id;

--
SELECT first_name, last_name, COUNT(*) AS count
    FROM owners o JOIN vehicles v ON o.id = v.owner_id
    GROUP BY o.id
    ORDER BY first_name ASC;

--
SELECT first_name, last_name,
    AVG(v.price) AS average_price,
    COUNT(v.owner_id) AS count
    FROM owners o JOIN vehicles v
        ON o.id = v.owner_id
    GROUP BY first_name, last_name
        HAVING AVG(v.price) > 10000
    ORDER BY first_name DESC;