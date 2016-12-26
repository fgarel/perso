def choix_des_skis(nbPersonnes, personnes, skis):
    # on tri les listes
    personnes.sort()
    skis.sort()

    # niveau de déception des clients
    deception = 0
    for i in range(nbPersonnes):
        deception += abs(personnes[i]-skis[i])
    print(deception)

nbPersonnes = int(input())
personnes = list(map(int, input().split()))
skis = list(map(int, input().split()))

choix_des_skis(nbPersonnes, personnes, skis)
