// Task 2: Shift Activity Report
// Jane Doe has an upcoming performance review and the manager wants to look at her order history
// ahead of the meeting. They only need to see when each order was placed and what it was worth —
// no other details are required for this particular review.
//
// Hint: Write a query to find all orders handled by the staff member "Jane Doe".
// Your query should only return the order_date and total_price fields for these orders.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task2_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
// โจทย์ต้องการดูรายการ orders ที่พนักงานชื่อ Jane Doe เป็นผู้จัดการ โดยต้องการแสดงเฉพาะวันที่ของ order และราคารวมเท่านั้น
// ข้อมูลที่ต้องใช้คือ orders เพราะใน orders จะมีข้อมูลว่าใครเป็นผู้รับผิดชอบ order นั้นอยู่แล้ว ดึงออกมาได้เลย
// ต้องกรองข้อมูลเฉพาะ orders ที่เป็นของ Jane Doe และเลือกแสดงเฉพาะ field ที่ต้องการ คือ order_date และ total_price
// โดยจะใช้ find() เพื่อค้นหาข้อมูล และใช้การระบุ field เพื่อเลือกแสดงเฉพาะข้อมูลที่ต้องการ

// ตอนแรกรันแล้วมี id ขึ้นมาด้วย เลยใส่ _id: 0 เพื่อไม่ให้โชว์ข้อมูล id ค่ะ

// ---------------------------------------------------------------
// Code
// ---------------------------------------------------------------

use("chrome-burger-db");
// db.orders.find(
//   {
//     "staff.first_name": "Jane",
//     "staff.last_name": "Doe",
//   },
//   {
//     order_date: 1,
//     total_price: 1,
//   },
// );

db.orders.find(
  {
    "staff.first_name": "Jane",
    "staff.last_name": "Doe",
  },
  {
    order_date: 1,
    total_price: 1,
    _id: 0,
  },
);
