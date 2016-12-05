
n = 6
m = 5
piste = [None] * m
piste[0] = {"x": 0, "y": 1, "l": -1}
piste[1] = {"x": 1, "y": 2, "l": 2}
piste[2] = {"x": 3, "y": 4, "l": 1}
piste[3] = {"x": 4, "y": 5, "l": -1}
piste[4] = {"x": 5, "y": 3, "l": 1}
platforme_courante = 0
piste_pos = []
fun = 0

for i in piste:
    if i["x"] == platforme_courante:
        piste_pos.append(i)

for j in piste_pos :
    
print(piste_pos)
