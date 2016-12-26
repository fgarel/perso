
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
      plaisir : autant s'arreter à la station dite "maximum"
      (par exemple, pour la boucle passant par les stations C, F, K, C, avec
      C->F = 2, F->K = -2, K->C = -1 :
      dans ce cas il faut aller jusqu'a la station F)
      (par exemple, pour la meme boucle passant par les stations F, K, C, F
      mais en partant de F avec
      F->K = -2, K->C = -1, C->F = 2 :
      dans ce cas il faut s'arreter directemen à F, ne pas parcourir la boucle)
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


    # a partir de la station, recherche de tous les chemins possibles
    liste_pistes = []
    print('m = {}'.format(m))
    #for i in enumerate(piste):
    for i in range(m):
        print('i = {}'.format(i))
        if piste[i]["x"] == station:
           liste_pistes.append(i)
    print(str(liste_pistes))
    print(str(stations_visitees))

    # Condition d'arret :
    # premiere condition : on est dans une impasse
    if liste_pistes == []:
        return 0
    # deuxième condition : existance d'une boucle
    if station_actuelle in stations_visitees:
        boucle = 1
        stations_visitees.append(station_actuelle)

        fun = piste[i]["l"]

    # recherche du maximum parmi tous les chemins possibles
    max_fun = 0
    # pour chaque chemin possible,
    # recherche de la station d'arrivée
    for i in liste_pistes:
        station_actuelle = piste[i][y]
        if explore(station_actuelle, stations_visitees) > max_fun:
            max_fun=explore(station_actuelle, stations_visitees)


        fun += piste[i]["l"]
        station_actuelle = piste[i][y]
    return fun

def maximise_ton_fun(n, m, piste):
    # initialisation : on part de la palteforme 0
    station_actuelle = 0
    fun = 0
    boucle = 0
    stations_visitees =[]
    boucle = None
    #max_fun = piste[0]["l"]
    explore(station_actuelle, stations_visitees)

    #print(str(liste_pistes))


    """
    while True :
        # fun à l'instant
        fun += piste[lieu]["l"]
        # fun max
        if fun > max_fun :
            max_fun = fun
        stations_visitees.append(piste[lieu]["x"])
        # quand ça commence à boucler :
        if piste[lieu]["y"] in stations_visitees :
            boucle = 1
            break
        # on repart si on ne boucle pas encore et que la destination a une piste
        if piste[lieu]["y"] == piste[piste[lieu]["y"]]["x"] :
            lieu = piste[lieu]["y"]
        else :
            break

    if boucle == 1 :
        fun = 0
        lieu1 = piste[lieu]["y"]
        while piste[lieu1]["x"] != piste[lieu]["x"] :
            fun += piste[lieu1]["l"]
            lieu1 = piste[lieu1]["y"]
        fun += piste[lieu1]["l"]
        if fun > 0 :
            max_fun = "OVERDOSE DE FUN"
    print(max_fun)
    """
"""
n, m = map(int, input().split())
piste = [{"x": 0, "y": 0, "l": 0}] * m
for i in range(m):
    x, y, l = map(int, input().split())
    piste[i] = {"x": x, "y": y, "l": l}
"""
n = 14
m = 19
piste = [{"x": 0, "y": 0, "l": 0}] * m

piste[0] = {"x":0 , "y": 1, "l":5 }
piste[1] = {"x":0 , "y": 2, "l":7 }
piste[2] = {"x":0 , "y": 3, "l":4 }
piste[3] = {"x":1 , "y": 4, "l":-3 }
piste[4] = {"x":2 , "y": 5, "l":2 }
piste[5] = {"x":2 , "y": 6, "l":-3 }
piste[6] = {"x":2 , "y": 7, "l":-5 }
piste[7] = {"x":3 , "y": 8, "l":4 }
piste[8] = {"x":3 , "y": 9, "l":-3 }
piste[9] = {"x":4 , "y": 2, "l":7 }
piste[10] = {"x":5 , "y": 10, "l":-2 }
piste[11] = {"x":6 , "y": 11, "l":3 }
piste[12] = {"x":7 , "y": 12, "l":4 }
piste[13] = {"x":8 , "y": 13, "l":-2 }
piste[14] = {"x":9 , "y": 5, "l":-1 }
piste[15] = {"x":10 , "y":2 , "l":-1 }
piste[16] = {"x":11 , "y":5 , "l":5 }
piste[17] = {"x":12 , "y":8 , "l":5 }
piste[18] = {"x":13 , "y":0 , "l":-2 }

maximise_ton_fun(n, m, piste)
"""
for i in range(m):
    print(i)
"""
