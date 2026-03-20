-- Task 2: Kitchen Staff Contact List
-- The manager has a last-minute change to the kitchen prep schedule and needs to notify
-- all cooks as soon as possible. They need the full names of every staff member
-- whose role is 'Cook' so they can be contacted directly.
--
-- Hint: Write a query to list the first_name and last_name of all staff members whose role is 'Cook'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task2_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
-- โจทย์ต้องการหารายชื่อพนักงานที่เป็น Cook โดยแสดงชื่อและนามสกุล
-- ข้อมูลน่าจะอยู่ในตาราง Staff เพราะเป็นข้อมูลพนักงาน
-- สิ่งที่ต้องทำคือเลือกเฉพาะพนักงานที่มี role เป็น Cook และแสดงเฉพาะ first_name และ last_name
-- ดังนั้นจะต้องใช้คำสั่ง SELECT และ WHERE ในการเขียน query

-- ผลจากการรันรอบแรกไม่ขึ้นข้อมูล พอดูดีๆ ใน database ใช้ role = 'Cook' <- ขึ้นต้นด้วยตัวพิมพ์ใหญ่
-- แต่เราเขียน cook ก็เลยหาข้อมูลไม่เจอ ทำให้ได้ข้อคิดว่า ถ้าข้อมูลไม่ขึ้นให้ 1.เช็คการสะกดคำ 2.เช็คตัวเล็กตัวใหญ่ 3.เช็คใน database ว่ามีข้อมูลจริงมั้ย

-- แต่พอคิดว่าถ้ามีตารางข้อมูลเยอะๆล่ะ? จะไปนั่งไล่หาไหวมั้ย เลยลองไปถามเอไอ ก็เลยได้ข้อมูลว่า ใช้คำสั่งแบบนี้ได้
-- WHERE LOWER(role) = 'cook'; คือหมายความว่าไม่สนว่าจะเป็นตัวพิมพ์ใหญ่หรือเล็กค่ะ ก็เลยทดสอบ และรันดู ใช้ได้จริงๆ
-- แต่ก็ทำให้คิดได้อีกอย่างว่า ถ้าเราเป็นคนเริ่มสร้าง database เอง ก็ควรใช้ pattern เดียวกันในการเขียน หัวข้อ ประมาณนั้นค่ะ

-- ---------------------------------------------------------------
-- Code
-- ---------------------------------------------------------------

SELECT first_name, last_name 
FROM staff
WHERE role = 'Cook';
-- WHERE LOWER(role) = 'cook';