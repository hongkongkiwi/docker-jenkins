FROM jenkins:alpine
MAINTAINER Andy Savage <andy@savage.hk>

VOLUME /var/jenkins_home

USER root

ADD https://get.docker.com/builds/Linux/x86_64/docker-latest /usr/bin/docker
RUN chmod 755 /usr/bin/docker
COPY setup-docker-and-start-jenkins.sh /
RUN chmod +x /setup-docker-and-start-jenkins.sh

ENTRYPOINT ["/setup-docker-and-start-jenkins.sh"]
