# coding: utf-8

#from math import *
import subprocess
import sys

def test_url(adresse_ip, adresse_mac, delai):
    """
    fonction qui sert à tester différents hypotheses
    on donne en entrée 3 infos
    la fonction construit une hypothese et la tester

    il faut donc utiliser la fonction dans une boucle
    """
    mot_de_passe = adresse_ip + " " + adresse_mac + " " + delai

    #print('mot de passe = {}'.format(mot_de_passe))

    # token est le resultat de la commande suivante :
    #print('echo -n {} | sha1sum'.format(mot_de_passe))
    p1 = subprocess.Popen(["echo", "-n", mot_de_passe], stdout=subprocess.PIPE)
    p2 = subprocess.Popen(["sha1sum"], stdin=p1.stdout, stdout=subprocess.PIPE)
    p1.stdout.close()  # Allow p1 to receive a SIGPIPE if p2 exits.
    token = p2.communicate()[0]
    # attention : token est de type byte, il doit etre converti en string
    # cf ici : http://stackoverflow.com/questions/6269765/what-does-the-b-character-do-in-front-of-a-string-literal
    token = token.decode('UTF-8')
    # on lui enleve les 4 derniers caracteres (car la fin se termine par "  -")
    token = token[:-4]
    #print('token = {}'.format(token))

    # l'url est donc
    url = "https://prologin.org/static/ctf/2017/exos/" + token + ".txt"
    #print('url = {}'.format(url))

    try:
        retcode = subprocess.call("wget -q " + url, shell=True)
        if retcode < 0:
            print("Child was terminated by signal", -retcode, file=sys.stderr)
        else:
            #print("Child returned", retcode, file=sys.stderr)
            print("{} {} {} => {} => {}".format(adresse_ip, adresse_mac, delai, url, retcode))
            pass
    except OSError as e:
        print("Execution failed:", e, file=sys.stderr)
    return retcode

"""
# Ouverture du fichier pcap avec wireshark

# adresse ip du serveur web
10.42.0.51
# adresse mac de la machine ayant pour adresse IP 10.42.0.53
08:00:27:3c:74:47
# delai mis délai a mis le serveur de temps, en microsecondes,
# pour répondre à la requête qui lui a été faite
# (laps de temps entre le moment où la requête a été envoyée par le client
# et le moment où la réponse a été renvoyée par le serveur)
125
"""

adresse_ip = "10.42.0.51"
adresse_mac = "08:00:27:3c:74:47"
delai = "125"

adresses_ip = ["10.42.0.51", "10.42.0.52", "10.42.0.53"]
adresses_mac = ["08:00:27:3c:74:47", "08:00:27:6b:fc:be", "08:00:27:cd:2c:95"]
#for delai in range(10000001):
#for delai in range(124,127):
for delai in range(10000001):
    for adresse_ip in adresses_ip:
        for adresse_mac in adresses_mac:
            retour = test_url(adresse_ip, adresse_mac, str(delai))
            if retour == 0:
                print('{} {} {} ==> {}'.format(adresse_ip, adresse_mac, delai, retour))
                break

            delai3 = "{:03d}".format(delai)
            delai4 = "{:04d}".format(delai)
            delai5 = "{:05d}".format(delai)
            delai6 = "{:06d}".format(delai)
            delai7 = "{:07d}".format(delai)
            delai8 = "{:08d}".format(delai)
            delai9 = "{:09d}".format(delai)
            retour = test_url(adresse_ip, adresse_mac, str(delai3))
            if retour == 0:
                print('{} {} {} ==> {}'.format(adresse_ip, adresse_mac, delai, retour))
                break
            retour = test_url(adresse_ip, adresse_mac, str(delai4))
            if retour == 0:
                print('{} {} {} ==> {}'.format(adresse_ip, adresse_mac, delai, retour))
                break
            retour = test_url(adresse_ip, adresse_mac, str(delai5))
            if retour == 0:
                print('{} {} {} ==> {}'.format(adresse_ip, adresse_mac, delai, retour))
                break
            retour = test_url(adresse_ip, adresse_mac, str(delai6))
            if retour == 0:
                print('{} {} {} ==> {}'.format(adresse_ip, adresse_mac, delai, retour))
                break
            retour = test_url(adresse_ip, adresse_mac, str(delai7))
            if retour == 0:
                print('{} {} {} ==> {}'.format(adresse_ip, adresse_mac, delai, retour))
                break
            retour = test_url(adresse_ip, adresse_mac, str(delai8))
            if retour == 0:
                print('{} {} {} ==> {}'.format(adresse_ip, adresse_mac, delai, retour))
                break
            retour = test_url(adresse_ip, adresse_mac, str(delai9))
            if retour == 0:
                print('{} {} {} ==> {}'.format(adresse_ip, adresse_mac, delai, retour))
                break
            #print("{} ".format(delai))
retour = test_url("10.42.0.51", "08:00:27:3c:74:47", str(125))
