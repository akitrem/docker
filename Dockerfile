FROM ubuntu

RUN apt update
RUN apt install -y openjdk-8-jdk
RUN apt install -y default-jre
RUN apt install curl -y
RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | tee /etc/apt/sources.list.d/jenkins.list > /dev/null'
RUN apt update
RUN apt install jenkins -y
EXPOSE 8080
