# TP3

A prendre en compte que pour chaque lancement la db a besoin de 30 secondes pour s'initialiser.

## Test

Afin de tester le bon fonctionnement des conteneurs on se rendra sur l'adresse suivante : [TestRhyme](http://localhost:3000/rhymes/1) <br/>
Si le conteneur fonctionne il renverra 
```json
 {
    "message":"Rhyme found",
    "rhyme": {
        "id":1,
        "title":"Rhyme 1",
        "content":"Content of Rhyme 1",
        "userId":1,
        "parentId":null,
        "createdAt":"2021-01-01T00:00:00.000Z",
        "updatedAt":"2021-01-01T00:00:00.000Z"
    }
}
 ```

## En utilisant un Dockerfile:

```bash
$ docker network create tp3-network
$ docker run --name tp3-mysql --network tp3-network -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=rhymedb -e MYSQL_USER=Rhyme -e MYSQL_PASSWORD=89qFd4!mWy6Uyk^@MWWC -v "./TP_3-sql:/docker-entrypoint-initdb.d" -d mysql
$ docker build -t tp3-maxime .
$ docker run --name tp3-container --network tp3-network -dp 3000:3000 tp3-maxime
$ docker start tp3-container
```


## En utilisant docker compose:

Pour lancer : `docker-compose up -d`

Pour arréter : `docker-compose down`

Beaucoup plus simple