# Hyper-typer

A web app to for improving Typing speed via games.
This app includes two javascript based games, that will help the beginner to improve his/her typing speed.
Database of the project has been uploaded named ht.sql.

# Hyper-typer

## Overview
**Hyper-typer** is a web application designed to help users improve their typing speed through interactive games. The app includes two JavaScript-based games specifically aimed at beginners who wish to enhance their typing skills. The application is built using Java, JSP, and MySQL, with the project managed and built using Ant build tools. 

## Features
- **Typing Games:** Two interactive JavaScript-based games to help users improve their typing speed.
- **User Registration and Login:** Users can create accounts, log in, and track their typing progress.
- **Speed Calculation:** The application calculates and displays the typing speed in words per minute (WPM).
- **Data Persistence:** User data is securely stored in a MySQL database.
- **Game Progress Tracking:** Users can monitor their progress over time.

## Project Structure
- **Backend:** Java
- **Frontend:** JSP, JavaScript
- **Database:** MySQL
- **Build Tool:** Apache Ant
- **Web Server:** Apache Tomcat

## Setup and Installation
### Step 1: Install MySQL Server
1. **Download and Install MySQL:**
   - Install MySQL server on your machine from the official website.
   - During installation, set up a username and password for MySQL access.
2. **Build the Application:**

   - Use Ant build tools to compile the project and package it into a WAR (Web Application Archive) file:
     ```bash
     ant build
     ```
   - The WAR file will be generated in the `dist` directory.
### Step 3: Deploy the Application on Tomcat

1. **Download and Install Tomcat:**
   - Download Apache Tomcat from the official website and install it on your machine.

2. **Deploy the WAR File:**
   - Copy the generated `hyper-typer.war` file to the `webapps` directory of your Tomcat installation.
   - Start the Tomcat server using the following command:
     ```bash
     sudo startTomcat
     ```
3. **Access the Application:**
   - Open a web browser and navigate to `http://localhost:8080/hyper-typer` to access the application.
### Step 4: Running the Application

- **Sign Up and Login:**
  - New users can sign up using the registration form. Once registered, user data is saved in the `ht` database.
  - Users can log in and start playing the typing games to track and improve their typing speed.
- **Playing the Games:**
  - The application includes two typing games. Users can select a game and start typing the displayed alphabets or words to measure their typing speed.

## Conclusion
Hyper-typer is a comprehensive web application that offers an engaging way for users to improve their typing skills. With its robust backend, interactive frontend, and secure data storage, the application is an ideal tool for beginners to practice and monitor their typing progress.

# MySQL Server Setup and Apache Tomcat 9.0.65 Installation Guide
### Step 1: Update the Package Index
First, update the package index on your system to ensure all packages are up to date:
```bash
sudo apt update
```
### Step 2: Install MySQL Server
Install the MySQL server package:
```bash
sudo apt install mysql-server
```
### Step 3: Secure MySQL Installation
Log in to the MySQL shell as the root user:
```bash
sudo mysql -u root
```
Set a password for the root user and update the authentication method:

```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
FLUSH PRIVILEGES;
```
> **Note:** Replace `'password'` with a secure password of your choice.
Exit the MySQL shell:

```bash
exit;
```

### Step 4: Log In to MySQL with the New Password
Log in again using the new password:
```bash
sudo mysql -u root -p
```
Enter the password you set in the previous step.

### Step 5: Create a New Database
Create a new database for your project:
```sql
CREATE DATABASE ht;
```
Switch to the new database:

```sql
USE ht;
```
### Step 6: Create the `login` Table
Create the `login` table to store user data:

```sql
CREATE TABLE `login` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `score` int(3) NOT NULL DEFAULT 0,
  `score2` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
```

## Apache Tomcat 9.0.65 Installation and Configuration Guide

### Prerequisites
- A Linux-based operating system with sudo privileges.
- Basic knowledge of Linux command-line operations.

### Step 1: Download and Extract Tomcat

Switch to the root user:

```bash
sudo su
```

Navigate to the `/opt` directory:

```bash
cd /opt
```

Download the Apache Tomcat 9.0.65 tarball:

```bash
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz
```
Extract the downloaded tarball:
```bash
sudo tar -xvf apache-tomcat-9.0.65.tar.gz
```
### Step 2: Configure Tomcat Users
Navigate to the Tomcat configuration directory:
```bash
cd /opt/apache-tomcat-9.0.65/conf
```
Edit the `tomcat-users.xml` file to add an admin user:

```bash
sudo vi tomcat-users.xml
```
Add the following line before the closing `</tomcat-users>` tag:
```xml
<user username="admin" password="admin1234" roles="admin-gui,manager-gui,manager-script"/>
```
> **Note:** Replace `admin1234` with a secure password.
### Step 3: Create Start and Stop Scripts
Create symbolic links for the Tomcat start and stop scripts:
```bash
sudo ln -s /opt/apache-tomcat-9.0.65/bin/startup.sh /usr/bin/startTomcat
sudo ln -s /opt/apache-tomcat-9.0.65/bin/shutdown.sh /usr/bin/stopTomcat
```
These links allow you to start and stop Tomcat using the `startTomcat` and `stopTomcat` commands from any directory.

### Step 4: Modify Access Restrictions
Edit the `context.xml` file for the Manager web application:

```bash
sudo vi /opt/apache-tomcat-9.0.65/webapps/manager/META-INF/context.xml
```

Comment out the `RemoteAddrValve` configuration:

```xml
<!--
<Valve className="org.apache.catalina.valves.RemoteAddrValve"
allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />
-->
```
This change removes the restriction that only allows access to the Manager application from localhost.
Edit the `context.xml` file for the Host Manager web application:

```bash
sudo vi /opt/apache-tomcat-9.0.65/webapps/host-manager/META-INF/context.xml
```
Comment out the `RemoteAddrValve` configuration:

```xml
<!--
<Valve className="org.apache.catalina.valves.RemoteAddrValve"
allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />
-->
```
This change removes the restriction that only allows access to the Host Manager application from localhost.

### Step 5: Deploy the WAR File
To deploy your `Hyper-typer` application, copy the WAR file into the Tomcat webapps directory:

```bash
cp -r dist/Hyper-typer.war /opt/apache-tomcat-9.0.65/webapps/
```
Once the WAR file is copied, Tomcat will automatically deploy the application.

### Starting and Stopping Tomcat

To stop Tomcat:
```bash
sudo stopTomcat
```
To start Tomcat:
```bash
sudo startTomcat
```
These commands will control the Tomcat server's operation.
## Screenshots

Here are some screenshots of the `Hyper-typer` project:
1. **Homepage/Singup/Login**

   Description: This is the main page of the Hyper-typer application where users can start typing games to test their typing speed.
2. **Typing Game**
 
   ![Screenshot 2024-08-15 013844](https://github.com/user-attachments/assets/d82c4cd9-4080-4b82-9550-67f82039525c)

   Description: This screenshot shows the typing game interface where users can improve their typing speed through interactive exercises.
## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```


