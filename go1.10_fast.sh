echo "golang begin install !"

#create golang dir
go_file="/usr/local/golang"


if [ ! -d "$go_file" ];
then
 mkdir $go_file
fi


cd /usr/local/golang

# file name  go1.10.3.linux-amd64.tar.gz
# https://studygolang.com/dl/golang/go1.10.3.linux-amd64.tar.gz

if [ ! -f "go1.10.3.linux-amd64.tar.gz" ];
then
# --header "Cookie: oraclelicense=accept-securebackup-cookie"  
 wget --no-check-certificate --no-cookies    https://studygolang.com/dl/golang/go1.10.3.linux-amd64.tar.gz
fi

if [ ! -d "go" ];
then
 tar -xvf go1.10.3.linux-amd64.tar.gz
fi

if [ -z $GOROOT ];
then 
 echo " " >> /etc/profile
 echo "#set golang environment" >> /etc/profile
 echo "export GOROOT=/usr/local/golang/go" >> /etc/profile
 echo "PATH=\$PATH:\$GOROOT/bin" >> /etc/profile
fi

source /etc/profile
#set environment
#export JAVA_HOME="/usr/local/java/jdk1.8.0_131"
#if ! grep "JAVA_HOME=/usr/local/java/jdk1.8.0_131" /etc/environment
#then
#    echo "JAVA_HOME=/usr/local/java/jdk1.8.0_131" | sudo tee -a /etc/environment
#    echo "export JAVA_HOME" | sudo tee -a /etc/environment
#    echo "PATH=$PATH:$JAVA_HOME/bin" | sudo tee -a /etc/environment
#    echo "export PATH" | sudo tee -a /etc/environment
#    echo "CLASSPATH=.:$JAVA_HOME/lib" | sudo tee -a /etc/environment
#    echo "export CLASSPATH" | sudo tee -a /etc/environment
# fi

# 参数
#-z   是检查字符串是否为空 
#-a   file   True   if   file   exists. 
#-d   file   True   if   file   exists   and   is   a   directory.
#-f   file   True   if   file   exists   and   is   a   regular   file.
 


echo "golang is installed !"
echo "重启终端 或者 手动执行 source /etc/profile 使得环境变量生效"