precio = ARGV[0].to_f
numUser = ARGV[1].to_f
numPrem = ARGV[2].to_f
gasto = ARGV[3].to_f
print("\n")
while (numUser < 0 || gasto < 0 || numPrem < 0 || gasto < 0)
    print("error en los datos, ingresar nuevamente \n")
    if(precio < 0)
        print("Ingrese Precio nuevamente: ")
        precio = STDIN.gets.chomp.to_f
    end
    if(numUser < 0)
        print("Ingrese numero de usuarios normales nuevamente: ")
        numUser = STDIN.gets.chomp.to_f
    end
    if(numPrem < 0)
        print("Ingrese numero de usuarios Premium nuevamente: ")
        numPrem = STDIN.gets.chomp.to_f
    end
    if(gasto < 0)
        print("Ingrese gasto nuevamente: ")
        gasto = STDIN.gets.chomp.to_f
    end
end
utilidades = (precio * (numUser + (numPrem * 2))) - gasto
if(utilidades > 0)
    conInteres = utilidades - (utilidades * 0.35)
    puts("Utilidades menos el interes es: #{conInteres} \n")
else
    puts("No tiene utilidades \n")
end
print("\n")