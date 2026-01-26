*Code for problem:*

    SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
    FROM Person p
    LEFT JOIN Address a
    ON p.personId = a.personId;

    
  <br>
  <hr>
<img width="1904" height="839" alt="Screenshot 2026-01-26 142034" src="https://github.com/user-attachments/assets/3741a7d8-081c-4b74-96af-6989995adc4f" />


