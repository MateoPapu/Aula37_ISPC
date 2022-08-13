Historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426) # Mascota Lennon
cont=0
cont_av=0
av=0

for recorrer in Historial3:
    cont += recorrer
    cont_av += 1

av = cont / cont_av

if av <= 4500:
    print("Gasto promedio:", round(av,2))
else:
    print("Se ha excedido el gasto promedio de su mascota")
