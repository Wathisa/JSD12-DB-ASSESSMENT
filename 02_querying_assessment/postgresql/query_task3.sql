-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.
--
-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- โจทย์ต้องการดูว่าพนักงานแต่ละคนทำออเดอร์ไปกี่รายการ และแสดงชื่อเต็มของพนักงาน พร้อมทั้งเรียงลำดับจากมากไปน้อย
-- ต้องใช้ข้อมูลจาก 2 ตาราง คือ Staff และ Orders และต้องนับจำนวนออเดอร์ของพนักงานแต่ละคนด้วย 
-- เท่าที่คิดตอนนี้ น่าจะใช้คำสั่ง COUNT , GROUP BY , ORDER BY 

-- ตอนแรกพยายามเขียน query เพื่อดึงชื่อและนามสกุลของพนักงาน พร้อมกับนับจำนวน order ที่แต่ละคนทำ โดยใช้ COUNT และ GROUP BY
-- ในตอนแรกยังไม่ได้ตั้งชื่อให้ COUNT และมีการใส่ ; หลัง GROUP BY ทำให้เกิด error ตอนใช้ ORDER BY
-- อ่านจาก error ที่ขึ้นมา จะมีบอกว่าผิดตรงบรรทัดไหน เลยช่วยได้เยอะในการหาทางแก้จุดที่ผิด
-- แก้ไขโดยเอา ; ออก และเพิ่ม alias ให้ COUNT เป็น total_orders เพื่อให้สามารถใช้ ORDER BY ได้
-- หลังจากแก้ไขแล้ว สามารถเรียงลำดับพนักงานจากคนที่ทำออเดอร์มากที่สุดไปน้อยที่สุดได้ถูกต้อง แต่ยังไม่ถูกทั้งหมด เพราะตารางชื่อกับนามสกุลแยกกันอยู่

-- ในโจทย์บอกว่าให้รวมเป็น full name (concatenated) ด้วย ก็เลยไปดูใน slide ที่เรียนมา แต่หาไม่เจอ (หรือเพราะตาลายแล้ว @_@)
-- เลยถามเอไอ ได้ความว่า ใช้คำสั่ง CONCAT คือเอาข้อความมาต่อกัน เช่น CONCAT('Hello', 'World'); ข้อความจะติดกันเลย
-- แต่ถ้าอยากเว้นวรรคระหว่างข้อความด้วย ให้ใส่ ' ' เพิ่มไประหว่างคำหรือข้อมูลนั้นๆ เช่น CONCAT('Hello', ' ', 'World');

-- ---------------------------------------------------------------
-- Code
-- ---------------------------------------------------------------

-- SELECT s.first_name, s.last_name, 
--   COUNT(o.order_id) AS total_orders
-- FROM Staff s
-- JOIN Orders o ON s.staff_id = o.staff_id
-- GROUP BY s.staff_id
-- ORDER BY total_orders DESC;

SELECT 
  CONCAT(s.first_name, ' ', s.last_name) AS full_name,
  COUNT(o.order_id) AS total_orders
FROM Staff s
JOIN Orders o ON s.staff_id = o.staff_id
GROUP BY s.staff_id
ORDER BY total_orders DESC;