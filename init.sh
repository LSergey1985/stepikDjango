sudo git config --global user.email "latinserg@mail.ru"
sudo git config --global user.name "LSergey1985"
sudo rm /etc/nginx/sites-enabled/default

sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello
sudo ln -s /home/box/web/etc/django.conf /etc/gunicorn.d/django
sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start
