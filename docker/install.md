
# Installing Docker 
```
sudo apt  install docker.io


```

# install docker-compose
```
sudo wget https://raw.githubusercontent.com/lerndevops/labs/master/scripts/installDockerCompose.sh -P /tmp
sudo bash /tmp/installDockerCompose.sh
```

# Step 1: Add Your User to the Docker Group

### Add your current user to the docker group:

```
sudo usermod -aG docker $USER

```
# Log out and back in for the group change to take effect. Alternatively, you can restart your session by running:
