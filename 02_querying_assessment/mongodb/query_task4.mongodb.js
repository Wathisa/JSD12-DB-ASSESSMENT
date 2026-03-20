// Task 4: Total Revenue Summary
// At the end of the trading period, the owner wants a single figure that shows how much revenue
// the truck has generated across all recorded orders. This number will be used in their
// financial summary report, so the result should be returned as a single value named total_revenue.
//
// Hint: Write an aggregation query on the orders collection to calculate the total revenue from all orders combined.
// The result should be a single document with a field named total_revenue.

// Bonus: The dataset is identical in the PostgreSQL database, meaning the same business insight can be retrieved.
// Write the equivalent query for PostgreSQL. See query_task4_bonus.sql

// ---------------------------------------------------------------
// Your thinking process (required)
// ---------------------------------------------------------------
// Before writing your query, explain in your own words how you
// interpreted the task, what data you need, which collection(s)
// are involved, and what MongoDB concepts you plan to use.
// Write in English or Thai. Do not skip this step.
//
// Your thinking:
// โจทย์ต้องการหายอดรวมรายได้ทั้งหมดจากทุก order โดยใช้ข้อมูลจาก collection orders
// ข้อมูลที่ต้องใช้คือ total_price ของแต่ละ order และต้องนำมาบวกกันทั้งหมดเพื่อให้ได้ค่าเดียว
// hint บอกให้เขียน aggregation เราเลยต้องใช้ $group เพื่อรวมข้อมูลทั้งหมด และใช้ $sum เพื่อรวมค่า total_price
// โดยกำหนด _id เป็น null เพื่อรวมทุก document เข้าด้วยกัน และแสดงผลเป็น field ชื่อ total_revenue ค่ะ

// ---------------------------------------------------------------
// Code
// ---------------------------------------------------------------

use("chrome-burger-db");
db.orders.aggregate([
  {
    $group: {
      _id: null,
      total_revenue: { $sum: "$total_price" },
    },
  },
]);
