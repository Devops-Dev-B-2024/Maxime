# Exercice 1

Dans cet exercice nous allons identifié les pratiques de mon alternance, les outils utilisés et les bons point avec les blocages trouvés dans l'entreprise

## Sommaire 
 - [Silots](#silots)
 - [Pratiques DevOps](#pratiques-devops)
 - [Build](#processus-de-build)
 - [Déploiement](#processus-de-déploiement)
 - [Release](#processus-de-release)
 - [Tests](#méthode-de-test)
 - [Blocages et bons points](#productivité)
 - [Outils](#outils-utilisés)

## SILOTS
Dans mon entreprise, un silot s'est développé depuis le confinement. La mise en vigueur du télétravail a poussé 3 dev à l'appliquer tout les jours, ce qui les as écarté de la communication quotidienne. Les seuls nouvelle venant de ces devs viennent du dev meeting hebdomadaire.

## PRATIQUES DEVOPS

J'utilise des pipelines sur Azure devops

## PROCESSUS DE BUILD

Le build se fait automatiquement à chaque nouveau merge sur les branches de dev/master grâce aux pipelines

## PROCESSUS DE DÉPLOIEMENT

Comme pour le build, le déploiement est automatique

## PROCESSUS DE RELEASE

Toujours géré par les pipeline seulement pour une release, la partie production se doit de tester toutes les nouvelles features

## MÉTHODE DE TEST

Les tests sont fait unitairement et "manuellement" par la production

## PRODUCTIVITÉ
### AVANTAGES

Moins de temps de compilation grâce à des compilations automatiques

### INCONVÉNIENTS

Les erreurs de build font perdre beaucoup de temps car elles sont très peu précises

## OUTILS UTILISÉS

 - Azure
 - Microsoft Visual Studio (C#)
 - Windows 11
 - Forticlient (pour le télétravail)
