# munki-repo
Container to server munki repository

```sh
docker run -v /User/Shared/munki_repo:/munki_repo stevekueng/munki-docker --name munkirepo
```
```sh
docker exec munkirepo htpasswd -c /munki_repo/.htpasswd munkiuser
```