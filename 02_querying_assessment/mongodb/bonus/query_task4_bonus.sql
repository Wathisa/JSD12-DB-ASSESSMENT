-- Task 4 Bonus: Total Revenue Summary
-- At the end of the trading period, the owner wants a single figure that shows how much revenue
-- the truck has generated across all recorded orders. This number will be used in their
-- financial summary report, so the result should be returned as a single value named total_revenue.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query that uses an aggregate function on the Orders table
-- to sum the total_price across all orders, returning the result as total_revenue.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- โจทย์ต้องการหายอดรวมรายได้ทั้งหมดจากทุก order โดยใช้ข้อมูลจากตาราง Orders
-- ข้อมูลที่ต้องใช้คือ total_price ของแต่ละ order นำมาบวกกันทั้งหมดเพื่อให้ได้ค่าเดียว
-- ดังนั้นจะใช้ SUM() เพื่อรวมค่า total_price และตั้งชื่อผลลัพธ์เป็น total_revenue

-- ---------------------------------------------------------------
-- Code
-- ---------------------------------------------------------------

SELECT SUM(total_price) AS total_revenue
FROM Orders;