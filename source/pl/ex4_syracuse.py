#!/usr/bin/env python3
# -*- coding: utf-8 -*-

u"""
ex4_syracuse.py : algo concernant la conjecture de syracuse.

différents algorithmes relatifs à la suite de syracuse
"""

import re

class SuiteDeSyracuse(object):

    u"""
    Objet permettant de manipuler la Suite de Syracuse.

    https://fr.wikipedia.org/wiki/Conjecture_de_Syracuse
    """

    def __init__(self):
        u"""
        Initialisation de l'instance de l'objet.
        """
        self._valeurIni = 1
        self._valeurCourante = 0
        #self._valeurSuivante = 0
        self._dureeDeVol = 0
        self._dureeDeVolEnAltitude = 0
        self._altitudeMaximale = 0
        # les petits premiers ont été récupérés sur cette page
        # http://python.jpvweb.com/mesrecettespython/doku.php?id=est_premier
        self._compteur = 0

        print("init")



    def analyse(self, ValeurIni):
        u"""
        analyse d'une suite dont on donne la valeur de départ

        http://www.bibmath.net/forums/viewtopic.php?id=2799
        """
        self._valeurIni = ValeurIni
        self._valeurCourante = self._valeurIni

        while self._valeurCourante != 1:
            if self._valeurCourante % 2 == 0:
                # si le nombre est pair
                self._valeurCourante = self._valeurCourante / 2
            else:
                self._valeurCourante = self._valeurCourante * 3 + 1

            # DureeDeVolEnAltitude
            if self._valeurCourante <= self._valeurIni  and self._dureeDeVol > 0 and self._dureeDeVolEnAltitude == 0:
                self._dureeDeVolEnAltitude = self._dureeDeVol

            # AltitudeMaximale
            if self._altitudeMaximale < self._valeurCourante:
                self._altitudeMaximale = self._valeurCourante

            # DureeDeVol
            self._dureeDeVol += 1
        print('{0} {1} {2} {3}'.format(self._valeurIni,
                                       self._dureeDeVol,
                                       self._dureeDeVolEnAltitude,
                                       self._altitudeMaximale))




    def creationListe(self, borneFin):
        u"""
        Creation d'une liste de borneIni à borneFin
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
    maSuiteDeSyracuse = SuiteDeSyracuse()

    # Creation d'une liste de 1 à 100
    maSuiteDeSyracuse.analyse(4)
    maSuiteDeSyracuse.analyse(3)
    maSuiteDeSyracuse.analyse(7)
    maSuiteDeSyracuse.analyse(32)
    maSuiteDeSyracuse.analyse(123456789)
    #maListeDeNombres.creationListe(2000)
