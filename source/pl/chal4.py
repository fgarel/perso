
#!/usr/bin/env python3
# coding: utf-8

import zipfile,sys,time
import itertools
def extractFile(zFile, password):
    try:
        answer= zFile.extractall(pwd=password)
        print 'Fount password : ', password
        return True
    except:
        #print password + " was incorrect"
        return False
def main(ifile):
    zFile = zipfile.ZipFile(ifile)
    pass_str = "abcdefghijklmnopqrstuvwxyz0123456789"
    for pass_len in range(1,5):
        passwords = itertools.permutations(pass_str,pass_len)
        for password in passwords:
            #print password
            #time.sleep(.01)
            password = ''.join(password)
            sys.stdout.write("\r checking .. %s" % password )
            sys.stdout.flush()

            if (extractFile(zFile, password)):
                print "checked  "+password+"  ..."
                sys.exit()

if __name__ == '__main__':
    try:
        ifile = sys.argv[1]
    except:
        print "please run like  'python python-file-name.py zip-file-name.zip'"
        sys.exit()
    main(ifile)
