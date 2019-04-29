echo "jdk begin install !"

#create java dir
java_file="/usr/local/java"


if [ ! -d "$java_file" ];
then
 mkdir $java_file
fi


cd /usr/local/java


if [ ! -f "jdk-8u131-linux-x64.tar.gz" ];
then
 wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
fi

if [ ! -d "jdk1.8.0_131" ];
then
 tar -xvf jdk-8u131-linux-x64.tar.gz
fi

#set environment
if [ -z $JAVA_HOME ];
then 
 echo " " >> /etc/profile
 echo "#set jdk8 environment" >> /etc/profile
 echo "export JAVA_HOME=/usr/local/java/jdk1.8.0_131" >> /etc/profile
 echo "PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile
fi

source /etc/profile

#export JAVA_HOME="/usr/local/java/jdk1.8.0_131"
#if ! grep "JAVA_HOME=/usr/local/java/jdk1.8.0_131" /etc/environment
#then
#    echo "JAVA_HOME=/usr/local/java/jdk1.8.0_131" | sudo tee -a /etc/environment
#    echo "export JAVA_HOME" | sudo tee -a /etc/environment
#    echo "PATH=$PATH:$JAVA_HOME/bin" | sudo tee -a /etc/environment
#    echo "export PATH" | sudo tee -a /etc/environment
#    echo "CLASSPATH=.:$JAVA_HOME/lib" | sudo tee -a /etc/environment
#    echo "export CLASSPATH" | sudo tee -a /etc/environment
#fi

# 参数
#-z   是检查字符串是否为空 
#-a   file   True   if   file   exists. 
#-d   file   True   if   file   exists   and   is   a   directory.
#-f   file   True   if   file   exists   and   is   a   regular   file.
 


echo "********************************************************************************************************************"
echo "********************************************************************************************************************"
echo " "
echo "                                            jdk is installed !"
echo "Restart the terminal or manually execute   'source /etc/profile'   for the environment variable to take effect"
echo "                            重启终端 或者 手动执行 'source /etc/profile' 使得环境变量生效"
echo " "
echo "********************************************************************************************************************"
echo "********************************************************************************************************************"

