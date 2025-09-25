# Operadores aritméticos
IO.puts("Suma 5 + 5 = #{5 + 5}")
IO.puts("Resta 5 - 5 = #{5 - 5}")
IO.puts("Multiplicación 5 * 5 = #{5 * 5}")
IO.puts("División 5 / 5 = #{5 / 5}")
# No hay operador % para el modulo cómo en otros lenguajes, pero si una función llamada rem(n,m)
IO.puts("Módulo 31 % 3 = #{rem(31, 3)}")
# Operadores de asignación
x = "asignación"
IO.puts(x)
[head, middle | tail] = ["cabeza", :middle, "cola"]
Enum.join([head, middle, tail], ",") |> IO.puts()

# Operadores lógicos
# and, or y not son operadores de corto circuito y deben usarse con Booleans
op_or_corto_circuito = true or false
op_and_corto_circuito = true and nil
IO.puts("Operador or (true or false) -> #{op_or_corto_circuito}")
IO.puts("Operador and (true and nil) -> #{op_and_corto_circuito}")
IO.puts("Operador not (not true) -> #{not true}")
# Para valores no booleanos
op_or = true || false
op_and = true && false
IO.puts("Operador || (true || false) -> #{op_or}")
IO.puts("Operador && (true && false) -> #{op_and}")
IO.puts("Operador ! (!true) -> #{!true}")

# Operadores de comparación
IO.puts("1 < 1.0 -> #{1 < 1.0}")
IO.puts("1 > 2.0 -> #{1 > 2.0}")
IO.puts("1 <= 1.0 -> #{1 <= 1.0}")
IO.puts("1 >= 2.0 -> #{1 >= 2.0}")
IO.puts("1 == 1.0 -> #{1 == 1.0}")
IO.puts("1 != 1.0 -> #{1 != 1.0}")
IO.puts("1 === 1.0 -> #{1 === 1.0}")
IO.puts("1 !== 1.0 -> #{1 !== 1.0}")
# Operadores de identidad

# Operador de pertenencia
list_has_fives = 5 in [1, 2, 3, 4, 5]
list_hasnt_fives = 5 in [1, 2, 3, 4]
IO.puts("5 in [1, 2, 3, 4, 5] -> #{list_has_fives}")
IO.puts("5 not in [1, 2, 3, 4] -> #{list_hasnt_fives}")

# Estructuras de control

# Excepciones
try do
  1 = x
rescue
  e -> IO.puts(Exception.message(e))
end

# Ejercicio extra:  números comprendidos
# entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
lista = 10..55

Enum.filter(lista, fn i -> i !== 16 and rem(i, 3) != 0 end)
|> Enum.join(",")
|> IO.puts()
