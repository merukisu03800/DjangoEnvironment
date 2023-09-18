1. Python3.7.16の最新化
    openssl1.1の導入(Python3.10からopenssl1.1系必須)
    openssl1.0系の削除
```
    sudo yum -y remove openssl-devel
```
    openssl1.1系の導入
```
    sudo yum install -y openssl11 openssl11-devel
    openssl11 version
```
    pyenvの導入
```
    sudo yum install ―y gcc make zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel xz-devel
    git clone https://github.com/yyuu/pyenv.git ~/.pyenv
    cp -p .bashrc .bashrc_orig
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc
    source ~/.bashrc
```
    Python3.11.2の導入
```
    pyenv install 3.11.2
    pyenv global 3.11.2
    python --version
```

2. djangoの導入
```
    pip3 install django

```