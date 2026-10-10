let n = 0
    while n < 10
        n += 1
        println(n)
    end
end

myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]

let i = 1
    while i <= length(myfriends)
        friend = myfriends[i]
        println("Hi $friend, it's great to see you!")
        i += 1
    end
end

for n in 1:2:10
    println(n)
end

for friend in myfriends
    println("Hi $friend, it's great to see you!")
end

let x = 5, y = 10
    (x > y) ? x : y
end

function sayhi(name)
    println("Hi $name, it's great to see you!")
end

function f(x)
    x^2
end

sayhi("C-3PO")
f(42)

sayhi2(name) = println("Hi $name, it's great to see you!")
f2(x) = x^2

sayhi3 = name -> println("Hi $name, it's great to see you!")
f3 = x -> x^2

v = [3, 5, 2]
sort(v)
v
sort!(v)
v

f(x) = x^2
map(f, [1, 2, 3])
map(x -> x^3, [1, 2, 3])
broadcast(f, [1, 2, 3])
f.([1, 2, 3])

A = [i + 3*j for j in 0:2, i in 1:3]
f(A)

import Pkg
Pkg.add("Colors")

using Colors

palette = distinguishable_colors(100)

rand(palette, 3, 3)

let n = 5
    M1 = zeros(Int, n, n)
    for i in 1:n
        for j in 1:n
            M1[i, j] = i + j
        end
    end
    println("Матрица i+j:")
    display(M1)
end

function matrix_sum(A)
    s = 0
    for x in A
        s += x
    end
    return s
end

let A = [1 2 3; 4 5 6; 7 8 9]
    println("Сумма элементов: ", matrix_sum(A))
end

function matrix_prod(A)
    p = 1
    for x in A
        p *= x
    end
    return p
end

let A = [1 2 3; 4 5 6; 7 8 9]
    println("Произведение элементов: ", matrix_prod(A))
end

let A = [3 1 4; 1 5 9; 2 6 5]
    println("Максимум: ", maximum(A))
    println("Минимум: ", minimum(A))
end

using LinearAlgebra

let A = [1.0 2.0; 3.0 4.0]
    println("Транспонирование:")
    display(A')
    println("Определитель: ", det(A))
    println("Обратная матрица:")
    display(inv(A))
end

let A = [2.0 1.0; 1.0 3.0], b = [3.0, 5.0]
    x = A \ b
    println("Решение: ", x)
    println("Проверка A*x - b: ", A*x - b)
end

let A = [1+2im 3-im; 0+1im 2+2im]
    println("Матрица комплексных чисел:")
    display(A)
    println("Сопряжённая транспонированная:")
    display(A')
    println("Модуль определителя: ", abs(det(A)))
end

function my_outer(A, B, op)
    L = size(A, 1)
    M = size(A, 2)
    N = size(B, 2)
    C = zeros(Int, L, N)
    for i in 1:L
        for j in 1:N
            s = 0
            for k in 1:M
                s += op(A[i, k], B[k, j])
            end
            C[i, j] = s
        end
    end
    return C
end

let A_test = [1 2; 3 4], B_test = [5 6; 7 8]
    println("outer(A, B, *):")
    display(my_outer(A_test, B_test, *))
end

let A = [2.0 -1.0  0.0  0.0  0.0;
        -1.0  2.0 -1.0  0.0  0.0;
         0.0 -1.0  2.0 -1.0  0.0;
         0.0  0.0 -1.0  2.0 -1.0;
         0.0  0.0  0.0 -1.0  2.0],
    y = [1.0, 0.0, 0.0, 0.0, 0.0]

    x_sol = A \ y
    println("Решение системы: ", x_sol)
end

using Random
Random.seed!(42)
M = rand(1:10, 6, 10)

let N = 4
    count_greater = [count(>(N), M[i, :]) for i in 1:size(M, 1)]
    println("Число элементов > $N в каждой строке: ", count_greater)
end

let M_val = 7
    rows_with_two_7 = [i for i in 1:size(M, 1) if count(==(M_val), M[i, :]) == 2]
    println("Строки, где $M_val встречается ровно 2 раза: ", rows_with_two_7)
end

let K = 75
    col_sums = sum(M, dims=1)[:]
    pairs_above_K = [(i, j) for i in 1:size(M, 2) for j in (i+1):size(M, 2)
                     if col_sums[i] + col_sums[j] > K]
    println("Пары столбцов с суммой > $K: ", pairs_above_K)
end

let sum_11_1 = sum(i^4 / (3 + j) for i in 1:20, j in 1:5)
    println("11.1) ", sum_11_1)
end

let sum_11_2 = sum(i^4 / (3 + i*j) for i in 1:20, j in 1:5)
    println("11.2) ", sum_11_2)
end
