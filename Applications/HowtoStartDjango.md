# Djangoのプロジェクト生成方法
django_project=djangotest
django-admin startproject ${django_project}

# Djangoの起動方法
django_project=djangotest
python3.11 ./${django_project}/manage.py runserver 10.0.2.109:8000

# Web画面を公開したい
./${django_project}/${django_project}/settings.py
  ALLOWED_HOSTS = ['*'] を設定
ブラウザからアクセス
http://3.112.199.131:8000/
