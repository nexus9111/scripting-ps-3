# Résistances : Étiquette Couleur

## Instructions

Si vous souhaitez construire quelque chose avec un Raspberry Pi, vous utiliserez probablement des résistances. Pour cet exercice, vous devez savoir seulement trois choses à leur sujet :

* Chaque résistance possède une valeur de résistance.

* Les résistances sont petites - si petites en fait que si l'on imprimait la valeur de résistance dessus, elle serait difficile à lire. Pour contourner ce problème, les fabricants impriment des bandes de couleur sur les résistances pour indiquer leurs valeurs de résistance.

* Chaque bande représente un chiffre d'un nombre. Par exemple, si l'on imprime une bande marron (valeur 1) suivie d'une bande verte (valeur 5), cela se traduit par le nombre 15.

Dans cet exercice, vous allez créer un programme utile pour ne plus avoir à mémoriser les valeurs des bandes. Le programme prendra 3 couleurs en entrée et produira la valeur correcte, en ohms. Les couleurs des bandes sont encodées comme suit :

Black: 0
Brown: 1
Red: 2
Orange: 3
Yellow: 4
Green: 5
Blue: 6
Violet: 7
Grey: 8
White: 9

Dans l'exercice précédent, vous avez décodé les deux premières couleurs. Par exemple : orange-orange donnait la valeur principale 33. La troisième couleur indique combien de zéros doivent être ajoutés à la valeur principale. La valeur principale plus les zéros nous donne une valeur en ohms. Pour cet exercice, peu importe ce que sont réellement les ohms. Par exemple :

* orange-orange-noir donnerait 33 sans zéro, soit 33 ohms.
* orange-orange-rouge donnerait 33 avec 2 zéros, soit 3300 ohms.
* orange-orange-orange donnerait 33 avec 3 zéros, soit 33000 ohms.

(Si les mathématiques vous parlent, vous pouvez considérer les zéros comme des puissances de 10. Sinon, restez avec les zéros. C'est vraiment la même chose, juste en langage courant plutôt qu'en jargon mathématique.)

Cet exercice consiste à traduire les couleurs en une étiquette :

"... ohms"

Ainsi, une entrée de "orange", "orange", "noir" devrait retourner :

"33 ohms"

Lorsque nous avons des résistances plus grandes, un préfixe métrique est utilisé pour indiquer un ordre de grandeur supérieur en ohms, comme "kiloohms". C'est similaire à dire "2 kilomètres" au lieu de "2000 mètres", ou "2 kilogrammes" pour "2000 grammes".

Par exemple, une entrée de "orange", "orange", "orange" devrait retourner :

"33 kiloohms"
