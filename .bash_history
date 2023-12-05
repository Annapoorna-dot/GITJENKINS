yum install docker
systemctl start docker
systemctl status docker
vi Dockerfile
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
vi docker-compose.yml
docker images
docker run -itd anu .
docker login
docker run -itd anu .
docker build -t anu .
docker images
docker-compose build
vi docker-compose.yml
cd /var/opt/
vi nginx
touch nginx
cd
docker-compose build
docker-compose build --force-rm --no-cache
docker-compose up -d
docker tag anu annapoorna123/test:latest
docker push annapoorna123/test:latest
