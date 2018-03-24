FROM fedora:latest

RUN dnf update -y && dnf install java-1.8.0-openjdk wget -y
RUN rm -rf /var/cache/dnf

RUN mkdir /opt/minecraft
WORKDIR /opt/minecraft
COPY server.jar /opt/minecraft
COPY eula.txt /opt/minecraft
EXPOSE 25565

CMD ["/usr/bin/java", "-Xmx2048M", "-jar", "/opt/minecraft/server.jar", "nogui"]
