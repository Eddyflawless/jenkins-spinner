FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update -y && apt-get install -y lsb-release && \
    apt-get install python3-jenkins-job-builder

USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.25.3 docker-workflow:1.28"