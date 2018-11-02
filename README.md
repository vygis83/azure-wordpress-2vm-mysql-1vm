# azure-wordpress-2vm-mysql-1vm
ARM template to create 2 Ubuntu web servers with Wordpress in availability set and Mysql VM backend

Add the resource group name to <b>start_deployment.ps1</b> script and run it. After deployment completes creste 'wordpress' database on mysql server and edit <b>wp-config.php</b> file on both web servers to point to backend database.
