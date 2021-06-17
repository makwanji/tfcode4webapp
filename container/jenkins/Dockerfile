FROM jenkins/jenkins
LABEL maintainer=”makwana.jignesh@live.com”

USER root
RUN mkdir /var/log/jenkins

RUN chown -R  jenkins:jenkins /var/log/jenkins
USER jenkins


ENV JAVA_OPTS="-Xmx1024m"
ENV JENKINS_OPTS=" --handlerCountMax=300"

# docker run -p 8080:8080 --name=jenkins-master -d myjenkins