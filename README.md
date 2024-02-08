# ça marche super bien (non)

## Utilisation

```bash
docker build -t mvc .
```

```bash
docker run mvc
```

### Fonctionnement
> ça fonctionne pas, le serveur symfony se lance mais on ne peut pas y accéder sur le localhost
![image](https://github.com/blancos-code/Docker-tp-final/assets/79577721/83fd9731-fcf9-40fd-96d6-687dc62f842a)


## Base de donnée
Dans le dossier `bdd` il y a un `Dockerfile` pour créer une base avec mysql.
```bash
docker build -t bdd .
```

```bash
docker run bdd
```

C'est sympa mais le reste marche 
