<?php

$host = "host='192.168.81.131'";

$dbname = "dbname='votaciones'";

$user = "user='sysadmin'";

$password = "password='strongpassword1'";

$conn = pg_connect("$host $dbname $user $password");
