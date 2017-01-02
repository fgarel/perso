# Graphe

import / Export entre plusieurs systèmes de manipulation de graphe


on a en entree une liste de bipoints
x_ini y_ini x_fin y_fin

on veut en faire une liste d'arcs qui vont former un graphe orienté

en entrée, nous avons aussi une liste de points
x y

de cette liste de points, nous allons en faire un second graphe (sans arc)

nous allons faire une fusion de ces deux graphes

A partir de ce graphe orienté,
nous allons effectuer les calculs ou manipulations suivantes :
 - le diametre de ce graphe (shamos 1975)
 - division du graphe en trois ensemble de points :
   - la liste des point_ini
   - la liste des point_fin
   - la liste des point_seul (station)
 - le complement de ce graphe (ajout d'arcs orientés)
   - travail a l'interieur de chaque sous-ensemble
     - chaque point_ini vers les autres point_ini
     - chaque point_seul vers les autres point_seul
     - chaque point_fin vers les autres point_fin (est-ce utile ?)
   - entre deux sous-ensembles
     - chaque point_ini vers les point_seul
     - chaque point_seul vers les point ini (inverse de la ligne precedente)
     - chache point_seul vers les point_fin
     - chaque point_fin vers les point_seul (inverse de la ligne precedente)
     - chaque point_ini vers les point_fin (attention il ne faut pas
       dupliquer les bipoints déja existants)
     - chaque point_fin vers les point_fin



```
installation d'un environnement python avec
  - networkx
  - pygraphml  (manipulation fichier graphml)
  - pygraphviz (manipulation fichier dot)
  - PyYAML     (manipulation fichier yaml)
(inspire de ~/Documents/install/source/environnementTravail/install_python.sh)

pew list_pythons
pew list_pythons -a
pew install 3.5.1
pew new -p $(pythonz locate 3.5.1) graphe

pip install networkx
pip install pygraphml

aptitude install libgraphviz-dev
(cette bibliotheque est necessaire pour pygraphviz)
pip install pygraphviz
pip install PyYAML

```

ces systèmes sont :

Grapher (application android) ???

dessin d'un graphe
nom: yEd
documentation: http://www.yworks.com/products/yed https://www.yworks.com/yed-live/
stockage: graphml
import_export: http://alternativeto.net/software/yed/

lecture, parsing d'un fichier graphml
nom: pygraphml
documentation: https://pypi.python.org/pypi/pygraphml  http://hadim.fr/pygraphml/


nom: networkx
liste_outils:
documentation: https://networkx.github.io/
stockage: GML, json, shape, graphml
import_export: http://networkx.readthedocs.io/en/networkx-1.11/reference/readwrite.html

Fichier texte (csv)

nom: Graphviz
liste_outils: dot, neato,
documentation: http://graphviz.org/ https://en.wikipedia.org/wiki/DOT_(graph_description_language)
stockage: dot
import_export: graphml2gv http://manpages.ubuntu.com/manpages/wily/man1/graphml2gv.1.html gv2gml gml2gv http://graphviz.org/pdf/gml2gv.1.pdf

nom: plantuml
documentation:
grapheekdb,
neo4j
postgresql
inkscape (svg)


dans le livre graphe et algorithme, il est mentionné la notion
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
