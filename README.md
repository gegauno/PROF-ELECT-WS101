# QueSys

<p><b>QueSys</b>It is a simple Python Web Based Queueing App using Flask Framework and MaterializeCSS as Front End that works on Raspberry Pi 3 B+.</p>

## Prerequisite:
> * Basic knowledge to Programming (Python).
> * Basic knowledge of MySQL databases.
> * Basic knowledge of Electronics.

## Requirement:
[![Python3](https://www.python.org/static/img/python-logo.png)](https://www.python.org/downloads/)
[![Raspberry Pi 3 B+](https://www.raspberrypi.org/homepage-9df4b/favicon.png)](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/)
[![Flask](https://palletsprojects.com/logo-large.png)](https://palletsprojects.com/p/flask/)

## Installation:
1. Install all Python3 Libraries: <code>sudo pip3 install -r requirements.txt</code> Windows <code>pip install mysqlclient-1.4.4-cp38-cp38-win_amd64.whl</code>Link: (https://sourceforge.net/projects/sox/files/sox/14.4.2/)
2. Linux: <code>apt install python3-mysqldb mariadb-server python3-flask sox</code> 
3. Login to MariaDB Console: <code>sudo mysql -u root</code>
4. Create Login Credentials on MariaDB: 
    <code>DROP USER 'root'@'localhost';</code>
    <code>CREATE USER 'root'@'localhost' IDENTIFIED BY 'password';</code>
    <code>GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost'</code>
4. Create a database: <code>CREATE DATABASE db_queuing</code><code>user db_queuing;</code>
5. Import the SQL File: <code>source db_queuing.sql</code>
6. Run the App: <code>sudo python3 main.py</code>

[![Compatibility](https://img.shields.io/badge/python-3-brightgreen.svg)](https://github.com/mboy1011/PROF-ELECT-WS-101.git)
[![License](https://img.shields.io/apm/l/vim-mode.svg)](https://github.com/mboy1011/PROF-ELECT-WS-101.git)

