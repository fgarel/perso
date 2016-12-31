#!/usr/bin/env python3
# coding: utf-8

#import zipfile,sys,time
import itertools
import subprocess
import sys

def main():
    pass_str =  "abcdefghijklmnopqrstuvwxyz"
    pass_str += "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    pass_str += "0123456789"
    pass_str += "!:$%&/()=?+-*~"
    pass_str += '.;,'
    pass_str += '{}[]'
    pass_str += '\\'
    pass_str += "'"
    pass_str += '"'
    #print("pass_str = {}".format(pass_str))
    #print("#!/bin/bash")

    for pass_len in range(1,7):
    #for pass_len in range(2,3):
    #for pass_len in range(6,7):
        print("Essai avec les mots de passe de longeur {}".format(pass_len))
        #print("pass_str = {}, pass_len = {}".format(pass_str, pass_len))
        #passwords = itertools.permutations(pass_str,pass_len)
        # ici, on n'utilise pas permutations mais le produit cartesien
        # https://docs.python.org/3/library/itertools.html
        passwords = itertools.product(pass_str, repeat=pass_len)
        #print("passwords = {}".format(str(passwords)))
        for password in passwords:
            password = ''.join(password)
            #print("{}".format(str(password)))
            #chaine = "echo \"{}\" | tee >(./chal5_c8a3333b81d31b1a2053b78623d0c45ada208b05_x86-64.bin >> test.txt) >> test.txt".format(str(password))
            #print("{}".format(chaine))

            p1 = subprocess.Popen(["echo", password], stdout=subprocess.PIPE)
            p2 = subprocess.Popen(["tee", "-a", "test.txt"], stdin=p1.stdout, stdout=subprocess.PIPE)
            p3 = subprocess.Popen(["./chal5_c8a3333b81d31b1a2053b78623d0c45ada208b05_x86-64.bin"], stdin=p2.stdout, stdout=subprocess.PIPE)
            p4 = subprocess.Popen(["tee", "-a", "test.txt"], stdin=p3.stdout, stdout=subprocess.PIPE)
            p1.stdout.close()  # Allow p1 to receive a SIGPIPE if p2 exits.
            retour = p4.communicate()[0]
            #retcode = subprocess.call(chaine, shell=True)
            if retour == b'Entrez le mot de passe : Mot de passe incorrect.\n':
                # essaye encore...
                #print("fail => {}".format(password))
                pass
            else:
                # success !!!!!
                print("======> {} {}".format(retour, password))
                break


if __name__ == '__main__':
    """
    le programme python chal5.py va generer un script shell

    on l'utilise ainsi:
    ./chal5.py > ./chal5.sh

    on rend executatble ce script shell, puis on l'execute,
    ce qui a pour effet de produire un fichier test.txt

    la commande complete est donc :

    rm -f test.txt ; ./chal5.py > ./chal5.sh ; chmod +x chal5.sh ; ./chal5.sh

    """
    #for i in range(6,7):
    #    print("{}".format(i))
    main()
