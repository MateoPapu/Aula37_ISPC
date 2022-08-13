Historial2 = ("23500", "5960", "2300", "10200", "8900") # Mascota Frida

print("Gastos que superaron los 5.000:")
for recorrer in Historial2:
    recorrer = int(recorrer)
    if recorrer >= 5000:
        print(recorrer)
