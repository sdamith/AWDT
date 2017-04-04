
#AUTHOR : SARADA DAMITH
#VERSION : 0.0.1
#THIS IS PROVISSION FILE FOR BASIC ENVIORNMENT FOR THE VAGRANT SERVER
#THIS INCLUDE Git, Apache2, PHP 5.6, MYSQL 5.6, 

sudo apt-get -y update

#Install Git
sudo apt-get install -y git 

#Install Apache 
echo -e "\n--- Installing Apache ---\n"
sudo apt-get -y install apache2 

#Install PHP 
sudo apt-get install software-properties-common python-software-properties -y

sudo add-apt-repository ppa:ondrej/php5.6 -y
sudo apt-get -y update

sudo apt-get -y install libapache2-mod-php5.6
sudo apt-get -y install php5 php-pear php5-curl php5-mysql php5-gd php5-mcrypt curl php5-json php5-imagick

sudo apt-get -y install php5.6-mbstring
sudo apt-get -y install php5.6-gettext
sudo apt-get -y install php5.6-mysql

sudo service apache2 restart

#Install Mysql

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1234'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1234'

# Variables
APPENV=local
DBHOST=localhost
DBNAME=default_db
DBUSER=root
DBPASSWD=1234

sudo apt-get -y update
sudo apt-get -y install mysql-server-5.6

# Victory!
echo "You're all done!  Your server is now running."