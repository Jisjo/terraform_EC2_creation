#!/bin/bash

yum install httpd -y

echo "<h1>This is a terrafom created website</h1>"  > /var/www/html/index.html

systemctl start httpd
systemctl enable httpd
