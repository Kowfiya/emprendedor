print("usuarios y gastos en valor absoluto: \n")
print("\n")
numUser = ARGV[0].to_f
gasto = ARGV[1].to_f
while (numUser < 0 || gasto < 0)
    print("error en los datos, ingresar nuevamente \n")
    if(numUser < 0)
        print("Ingrese numero de usuarios: ")
        numUser = STDIN.gets.chomp.to_f
    end
    if(gasto < 0)
        print("\n Ingrese gasto: ")
        gasto = STDIN.gets.chomp.to_f
    end
end
utilidades = (50 * numUser) - gasto
if(utilidades > 0)
    conInteres = utilidades - (utilidades * 0.35)
    puts("Utilidades menos el interes es: #{conInteres} \n")
else
    puts("No tiene utilidades \n")
end
print("\n")