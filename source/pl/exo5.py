# coding: utf-8

#from math import *


"""
dans le livre graphe et algorythme, il est mentionné la notion
de diametre d'un graphe dans un plan

les informations plus détaillées sur cettre notion de diamètre d'un graphe dans un plan sont ici
http://repository.cmu.edu/isr/113/
http://euro.ecom.cmu.edu/shamos.html
http://euro.ecom.cmu.edu/people/faculty/mshamos/1975GeometricComplexity.pdf
http://euro.ecom.cmu.edu/people/faculty/mshamos/1975ClosestPoint.pdf

les notions sur les algorithmes sont ici

https://books.google.fr/books?id=_p3eBwAAQBAJ&pg=PA383&lpg=PA383&dq=shamos+p+m+geometric+complexity+acm+symposium+on+theory+of+computing&source=bl&ots=BaZsxZ18hY&sig=ZgtokgbNaghk7G-vvTQ3LdhDSnc&hl=fr&sa=X&ved=0ahUKEwj9irywn5bRAhXDOxoKHcX7AjQQ6AEIKDAC#v=onepage&q=shamos%20p%20m%20geometric%20complexity%20acm%20symposium%20on%20theory%20of%20computing&f=false

https://books.google.fr/books?id=YfdgAQAAQBAJ&pg=PA103&lpg=PA103&dq=shamos+p+m+geometric+complexity+acm+symposium+on+theory+of+computing&source=bl&ots=T2kck5y16H&sig=rhgl09qI8WcPi83JPYtVyr3FSEo&hl=fr&sa=X&ved=0ahUKEwj9irywn5bRAhXDOxoKHcX7AjQQ6AEIHDAA#v=onepage&q=shamos%20p%20m%20geometric%20complexity%20acm%20symposium%20on%20theory%20of%20computing&f=false

parcours d'un graphe

http://math.univ-lyon1.fr/irem/IMG/pdf/parcours.pdf
http://p-fb.net/fileadmin/_migrated/content_uploads/algo_python_graphe_arbre.pdf
https://www.irif.fr/~francoisl/IREM/graphe.pdf

http://www.python-course.eu/graphs_python.php

https://zestedesavoir.com/tutoriels/681/a-la-decouverte-des-algorithmes-de-graphe/
https://zestedesavoir.com/tutoriels/681/a-la-decouverte-des-algorithmes-de-graphe/727_bases-de-la-theorie-des-graphes/3353_parcourir-un-graphe/

https://tfeysal.wordpress.com/2010/11/21/algorithmes-pour-les-graphes-1/

http://dept-info.labri.fr/~baudon/Master/ENSM/AlgoEtGraphes.html
http://www.maths-algo.fr/index.php/informatique/cours-d-informatique/python/graphes

http://informathix.tuxfamily.org/?q=node/119
grapheekdb
networkx


et ici

http://acm-stoc.org/


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
