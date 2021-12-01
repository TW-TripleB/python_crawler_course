'''
1.pip3 install virtualenvwrapper-win
2.mkvirtualenv myweb 建立虛擬環境及環境名稱
3.workon ==> virtual environment list
4.deactivate ==> exit the virtual environment
5.mkdir web==> create a folder name web
6.cd web ==> switch to web
  cd.. back to last folder
7.django-admin startproject webbb ==> create a project
8.cd webbb
9. python manage.py runserver 0.0.0.0:80
---------------------------------------------------------------------

setttings
1.lang mode ==>LANGUAGE_CODE = zh-Hant  TIME_ZONE = 'Asia/Taipei'
2. make static folder and templates folder in webbb
3. TEMPLATES = dir[os.path.join(BASE_DIR,'templates').replace('\\','/')]
4. STATIC_URL = '/static/'
5. STATICFILES_DIR = (
    
    ('images',os.path.join(BASE_DIR,'images').replace('\\','/')),
    ('css',os.path.join(BASE_DIR,'css').replace('\\','/')),
    ('js',os.path.join(BASE_DIR,'js').replace('\\','/')),
    
    )

6.
import pymysql
pymysql.install_as_MySQLdb()
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': BASE_DIR / 'juicydude(1)',
        'USER':'root',
        'PASSWORD':'12345678',
        'HOST':'localhost',
        'PORT':'3306'
    }
}
7.
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'shop',
    'yahoo',
    'product',
    
]
-----------------------------------------------------
create function in prompt
1. python manage.py startapp shop

prompt for mysql

python manage.py makemigrations

python manage.py migrate

python manage.py createsuperuser
-----------------------------------------------------


view

def shop(request):
    return render(request,'shop.html')

webbb/urls

from shop.views import shop

urlpatterns = [
    path('admin/', admin.site.urls),
    path('shop/', shop),


create shop.html in templates
-------------------------
cmd

create database juicydude;
show databases;
-----------------------------

'''