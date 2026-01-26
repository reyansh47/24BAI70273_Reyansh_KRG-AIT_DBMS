CODE FOR PROBLEM:<br>
SELECT name AS Customers

FROM Customers c

LEFT JOIN Orders o

ON c.id = o.customerId

GROUP BY c.id

HAVING COUNT(o.id) = 0;
<br>



<img width="1915" height="837" alt="Screenshot 2026-01-26 141644" src="https://github.com/user-attachments/assets/130d04ff-2eaa-48af-a5d3-e2ade99e43e0" />
