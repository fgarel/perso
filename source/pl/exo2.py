# taille du ski choisi
# tailleSki = 0
# écart entre taille ski et taille personne
# ecart = 0
def les_bons_skis(nbSkis, taillePersonne, skis):
    # tailleSki sera le resultat final,
    # c'est à dire la bonne taille de ski
    # on initiailise en choississant le premer element de la liste
    tailleSki = skis[0]
    # écart entre taille ski et taille personne
    #ecart = abs(skis[0]-taillePersonne)
    ecart = abs(tailleSki-taillePersonne)

    for i in range(1, nbSkis-1):
        # Pour chaque paire de skis de la reseserve
        if ecart > abs(skis[i]-taillePersonne) or (ecart == abs(skis[i]-taillePersonne) and skis[i] < taillePersonne):
            # si l'ecart est plus petit que les écarts précédement calculées
            # alors, on choisit plutot cette taille
            ecart = abs(skis[i]-taillePersonne)
            tailleSki = skis[i]
    print(tailleSki)

nbSkis = int(input())
taillePersonne = int(input())
skis = list(map(int, input().split()))
les_bons_skis(nbSkis, taillePersonne, skis)
