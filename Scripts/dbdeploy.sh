    #!/bin/bash 
    date > /etc/vagrant_provisioned_at
    yum localinstall http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm -y
    yum install mysql-community-server -y
    service mysqld start
    /usr/bin/mysqladmin -u root password petclinic
    mysql -uroot -ppetclinic < /vagrant/DB/schema.sql
    mysql -uroot -ppetclinic < /vagrant/DB/data.sql
    echo "bind-address = 0.0.0.0" >> /etc/my.cnf
    service mysqld restart