all:	clean 

clean:
	docker stop tomcat-gumballs
	docker rm tomcat-gumballs

tomcat-run:
	docker run -d --name tomcat-gumballs  --network gumball -td -v ${PWD}/tomcat -p 8080:8080 jonathannah/gumballs

tomcat-start:
	docker exec -d tomcat-gumballs  /etc/rc.d/init.d/tomcat start

