-- Task 2 Bonus: Shift Activity Report
-- Jane Doe has an upcoming performance review and the manager wants to look at her order history
-- ahead of the meeting. They only need to see when each order was placed and what it was worth —
-- no other details are required for this particular review.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query to find the order_date and total_price from the Orders table
-- for all orders handled by Jane Doe. You will need to join with the Staff table
-- to filter by the staff member's name.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- โจทย์ต้องการดูรายการ order ของพนักงานชื่อ Jane Doe โดยต้องการเฉพาะ order_date และ total_price
-- ข้อมูลอยู่ในตาราง Orders และ Staff โดย Orders มี staff_id ที่เชื่อมกับ Staff
-- จึงต้องใช้ JOIN เพื่อเชื่อมตาราง Orders กับ Staff ผ่าน staff_id
-- จากนั้นใช้ WHERE เพื่อกรองเฉพาะพนักงานชื่อ Jane Doe และเลือกแสดงเฉพาะ order_date และ total_price

-- ---------------------------------------------------------------
-- Code
-- ---------------------------------------------------------------

SELECT o.order_date, o.total_price
FROM Orders o
JOIN Staff s ON o.staff_id = s.staff_id
WHERE s.first_name = 'Jane' AND s.last_name = 'Doe';