FROM ubuntu 
MAINTAINER praveen
LABEL version=v1
RUN apt-get update && apt-get install default-jre maven git -y
COPY ./bhagavan.war /home/ec2-user/docker/tomcat/webapps/ 
WORKDIR /home/ec2-user/docker/tomcat/bin/
ENTRYPOINT /home/ec2-user/docker/tomcat/bin/
RUN bash ./startup.sh
CMD ["sh","/home/ec2-user/docker/tomcat/bin/startup.sh"]
