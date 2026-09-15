UNISERVE REGISTER + LOGIN
Eclipse IDE | JDK 26 | Tomcat 9 | Servlet | DAO | JDBC | MySQL 8.0

1) IMPORT
- Eclipse -> File -> Import -> Existing Projects into Workspace.
- Select this project folder.
- Targeted Runtime: Apache Tomcat v9.0.
- JRE: JDK 26.

2) MYSQL 8.0 COMMAND LINE
Run:
    SOURCE database/uniserve.sql;
Then verify:
    USE uniserve;
    SHOW TABLES;
    SELECT * FROM users;

3) MYSQL PASSWORD
Open src/main/java/dao/DBConnection.java and change YOUR_MYSQL_PASSWORD to your own MySQL root password.
Default port is 3306. If SHOW VARIABLES LIKE 'port'; gives another port, update the JDBC URL.

4) MYSQL CONNECTOR/J
Put mysql-connector-j-8.0.33.jar into src/main/webapp/WEB-INF/lib/. The .classpath already points there.

5) TEST CONNECTION
Run dao.TestConnection as Java Application. Expected: DATABASE CONNECTED SUCCESSFULLY.

6) RUN
Right click project -> Run As -> Run on Server -> Tomcat 9.
Open http://localhost:8080/Uniserve1/register.jsp

7) REGISTER FLOW
register.jsp -> registerServlet -> UserDAO -> DBConnection/JDBC -> MySQL users -> login.jsp

8) LOGIN FLOW
login.jsp -> LoginServlet -> UserDAO -> MySQL -> HttpSession -> index.jsp

9) LOGOUT
Open /logout to invalidate the session.

IMPORTANT: Tomcat 9 uses javax.servlet.*. Do NOT replace imports with jakarta.servlet.*.
