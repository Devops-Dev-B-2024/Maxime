## Pour lancer le dockerfile:

Exécuter les commandes suivantes :
 - docker build --tag 'html_tp2' .
 - docker run -dp 8080:80 --name tp2_conteneur 'html_tp2'

Ouvrir [http://localhost:8080](http://localhost:8080)


 - 3
    - a: docker pull nginx<br />
    - b: docker image list<br />
    - d: docker run -it --rm -d -p 8080:80 --name http -v ./html:/usr/share/nginx/html nginx<br />
    la page par default est dans /usr/share/nginx/html
    - e: docker stop http<br />
    docker rm http<br />
    - f: docker cp ./html http:/usr/share/nginx/html
<br />

 - 4
    - a: ./Dockerfile
    - b: docker build --tag html_tp2 .<br />
    docker run -p 8080:80 --detach html_tp2<br />
    - c: Simplifie la mise en production dans un environnement contôlé<br />
<br />

 - 6
    - a:<br /> docker-compose.yml: sert a gerer du multi conteneurs avec des connections entre eux<br />
    docker run: sert a lancer un seul conteneu, plus adaptée pour une utilisation avec des conteneurs individuels
    - b:<br /> lancer: `docker-compose up -d`<br />
    arreter: `docker-compose down`
    - c: dans docker-compose.yml