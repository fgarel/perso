# coding: utf-8

#from math import *

def explore(station, stations_visitees):
    """
    explore est une fonction recursive.

    Une fonction recursive est une fonction qui s'appelle elle-meme
    Pour eviter que la fonction s'appelle elle-meme à l'infini, il faut
    donc lui paramétrer une condition pour qu'elle s'arrete.

    Supposons que nous sommes à une station.
    A partir de cette station, nous allons chercher tous les chemins possibles.
    Pour chacun de ces chemins, nous avons une hypothese, cette hypothese, c'est
    d'aller jusqu'a la station suivante et d'explorer ... les differentes
    hypotheses de la station suivante (=> fonction recursive).

    Les conditions pour que l'exploration s'arrete sont :
    - il n'y a plus de chemins à explorer
    - notre hypothese de chemin fait une boucle
      (et pour tester si l'hypothese de chemin fait une boucle,
      il faut que l'on stocke dans une variable la liste des stations deja
      visitées)

    Les paramètres que nous allons passer à la fonction recursive sont donc :
    - la station à explorer
    - le fun que nous avons déjà pris pour venir à cette station
    - la liste des stations que nous avons déjà visitées

    En retour, la fonction doit renvoyer le fun maximale qu'il est possible
    de trouver à partir de la station explorée.
    (par exemple, si a partir de la station, il y a 3 pistes possibles, et que
    le fun pour ces hypotheses sont 5, 7 et 4, alors la fonction doit renvoyer
    7)

    Etudions maintenant la condition d'arret qui est la boucle.

    Pour savoir si nous sommes dans une boucle, il faut vérifier que la station
    suivante qui est envisagée n'a pas deja ete visitée.
    Si c'est le cas, alors nous allons determiner le fun de la boucle et nous
    aurons alors deux possibilités, soit le fun de la boucle est
    - positif, cela veut dire que plus on parcourt la boucle, plus on aura de fun
      fun et donc le résultat sera "OVERDOSE DE FUN"
      (par exemple, pour la boucle passant par les stations A, D, I, N, A, avec
      A->D = 4, D->I = 4, I->N = -2, N->A = -2)
    - négatif, cela veut dire que plus on parcourt la boucle, moins on a de
      plaisir : il faut s'arreter à la station dite "maximum"
      (par exemple, pour la boucle passant par les stations C, F, K, C, avec
      C->F = 2, F->K = -2, K->C = -1 :
      dans ce cas il faut aller jusqu'a la station F)
      (autre exemple, pour la meme boucle passant par les stations F, K, C, F
      mais en partant de F avec
      F->K = -2, K->C = -1, C->F = 2 :
      dans ce cas il faut s'arreter directement à F, ne pas parcourir la boucle)
      Quand on parcourt une boucle, il faut s'arreter a la station qui a donné
      le maximum de fun.

    Reprenons notre exemple de initial :
    A partir de la station A, il y a 3 pistes possibles,
    le fun pour ces hypotheses sont 5, 7 et 4
    puis, .... cf le graphe ci dessous :
                            A
                           /| \
                          / |   \
                         5  7    4
                        /   |      \
                       /    |        \
                      v     v         v
                      B     C         D
                     /     /|\        |\
                    /     / | \       | \
                  -3     2 -3 -5      4 -3
                  /     /   |   \     |   \
                 /     /    |    \    |    \
                 v    v     v     v   v     v
                 E    F     G     H   I     J
                 |    |     |     |   |     |
                 |    |     |     |   |     |
                 7   -2     3     4  -2    -1
                 |    |     |     |   |     |
                 |    |     |     |   |     |
                 v    v     v     v   v     v
                 C    K     L     M   N     F
                 .    |     |     |   |     .
                 .    |     |     |   |     .
                     -1     5     5  -2
                      |     |     |   |
                      |     |     |   |
                      v     v     v   v
                      C     F     I   A
                            .     .
                            .     .
    les boucles sont finis pour la deuxième et la cinquieme hypotheses.
    pour la deuxième hypothese, de C à C, la somme est negative, la maximum
    s'arrete quand nous arrivé à F : de C a F on a 2
    pour la cinquime hypothese, de A à A, la somme est postive, la reponse sera
    donc "OVERDOSE DE FUN"

    Si on avait pas cette cinquieme hypothèse, il aura fallu explorer les
    chemins dits "non-boucles"
    pour la première hypothese, de A à C, la somme est 9
        auquel il faut ajouter de C à C, ou plutot de C à F, 2 donc total = 11
    pour la troisième hypothese, de A à F, la somme est 12
        ici, il ne faut pas ajouter de F à F, car boucle négative
    pour la quatrième hypothese, de A à I, la somme est 11,
        auquel il faut ajouter de I à A, -4, plus la boucle positive infinie
    pour la sixième hypothese de A à F, la somme est 0
        ici, non plus, il ne faut pas ajuster de F à F car boucle négative

    Pour une boucle négative, il faut trouver la dernière station interessante,
    c'est à dire la station limite, dont, si jamais on allait au dela, alors
    le chemin donnerait un fun négatif.
    Dans notre exemple, pour la boucle F->K->C->F->K->C->F, alors la
    meilleure station finale est F
    K->C->F = -1+2 = 1
    C->F    = 2
    F->K->C = -2-1 = -3
    K->C    = -1
    C->F->K = 2-2 = 0
    F->K    = -2

    Donc, quand on arrive dans une boucle il ne faut pas compter les dernieres
    pistes si celles ci n'ont pas apporté de fun
    """


def volume_carburant(x1, y1, x2, y2):
    """
    volume de carburant nécessaire pour circuler entre deux points
    à partir des coordonnées de ces deux points
    """
    volume_carburant = (x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1)
    return volume_carburant

def volume_carburant_point_point(point_ini, point_fin):
    """
    volume de carburant nécessaire pour aller d'un point a une station
    """
    print('volume_carburant_point_station = {}'.format(volume_carburant(point["a"], point["b"], station["x"], station["y"])))
    print('volume_carburant_point_station = {}'.format(volume_carburant(point["c"], point["d"], station["x"], station["y"])))


def volume_carburant_point_station(point, station):
    """
    volume de carburant nécessaire pour aller d'un point a une station
    """
    print('volume_carburant_point_station = {}'.format(volume_carburant(point["a"], point["b"], station["x"], station["y"])))
    print('volume_carburant_point_station = {}'.format(volume_carburant(point["c"], point["d"], station["x"], station["y"])))



def liste_volume_carburant_point_point():
    """
    liste de tous les volume_carburant_point_point
    """
    for point_ini in requetes:
        for point_fin in requetes:
            volume_carburant_point_point(point_ini, point_fin)

def liste_volume_carburant_point_station():
    """
    liste de tous les volume_carburant_point_station
    """
    for point in requetes:
        for station in stations:
            volume_carburant_point_station(point, station)

def taxi_des_neiges0(n, m, stations, requetes):
    """Inserez votre code ici"""
    print('volume_carburant = {}'.format(volume_carburant(requetes[0]["a"], requetes[0]["b"], requetes[0]["c"], requetes[0]["d"])))
    liste_volume_carburant_point_station()

"""
# Cas generique

n, m = map(int, input().split())
stations = [None] * n
for i in range(n):
    sx, sy = map(int, input().split())
    stations[i] = {"x": sx, "y": sy}
requetes = [None] * m
for j in range(m):
    ra, rb, rc, rd = map(int, input().split())
    requetes[j] = {"a": ra, "b": rb, "c": rc, "d": rd}
"""


# exemple 1
n = 1
m = 1
stations = [None] * n
stations[0] = {"x": 0, "y": 0}
requetes = [None] * m
requetes[0] = {"a": -1, "b": 0, "c": 1, "d": 1}

"""
# exemple 2
n = 3
m = 2
stations = [None] * n
stations[0] = {"x": 0, "y": 0}
stations[1] = {"x": 0, "y": 1}
stations[2] = {"x": 1, "y": 1}
requetes = [None] * m
requetes[0] = {"a": 42, "b": 0, "c": 3, "d": 3}
requetes[1] = {"a": -1, "b": -1, "c": 2, "d": 2}
"""


taxi_des_neiges0(n, m, stations, requetes)
