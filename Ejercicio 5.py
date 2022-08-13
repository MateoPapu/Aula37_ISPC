Historial = [2350, 5960, 23000, 1000, 8900] # Mascota Puppy
con=0

for recorrer in Historial:
    con+=recorrer

if con <= 30000:
    print("Gasto:",con)
else:
    print("Gasto por encima de lo presupuestado")
