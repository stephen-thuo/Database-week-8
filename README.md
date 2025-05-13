Library Management System 
Description
The Library Management System API is a powerful web application designed to facilitate the efficient management of library resources. 
This API provides a comprehensive set of features that allow users to handle various aspects of library operations, including managing books, users, payments, and borrowing records.

The key functionalities include:
Add New Books
View All Books
Update Book Details
Delete Books
Manage User Registrations
Record Payments
Track Borrowing Records 

The database is powered by MySQL and the backend is built using Node.js and Express, 
 How to Set Up/Run the Project
1. Clone the Repository
   bash
   git clone https://github.com/stephen-thuo/library-management-system.git
   cd library-management-system
   

2. Install Dependencies
   Ensure you have Node.js installed. Then run:
   bash
   npm install
   

3. Set Up the Database
   Import the library_management.sql file into your MySQL database using:
   bash
   mysql -u root -p < library_management.sql
   

4. Configure Environment Variables
   Create a .env file in the root of your project and add the following:
   plaintext
   DB_HOST=localhost
   DB_USER=root
   DB_PASSWORD=your_password
   DB_NAME=library_management
   PORT=8080
   

5. Run the Project
   Start the application using:
   bash
   npm start
   
   The server should now be running at http://localhost:8080.

6. API Routes
GET /books
POST /books
PUT /books/:id
DELETE /books/:id
GET /users
POST /users
GET /payments
POST /payments
GET /records
POST /records
