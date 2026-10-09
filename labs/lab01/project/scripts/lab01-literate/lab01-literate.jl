typeof(3), typeof(3.5), typeof(3/3.5), typeof(sqrt(3+4im)), typeof(pi)

1.0/0.0, 1.0/(-0.0), 0.0/0.0

for T in [Int8,Int16,Int32,Int64,Int128,UInt8,UInt16,UInt32,UInt64,UInt128]
    println("$(lpad(T,7)): [$(typemin(T)),$(typemax(T))]")
end

Int64(2.0), Char(2), typeof(Char(2))
convert(Int64, 2.0), convert(Char,2)
Bool(1), Bool(0)

typeof(promote(Int8(1), Float16(4.5), Float32(4.1)))

function f(x)
    x^2
end
f(4)

g(x) = x^2
g(8)

a = [4 7 6]      # вектор-строка
b = [1, 2, 3]    # вектор-столбец
a[2], b[2]       # вторые элементы векторов

a = 1; b = 2; c = 3; d = 4
Am = [a b; c d]
Am[1,1], Am[1,2], Am[2,1], Am[2,2]

aa = [1 2]
AA = [1 2; 3 4]
aa*AA*aa'
aa, AA, aa'

run(`date`)
run(`whoami`)

print("Hello")
println(" world")
show(3.14)
println()
show("Julia")

open("test.txt", "w") do io
    write(io, "Hello, file!")
end

read("test.txt", String)

open("test.txt") do io
    println(readline(io))
end

readlines("test.txt")

using DelimitedFiles

writedlm("data.csv", [1 2; 3 4], ',')
readdlm("data.csv", ',')

parse(Int, "123")
parse(Float64, "3.14")
parse(Bool, "true")

2 + 3          # сложение
7 - 4          # вычитание
3 * 4          # умножение
10 / 3         # деление
2^10           # возведение в степень
sqrt(16)       # извлечение квадратного корня

5 > 3          # больше
5 < 3          # меньше
5 == 5         # равно
5 != 3         # не равно
true && false  # логическое И
true || false  # логическое ИЛИ
!true          # логическое НЕ

using LinearAlgebra

A = [1 2; 3 4]
B = [5 6; 7 8]

A + B          # сложение матриц
A - B          # вычитание матриц
2 * A          # умножение на скаляр
A * B          # матричное умножение

A'
dot([1, 2, 3], [4, 5, 6])
