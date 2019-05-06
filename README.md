requirements:

node, docker and nginx

using the API:

`$ cd null-pagamentos`

`$ chmod + x deploy.sh`

`$ sudo ./deploy.sh`

`cd nginx-docker`

`$ sudo docker build -t load-balance-nginx .`

`$ sudo docker run -p 8080:80 -d load-balance-nginx`

test:

`$ curl localhost/`

`$ curl localhost/validar/12345678900`
