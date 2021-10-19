# vecenter-emulator

Virtual Emulator for Vcenter server

# Building the Container

To build and start the container, simply run the docker-compose up -d command

```
docker-compose up -d
```

# Connecting

The certificate for your vcenter server is for example.com - So to access you must update your hostfile to point "example.com" to your local machine. Eg
```
127.0.0.1 example.com
```

Your Vcenter server API now available locally at https://example.com:8443

Additionally, you can exec into the docker container to run vcgo commands (Examples in resources below)

```
docker exec -it vcenter bash
```

# Resources

Project: https://github.com/vmware/govmomi/tree/master/vcsim
Resouce Names: https://github.com/vmware/govmomi/tree/master/vcsim#customizing-inventory
govc commands: https://fabianlee.org/2019/03/09/vmware-using-the-govc-cli-to-automate-vcenter-commands/
