gcpのあれではdocker-compose使えませんやんか
```sh
docker run -i --name mc -v ~/minecraft-greg/data:/data -e EULA="TRUE" -e VERSION="1.7.10" -e TYPE=FORGE -e FORGEVERSION="10.13.4.1614" -e MEMORY=2G -e MIN_RAM=2G -e MAX_RAM=3G -e WHITELIST=mikan_megane -e OPS=mikan_megane -p 25565:25565 itzg/minecraft-server
```
