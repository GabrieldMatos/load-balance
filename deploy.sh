#balance options
balance_port1="8081"
balance_port2="8082"
balance_port3="8083"
balance_port4="8084"
balance_port5="8085"

#building new image
sudo docker build -t null-pagamentos .

#stopping previous version
sudo docker stop null-pagamentos-1
sudo docker stop null-pagamentos-2
sudo docker stop null-pagamentos-3
sudo docker stop null-pagamentos-4
sudo docker stop null-pagamentos-5

#removing images and containers
sudo docker container rm null-pagamentos-1
sudo docker container rm null-pagamentos-2
sudo docker container rm null-pagamentos-3
sudo docker container rm null-pagamentos-4
sudo docker container rm null-pagamentos-5
sudo docker image rm null-pagamentos

#starting new containers
sudo docker run --name null-pagamentos-1 -p $balance_port1:8080 -d null-pagamentos
sudo docker run --name null-pagamentos-2 -p $balance_port2:8080 -d null-pagamentos
sudo docker run --name null-pagamentos-3 -p $balance_port3:8080 -d null-pagamentos
sudo docker run --name null-pagamentos-4 -p $balance_port4:8080 -d null-pagamentos
sudo docker run --name null-pagamentos-5 -p $balance_port5:8080 -d null-pagamentos
