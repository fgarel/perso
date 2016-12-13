
def maximise_ton_fun(n, m, piste):
    lieu = 0
    max_fun = piste[0]["l"]
    fun = 0
    boucle = 0
    stations_visitees =[]
    while True :
        # fun à l'instant
        fun += piste[lieu]["l"]
        # fun max
        if fun > max_fun :
            max_fun = fun
        stations_visitees.append(piste[lieu]["x"])
        # quand ça commence à boucler :
        if piste[lieu]["y"] in stations_visitees :
            boucle = 1
            break
        # on repart si on ne boucle pas encore et que la destination a une piste
        if piste[lieu]["y"] == piste[piste[lieu]["y"]]["x"] :
            lieu = piste[lieu]["y"]
        else :
            break

    if boucle == 1 :
        fun = 0
        lieu1 = piste[lieu]["y"]
        while piste[lieu1]["x"] != piste[lieu]["x"] :
            fun += piste[lieu1]["l"]
            lieu1 = piste[lieu1]["y"]
        fun += piste[lieu1]["l"]
        if fun > 0 :
            max_fun = "OVERDOSE DE FUN"
    print(max_fun)


n, m = map(int, input().split())
piste = [{"x": 0, "y": 0, "l": 0}] * n
for i in range(m):
    x, y, l = map(int, input().split())
    piste[x] = {"x": x, "y": y, "l": l}
maximise_ton_fun(n, m, piste)
