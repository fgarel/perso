# coding: utf-8

#from math import *
import subprocess
import sys

def test_url(mot_de_passe):
    """
    fonction qui sert à tester différents hypotheses
    on donne en entrée 3 infos
    la fonction construit une hypothese et la tester

    il faut donc utiliser la fonction dans une boucle
    """
    #mot_de_passe = adresse_ip + " " + adresse_mac + " " + delai

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
        retcode = subprocess.call("wget -q -O challenge.txt " + url, shell=True)
        if retcode < 0:
            print("Child was terminated by signal", -retcode, file=sys.stderr)
        else:
            #print("Child returned", retcode, file=sys.stderr)
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

filename = "chal1_fff9cfa45e0436e776e30a0c98b4ba2361eb87aa.archive"

# prerequis "aptitude install unrar-free

# liste_commandes
liste_commandes = [{'tool': "rm" , "fichier": "challenge.rar" + " " + "challenge.tar.bz2" + " " + "challenge.tar" + " " + "challenge.iso" + " " + "CHALLENG.ZIP" + " " + "flag.txt"},
                   {"tool": "tar xzvf", "fichier": filename},
                   {"tool": "unrar", "fichier": "challenge.rar"},
                   {"tool": "bunzip2", "fichier": "challenge.tar.bz2"},
                   {"tool": "tar xvf", 'fichier': "challenge.tar"},
                   {"tool": "7z x", 'fichier': "challenge.iso"},
                   {"tool": "7z x", 'fichier': "CHALLENG.ZIP"},
                   {"tool": "rm", "fichier": "challenge.rar" + " " + "challenge.tar" + " " + "challenge.iso" + " " + "CHALLENG.ZIP"}]


for commande in liste_commandes:
    #print(str(commande))
    #print(str(commande['tool']))
    print("{} {}".format(commande['tool'], commande['fichier']))
    try:
        retcode = subprocess.call(commande['tool'] + " " + commande['fichier'], shell=True)
        if retcode < 0:
            print("Child was terminated by signal", -retcode, file=sys.stderr)
        else:
            #print("Child returned", retcode, file=sys.stderr)
            pass
    except OSError as e:
        print("Execution failed:", e, file=sys.stderr)
mot_de_passe = subprocess.check_output("cat flag.txt", shell=True)
print ('{}'.format(mot_de_passe))
retour = test_url(mot_de_passe)

# nettoyage
subprocess.check_output("rm flag.txt", shell=True)
subprocess.check_output("rm chal1_result.txt", shell=True)
subprocess.check_output("mv challenge.txt chal1_result.txt", shell=True)
