// Task 3 Bonus: Staff Performance Review
// At the end of the month, the owner wants to reward the hardest-working cashiers.
// To decide fairly, they want to see how many orders each staff member has processed,
// with the busiest staff member appearing at the top of the list.
//
// The dataset is identical in MongoDB — the same business insight can be retrieved.
//
// Hint: Write an aggregation query on the orders collection to count the number of orders
// per staff member. Each order embeds the staff member's first and last name directly.
// The result should show each staff member's full name and their total order count,
// ordered by the count in descending order.

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
// โจทย์ต้องการเหมือนกัน คือ อยากรู้ว่าพนักงานแต่ละคนทำกี่ Oder และให้เรียงลำดับจากมากไปน้อย
// ข้อมูลอยู่ใน collection orders ซึ่งในแต่ละ order มีข้อมูลของพนักงาน (ชื่อและนามสกุล) อยู่แล้ว
// ดังนั้นไม่จำเป็นต้องเชื่อมกับ collection อื่น สามารถใช้ข้อมูลใน orders ได้เลย
// สิ่งที่ต้องทำคือรวม order ของพนักงานแต่ละคนเข้าด้วยกัน และนับจำนวน order โดยใช้ aggregation
// จากนั้นจะจัดรูปแบบผลลัพธ์ให้แสดงชื่อเต็มของพนักงาน และจำนวน order ที่ทำ และเรียงลำดับจากมากไปน้อย

// ---------------------------------------------------------------
// Code
// ---------------------------------------------------------------

use("chrome-burger-db");
// เอาไว้มาคิดต่อนะคะ T_____T
