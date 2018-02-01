# ejercicio1
puts 'Este es el ejercicio1'
h = { claveuno: 10, clavedos: 20, clavetres: 30 }
puts h

# ejercicio2
puts 'este es el ejercicio 2-1'
productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' =>
750}
productos.each { |producto, valor| puts producto }

puts 'ejercicio2-2'
productos['cereal'] = 2200
print productos
puts ' '
puts 'ejercicio 2-3'
productos['bebida'] = 2000
print productos
puts' '
puts 'ejercicio 2-4'
array = []
print productos.to_a
puts ' '
puts 'ejercicio 2-5'
productos.delete('galletas')
puts productos
#ejercicio3
puts 'ejercicio3'
h = {"x": 1, "y":2}
puts h
h[:z] = 3
puts h
h[:x] = 5
puts h
h.delete(:y)
puts h
h.each { |n, v| puts 'yeah' if n==:z }
h = {"x": 1, "y":2}
z={}
h.each { |n,v| z[v]=n }
  puts z
# ejercicio4
puts 'ejercicio4-1'
personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
x={}
a=[]
a=personas.zip(edades)
x = a.to_h
print x
puts ''
puts 'ejercicio4-2'
def promedio(h)
suma=0
i=0
h.each { |n,e| suma += e and i+=1}
puts suma / i
end
promedio(x)
#ejercicio 5
puts 'ejercicio 5-1'
meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]
x={}
a=[]
a=meses.zip(ventas)
x = a.to_h
print x
y={}
x.each {|a,b| y[b]=a}
print y
puts 'Ejercicio 5-2'
palabra = ''
y.each do |a,b|
  palabra = b if palabra.length < b.length
end
puts palabra
# ejercicio 6
puts ' '
puts 'ejercicio 6-1'
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
numero = 0
restaurant_menu.each do |a,b|
  numero = b if numero < b
end
puts numero
puts 'ejercicio 6-2'
numero = 100
restaurant_menu.each do |a,b|
  numero = b if numero > b
end
puts ' '
puts 'ejercicio 6-3'
suma=0
i=0
promedio=0
restaurant_menu.each do |a,b|
  i+=1
  suma+=b
  promedio = suma/i
end
# puts promedio
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
puts ' '
puts 'ejercicio 6-4'
nombres=[]
precios=[]
restaurant_menu.map {|a,b| nombres.push(a)}
print nombres
puts ' '
puts 'ejercicio 6-5'
restaurant_menu.map {|a,b| precios.push(b)}
print precios
puts ' '
puts 'ejercicio 6-6'
restaurant_menu.each {|a,b| restaurant_menu[a]=b*1.19}
print restaurant_menu
puts ' '
puts 'ejercicio 6-7'
restaurant_menu.each {|a,b| restaurant_menu[a]=b*0,8 if }
puts ' '
# ejercicio 7
puts 'ejercicio 7'
inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}
continuar = true
while continuar == true

  puts "Menú"

  puts "1. ingresar"

  puts "2. eliminar"

  puts "3. actualizar"

  puts "4. stock total"

  puts "5. material con mayor stock"

  puts "6. consultar producto"

  puts "7. salir"



  opcion = gets.chomp.to_i



  case opcion

    when 1 # if opcion == 1

      puts 'opción1 - ingrese un elemento (ejemplo: celular,100)' # imprime opción 1

      r = gets.chomp # obtiene string por teclado y guarda

      array = r.split(',') # divide el sting según el argumento entre paréntesis

      inventario[array[0].to_sym] = array[1].to_i # guarda en inventario

      puts inventario # imprime inventario



    when 2 # if opcion == 2

      puts "opción 2 - eliminar un item"

      puts inventario

      puts "ingrese elemento a eliminar"

      eliminar = gets.chomp.to_sym

      inventario.delete(eliminar)

      puts inventario



    when 3 # if opcion == 3

      puts "opción 3 - actualizar"

      item = gets.chomp.to_sym # => "celular\n" => "celular" => :celular

      nuevo_valor = gets.chomp.to_i # => "200\n" => "200" => 200

      inventario[item] = nuevo_valor

      puts inventario



    when 4 #if opcion == 4

      puts "opción 4 - visualizar stock total"

      acumulador = 0

      inventario.each do |key, value| # recibe claves y valores

        acumulador = acumulador + value

      end

      puts "el stock total es de: #{acumulador}"



    when 5

      puts "opción 5 - seleccionar item con mayor cantidad de stock"

      mayor = 0

      inventario.each do |llave, valor|

        mayor = valor if valor > mayor

      end

      puts "el mayor es: #{mayor}"



    when 6

      puts "opción 6 - buscar un producto"

      clave_buscada = gets.chomp.to_sym

      encontrada = false

      inventario.each do |clave, valor|

        encontrada = true if clave == clave_buscada

      end

      puts  encontrada ? "el artículo #{clave_buscada} fue encontrada" : "el artículo #{clave_buscada} NO fue encontrado"



    when 7

      puts "ha elegido salir"
      continuar = false

    else

      puts "opción inválida"

  end

end
