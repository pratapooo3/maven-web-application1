sudo apt-get update
sudo apt-get install openjdk-8-jdk -y

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -


sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'


sudo apt-get update


sudo apt-get install jenkins -y

sudo apt-get install maven -y
curl -sSL https://get.docker.com/ | sh
sudo service docker start
sudo usermod -aG docker $(id -un)

sudo usermod -aG docker jenkins

java -version
mvn -version
docker info

##sudo systemctl start jenkins
sudo systemctl status jenkins

