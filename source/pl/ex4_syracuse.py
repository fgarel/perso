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
        self._altitudeMaximale = int(self._altitudeMaximale)
        print('{0} {1} {2} {3}'.format(self._valeurIni,
                                       self._dureeDeVol,
                                       self._dureeDeVolEnAltitude,
                                       self._altitudeMaximale))

def maintest(nb_depart):
    duree_vol_reponse = 0
    reponse = 0
    for i in range(1,nb_depart+1):
        maSuiteDeSyracuse = SuiteDeSyracuse()
        maSuiteDeSyracuse.analyse(i)
        if maSuiteDeSyracuse._dureeDeVol > duree_vol_reponse:
            duree_vol_reponse = maSuiteDeSyracuse._dureeDeVol
            reponse = i
        print("durée vol de cette variable = " + str(maSuiteDeSyracuse._dureeDeVol))
        print("durée de vol réponse pour l'instant = " + str(duree_vol_reponse))
        print("réponse pour l'instant = " + str(reponse))

    print("reponse = " + str(reponse))
    print("duree de vol de celle-ci : " + str(duree_vol_reponse))



if __name__ == '__main__':
    print("test pour 421337")
    maintest(421337)
    #maListeDeNombres.creationListe(2000)
