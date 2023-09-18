1. Python3.7.16の最新化、djangoの導入
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

    djangoの導入
```
    pip3 install django

```

2. Docker Composeの導入
```
sudo yum update -y
sudo yum install -y docker
sudo amazon-linux-extras install docker

sudo systemctl enable docker
sudo systemctl start docker
```

3. Terraformの導入
```
sudo yum update -y
LATEST_TERRAFORM_VERSION=$(curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d '"' -f 4)

```