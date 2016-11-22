# jupyterhub-demo

Demo for the presentation to the meetup datascience in Finance.

To set up the POC :

1. You'll need the following env vars in a file _.env_ at the root of the repo
```
DOCKER_NETWORK_NAME=jupyter
DOCKER_NOTEBOOK_IMAGE=custom_notebook
DOCKER_NOTEBOOK_DIR=/work
DOCKER_SPAWN_CMD=start-singleuser.sh
DATA_VOLUME_HOST=jupyterhub-data
DATA_VOLUME_CONTAINER=/data
GITHUB_CLIENT_ID=
GITHUB_CLIENT_SECRET=
OAUTH_CALLBACK_URL=https://0.0.0.0/hub/oauth_callback
HOST_ARTIFACTORY_HOME=/home/<youruser>/Dev/artifactory_home
```
You can find GitHub client ID and secret by following registering 
your application [here](https://github.com/settings/developers)
The host artifactory home is the volume were Artifactory data will be mounted, 
you can pick any folder really

1. Build the custom notebook
```
cd custom_notebook
docker build -t custom_notebook .
```

2. Launch Artifactory + the Jupyter Server
```
cd <root_of_the_repo>
docker-compose up
```

3. Create a remote repository on artifactory called _global-pypi_. User password is admin password. URL is 0.0.0.0:8081

4. You're all set, you can connect to JupyterHub ! https://0.0.0.0
