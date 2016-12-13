#!/usr/bin/env python3
# -*- coding: utf-8 -*-

u"""
ex3_1000premiers.py : ecriture binaire, nombre de 1, et nombres premiers.

recherche des nombres dont la représentation binaire contient un nombre premier de chiffre 1
"""

import re

class ListeDeNombres(object):

    u"""
    Objet permettant de manipuler des liste de nombres.

    http://compoasso.free.fr/primelistweb/page/prime/accueil.php
    """

    def __init__(self):
        u"""
        Initialisation de l'instance de l'objet.
        """
        self._borneIni = 1
        self._borneFin = 1
        # les petits premiers ont été récupérés sur cette page
        # http://python.jpvweb.com/mesrecettespython/doku.php?id=est_premier
        self._petitsPremiers = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,
                                    79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,
                                    179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,
                                    269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,
                                    367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,
                                    461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,
                                    571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,
                                    661,673,677,683,691,701,709,719,727,733,739,743,751,757,761,769,
                                    773,787,797,809,811,821,823,827,829,839,853,857,859,863,877,881,
                                    883,887,907,911,919,929,937,941,947,953,967,971,977,983,991,997,
                                    1009,1013,1019,1021]
        self._compteur = 0

        print("init")

    def creationListe(self, borneFin):
        u"""
        Creation d'une liste de borneIni à borneFin.

        Cette liste, ou plutot ce tableau, comprend 5 colonnes :
            - le nombre en base 10
            - son ecriture en base 2
            - le nombre de chiffre 1 dans cette écriture en base 2
            - le booleen à vrai si ce nombre de chiffre 1 est un nombre premier
            - un compteur
        """
        self._borneFin = borneFin
        self._compteur = 0
        for x in range (self._borneIni, self._borneFin):
            # bin(x) permet de renvoyer la representation binaire du nombre x
            # http://python.developpez.com/faq/?page=Les-nombres
            #
            # comment ce chiffre s'écrit en bianire ?
            # https://docs.python.org/3.1/library/string.html
            representationBinaire = '{0:b}'.format(x)
            #
            # combien ill y a de chiffres 1 dans le represenation binaire ?
            # https://docs.python.org/3.1/library/re.html
            chiffre1 = re.sub(r'0',
                              r'',
                              representationBinaire)
            nbChiffre1 = len(chiffre1)
            #
            # est ce que le nombre de chiffre 1 est un nombre premier ?
            #
            # http://python.jpvweb.com/mesrecettespython/doku.php?id=est_premier
            # http://compoasso.free.fr/primelistweb/page/prime/accueil.php
            if nbChiffre1 in self._petitsPremiers:
                estPremier = True
                self._compteur += 1
            else:
                estPremier = False
            #
            # affichage du tableau de resultat
            if estPremier:
                print('{0:4d} {1} {2} {3} {4}'.format(x,
                                                      representationBinaire,
                                                      nbChiffre1,
                                                      estPremier,
                                                      self._compteur))
            else:
                print('{0:4d} {1} {2} {3}'.format(x,
                                                      representationBinaire,
                                                      nbChiffre1,
                                                      estPremier))

if __name__ == '__main__':
    print("test")

    # instanciation d'un objet
    maListeDeNombres = ListeDeNombres()

    # Creation d'une liste de 1 à 100
    #maListeDeNombres.creationListe(32)
    maListeDeNombres.creationListe(1991)
