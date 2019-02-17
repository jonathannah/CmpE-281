all: clean 

clean:
	docker stop mysql
	docker rm mysql
	
mysql-run:
	docker run -d --name mysql --network gumball -td -v ${PWD}:/Gumballs  -p 3306:3306 -e MYSQL_ROOT_PASSWORD=query mysql:5.5

mysql-build-table:
	docker exec -it mysql bash /Gumballs/buildgumballtables

mysql-shell:
	docker exec -it mysql bash 

docker-clean: clean

