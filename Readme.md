# Dockerfile to create a minecraft image

### Download the server jar from Mojang first
```
https://minecraft.net/en-us/download/server
```
### Build it!
```
git clone https://github.com/powellnathanj/docker-minecraft.git
mv server.jar docker-minecraft
cd docker-minecraft
mkdir world
docker build -t np-minecraft .
```

### Run it!
```
docker run -d -p 25565:25565 -v /<path to>/docker-minecraft/world:/opt/minecraft/world np-minecraft
```
