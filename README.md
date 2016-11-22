# jupyterhub-demo

Demo for the presentation to the meetup datascience in Finance.

To set up the POC :

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
