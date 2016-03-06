# Dockerfile of Xtreme Refactoring Deathmatch

## Pour utiliser ce Dockerfile

Rien de plus simple :  
1. Installer la dernière version de Docker  
2. Ouvrir une console  
3. Copier le fichier Dockerfile à la racine du Workspace du code "participant" (i.e. au même niveau que le répertoire `src`)  
4. Lancer un `mvn clean package` dans le workspace "participant"  
5. Lancer la commande `docker build -t xrefacto-attendee-env .` qui aura pour effet de créer une image nommée xrefacto-attendee-env  
6. Boire un café le temps que l'image se construise  
7. Lancer un conteneur : `docker run --rm -it --name "first-challenger" xrefacto-attendee-env` qui lancera donc un conteneur nommé "first-challenger" depuis l'image construite au point 5. Attention, le conteneur sera automatiquement détruit après extinction. Pour quitter sans fermer, il suffit d'un `^P^Q`. Pour revenir, il suffit de faire `docker attach first-challenger` (si notre conteneur s'appelle "first-challenger")  
8. Pour mettre à jour le jar lancé depuis le conteneur, il faut dans tous les cas faire un `mvn clean package`. Ensuite, plusieurs possibilités :  
a. on peut reconstruire l'image comme expliqué au point 5, mais il sera inutile de réitérer le point 6, bien qu'on puisse en avoir envie, car docker est intelligent et ne refait que les étapes nécessaires (autrement dit la copie du jar)  
b. ou on peut utiliser la commande `docker cp` pour copier le nouveau jar directement dans le conteneur live.  
c. ma préférence va vers le point a qui laisse carrément la possibilité d'avoir une image par version du code et essayer plein de combinaisons différentes sans avoir à retoucher le code.  
9. Pour lancer le jar, tout simplement faire un petit `java -jar xtreme-refactoring-1.0.0.jar`  

