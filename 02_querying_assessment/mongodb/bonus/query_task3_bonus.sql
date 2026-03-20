-- Task 3 Bonus: Stock Replenishment Check
-- Before placing the weekly supply order, the manager wants to avoid over-ordering ingredients
-- that are already well-stocked. They need a list of every ingredient with a stock level
-- of 100 or more so those can be deprioritised in this week's order.
--
-- The dataset is identical in PostgreSQL — the same business insight can be retrieved.
--
-- Hint: Write a query to find the name of all rows in the Ingredients table
-- where the stock_level is greater than or equal to 100.

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- โจทย์ต้องการหาวัตถุดิบที่มี stock_level ตั้งแต่ 100 ขึ้นไป โดยใช้ข้อมูลจากตาราง Ingredients
-- ข้อมูลที่ต้องใช้คือชื่อของวัตถุดิบ จึงเลือกเฉพาะคอลัมน์ name
-- ใช้ WHERE เพื่อกรองเฉพาะรายการที่ stock_level มากกว่าหรือเท่ากับ 100
-- ข้อนี้ง่ายกว่า mongoDB หน่อย เพราะว่าพิมพ์คำสั่งแบบตรงตัวเลยค่ะ 

-- ---------------------------------------------------------------
-- Code
-- ---------------------------------------------------------------

SELECT name
FROM Ingredients
WHERE stock_level >= 100;