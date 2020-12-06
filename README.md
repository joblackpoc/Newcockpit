# Cockpit is Project about KPI Report 2020
## Python Django 3.0.9

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update

apt list | grep python3.8
sudo apt-get install python3.8
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 9
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 6
sudo update-alternatives --config python3
2
python3 -V

sudo apt remove python3-apt
sudo apt install python3-apt

sudo apt-get install python3.8-dev 
sudo apt-get install mysql-client
sudo apt-get install libsqlclient-dev
sudo apt-get install libssl-dev
sudo apt-get install libmysqlclient-dev
sudo pip3 install mysqlclient


asgiref==3.2.10
boto3==1.14.38
beautifulsoup4==4.9.1
bs4==0.0.1
bootstrap4==0.1.0
Django==3.1
django-bootstrap==0.2.4
django-ckeditor==5.9.0
django-chartjs==2.2.1
dj-chartjs==1.0.6
django-cleanup==5.0.0
django-cors-headers==3.4.0
django-crispy-forms==1.9.2
django-filter==2.3.0
django-js-asset==1.2.2
django-mysql==3.8.1
djangorestframework==3.11.1
django-storages==1.9.1
django-widget-tweaks==1.4.8
gunicorn==20.0.4
jmespath==0.10.0
mysql-client==0.0.1
mysql-connector==2.2.9
mysqlclient==2.0.1
numpy==1.19.1
pandas==1.1.0
Pillow==7.2.0
pylint==2.5.3
pylint-django==2.2.0
pylint-plugin-utils==0.6
python-dateutil==2.8.1
pytz==2020.1
requests==2.24.0
s3transfer==0.3.3
selenium==3.141.0
six==1.15.0
sqlparse==0.3.1
soupsieve==2.0.1
urllib3==1.25.10
virtualenv==20.0.30
whitenoise==5.2.0