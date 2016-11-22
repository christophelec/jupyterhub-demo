echo 'Removing exited containers'
docker rm `docker ps -f 'status=exited' -qa`

echo 'Removing dangling images'
docker rmi `docker images -q --filter 'dangling=true'`

echo 'Removing dangling volumes !!'
docker volume rm `docker volume -qf 'dangling=true'`
