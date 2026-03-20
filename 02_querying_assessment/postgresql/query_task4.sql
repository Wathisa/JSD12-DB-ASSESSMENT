-- Task 4: Supplier Dependency Check
-- The manager has just heard that 'Freshest Farm Produce' may be delayed on their next delivery.
-- Before deciding whether to source from an alternative supplier, they need to know exactly
-- which ingredients depend on that supplier, so they can assess the impact on the menu.
--
-- Hint: Write a query to find the names of all ingredients supplied by 'Freshest Farm Produce'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task4_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- อ่านโจทย์แล้วเข้าใจว่าต้องการหาวัตถุดิบ (ingredients) ทั้งหมดที่มาจาก supplier ชื่อ "Freshest Farm Produce" 
-- ข้อมูลที่ต้องใช้มี 2 ส่วน คือ ชื่อวัตถุดิบ (อยู่ในตาราง Ingredients) กับ ชื่อ supplier (อยู่ในตาราง Suppliers)
-- แต่ว่าข้อมูลอยู่คนละตาราง จึงต้องเชื่อมตารางเข้าด้วยกัน โดยใช้คอลัมน์ supplier_id ที่มีอยู่ในทั้งสองตารางเป็นตัวเชื่อม
-- จากนั้นจึงกรองข้อมูลเฉพาะแถวที่มีชื่อ supplier เป็น "Freshest Farm Produce" และเลือกแสดงเฉพาะชื่อวัตถุดิบ
-- เพราะฉะนั้นจะใช้ SELECT เพื่อเลือกชื่อวัตถุดิบ, ใช้ JOIN เพื่อเชื่อมตาราง และใช้ WHERE เพื่อกรอง supplier

-- ครั้งแรกรันแล้ว error ตรงข้อมูลบอกว่า 
-- invalid reference to FROM-clause entry for table "ingredients"
-- LINE 30: SELECT Ingredients.name
-- ^
-- HINT: Perhaps you meant to reference the table alias "i".
-- ก็เลยรู้ว่าต้องใช้ i.name เพราะได้กำหนด alias ของตาราง Ingredients เป็น i ไปแล้ว

-- ---------------------------------------------------------------
-- Code
-- ---------------------------------------------------------------

-- SELECT Ingredient.name
-- FROM Ingredients i 
-- JOIN Suppliers s 
-- ON i.supplier_id = s.supplier_id
-- WHERE s.name = 'Freshest Farm Produce'

SELECT i.name
FROM Ingredients i 
JOIN Suppliers s 
ON i.supplier_id = s.supplier_id
WHERE s.name = 'Freshest Farm Produce'