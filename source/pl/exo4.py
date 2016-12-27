
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

    #print(str(stations_visitees))

    # recherche du fun dejà pris pour arriver jusqu'à la station
    if len(stations_visitees) == 0:
        fun_deja_pris = 0
    else:
        fun_deja_pris = stations_visitees[-1]["fun_cumule"]
    #print('station = {}, fun_deja_pris = {}'.format(station, fun_deja_pris))

    # a partir de la station, recherche de tous les nouveaux chemins possibles
    liste_pistes = []
    for i in range(m):
        if piste[i]["x"] == station:
           liste_pistes.append(i)

    # recherche si nous sommes dans une boucle
    # c'est à dire dans une station que nous avons deja visitée
    boucle = 0
    fun_avant_boucle = 0
    for dictionnaire in stations_visitees[:-1]:
        #print(dictionnaire["station"])
        # nous sommes dans une boucle si la station
        # a déjà ete enregistré dans notre liste de stations_visitees
        if station == dictionnaire["station"]:
            # nous stockons dans une variable, le fun que nous avons
            # accumulé avant d'entrer dans la boucle
            fun_avant_boucle = dictionnaire["fun_cumule"]
            boucle = 1
    #print('fun_avant_boucle = {}, fun_deja_pris = {}'.format(fun_avant_boucle, fun_deja_pris))

    if boucle == 1 or liste_pistes == []:
        # ici, on traite les condtions d'arret,
        # c'est à dire, si nous sommes dans une impasse
        # ou si nous sommes dans une boucle
        #print("conditions d'arret : impasse ou Boucle !!")
        # on recherche si la boucle est positive ou négative
        if liste_pistes == [] or fun_avant_boucle > fun_deja_pris:
            # si nous sommes dans une impasse ou si la boucle est négative
            # on recherche la maximum de fun que nous avons pu avoir à un
            # moment donné sur notre parcours
            max_fun = 0
            for dictionnaire in stations_visitees:
                if max_fun < dictionnaire["fun_cumule"]:
                    max_fun = dictionnaire["fun_cumule"]
        else:
            # cas d'une boucle postitive, c'est à dire
            # cas ou a chaque tour, on augemente le fun
            # fun_avant_boucle < fun_deja_pris:
            max_fun = "OVERDOSE DE FUN"
            return max_fun

    else:
        # ici, on traite les conditions normales
        # c'est à dire les cas ou nous allons explorer les chemins restants
        # de maniere recursive

        # parmi tous les chemins restants possibles, il faudra retenir le meilleur
        # pour stoker cette meilleur valeur, on utilise la variable max_fun
        # que nous initialisons à O
        max_fun = 0

        for i in liste_pistes:
            # pour chaque possibilité de chemin :
            #  - nous cherchons le nom de la station suivante
            #  - nous créons une nouvelle liste pour stocker le fun de ce chemin
            #    cette nouvelle liste, c'est la liste des stations_visites
            #    jusqu'à présent que l'on complete avec le nouveau chemin
            station_future = piste[i]["y"]
            #print(str(stations_visitees + [{"station": piste[i]["y"], "fun_cumule": fun_deja_pris + piste[i]["l"]}]))
            fun = explore(station_future, \
                          stations_visitees + \
                              [{"station": piste[i]["y"], \
                                "fun_cumule": fun_deja_pris + piste[i]["l"]}])
            #print('station = {}, fun = {}'.format(station_future,fun))
            #print('station = {}'.format(station_future))

            if (fun == "OVERDOSE DE FUN"):
                max_fun = fun
                return max_fun
            if (fun != "OVERDOSE DE FUN") and (max_fun != "OVERDOSE DE FUN"):
                if fun > max_fun:
                    max_fun = fun

    # nous retournons le resultat
    #print('max_fun = {}'.format(max_fun))
    return max_fun

def maximise_ton_fun(n, m, piste):
    # initialisation : nous partons de la station 0
    station_actuelle = 0
    fun = 0
    boucle = 0
    stations_visitees = []
    boucle = None
    #max_fun = piste[0]["l"]
    print('{}'.format(explore(station_actuelle, stations_visitees)))

    #print(str(liste_pistes))




# Cas generique
n, m = map(int, input().split())
piste = [{"x": 0, "y": 0, "l": 0}] * m
for i in range(m):
    x, y, l = map(int, input().split())
    piste[i] = {"x": x, "y": y, "l": l}

"""
# exemple 1
n = 6
m = 5
piste = [{"x": 0, "y": 0, "l": 0}] * m
piste[0] = {"x":0 , "y": 1, "l":-1 }
piste[1] = {"x":1 , "y": 2, "l":2 }
piste[2] = {"x":3 , "y": 4, "l":1 }
piste[3] = {"x":4 , "y": 5, "l":-1 }
piste[4] = {"x":5 , "y": 3, "l":1 }

# exemple 2
n = 4
m = 4
piste = [{"x": 0, "y": 0, "l": 0}] * m
piste[0] = {"x":0 , "y": 1, "l":-1337 }
piste[1] = {"x":1 , "y": 2, "l":1 }
piste[2] = {"x":2 , "y": 3, "l":-1 }
piste[3] = {"x":3 , "y": 1, "l":1 }

# exemple 3
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

"""

# Appel à la fonction
maximise_ton_fun(n, m, piste)
"""
for i in range(m):
    print(i)
"""
