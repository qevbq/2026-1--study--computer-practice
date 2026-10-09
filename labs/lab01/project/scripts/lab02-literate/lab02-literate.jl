using DrWatson
@quickactivate "project"

()

favoritelang = ("Python", "Julia", "R")

x1 = (1, 2, 3)

x2 = (1, 2.0, "tmp")

x3 = (a=2, b=1+2)

length(x2)

x2[1], x2[2], x2[3]

c = x1[2] + x1[3]

x3.a, x3.b, x3[2]

in("tmp", x2), 0 in x2

phonebook = Dict("Иванов И.И." => ("867-5309", "333-5544"),
                 "Бухгалтерия" => "555-2368")

keys(phonebook)

values(phonebook)

pairs(phonebook)

haskey(phonebook, "Иванов И.И.")

phonebook["Сидоров П.С."] = "555-3344"

pop!(phonebook, "Иванов И.И.")

a = Dict("foo" => 0.0, "bar" => 42.0)
b = Dict("baz" => 17, "bar" => 13.0)
merge(a, b), merge(b, a)

A = Set([1, 3, 4, 5])

B = Set("abrakadabra")

S1 = Set([1, 2]); S2 = Set([3, 4])
issetequal(S1, S2)

S3 = Set([1, 2, 2, 3, 1, 2, 3, 2, 1])
S4 = Set([2, 3, 1])
issetequal(S3, S4)

C = union(S1, S2)

D = intersect(S1, S3)

E = setdiff(S3, S1)

issubset(S1, S4)

push!(S4, 99)

pop!(S4)

empty_array_1 = []

empty_array_2 = (Int64)[]
empty_array_3 = (Float64)[]

a = [1, 2, 3]

b = [1 2 3]

A = [[1, 2, 3] [4, 5, 6] [7, 8, 9]]
B = [[1 2 3]; [4 5 6]; [7 8 9]]

c = rand(1, 8)

C = rand(2, 3)

D = rand(4, 3, 2)

roots = [sqrt(i) for i in 1:10]

sq = [3*x^2 for x in 1:2:9]

ar = [10 20 30; 15 25 35; 12 22 32]

sort(ar, dims=1)

sort(ar, dims=2)

ar .> 14

findall(ar .> 14)

isempty([])
isempty([1, 2, 3])
isempty(())

length([1, 2, 3])
length((1, 2, 3))
length(Dict("a" => 1, "b" => 2))

1 in [1, 2, 3]
4 in [1, 2, 3]
"tmp" in (1, 2.0, "tmp")

unique([1, 2, 2, 3, 1, 2, 3])

reduce(+, [1, 2, 3, 4])
reduce(*, [1, 2, 3, 4])

maximum([3, 1, 4, 1, 5])
minimum([3, 1, 4, 1, 5])
maximum(x -> x^2, [-3, 1, 4])
minimum(x -> x^2, [-3, 1, 4])

tup = (3, 1, 4, 1, 5)

dct = Dict("a" => 1, "b" => 2, "c" => 3)

st = Set([1, 2, 2, 3, 3, 3])

arr = [3, 1, 4, 1, 5, 9, 2, 6]

isempty(tup), isempty(dct), isempty(st), isempty(arr)

length(tup), length(dct), length(st), length(arr)

3 in tup, haskey(dct, "a"), 2 in st, 4 in arr

unique(tup), unique(arr)

reduce(+, tup), reduce(+, arr), reduce(*, arr)

maximum(tup), minimum(tup)
maximum(arr), minimum(arr)

N = 25

v1 = collect(1:N)

v2 = collect(N:-1:1)

v3 = vcat(1:N, (N-1):-1:1)

tmr = [4, 6, 3]

v5 = fill(tmr[1], 10)

v6 = repeat(tmr, 10)

v7 = vcat(fill(tmr[1], 11), fill(tmr[2], 10), fill(tmr[3], 10))

v8 = vcat(fill(tmr[1], 10), fill(tmr[2], 20), fill(tmr[3], 30))

v9 = vcat(2 .^ tmr, fill(2^tmr[3], 4))
count6 = count(x -> x == 6, v9)

xs = 3.3:0.1:6.0
y10 = exp.(xs) .* cos.(xs)
mean_y10 = sum(y10) / length(y10)

x11 = 0.1; y11 = 0.2
v11 = [(x11^i, y11^j) for i in 3:3:36 for j in 1:3:34]

M = 25
v12 = [2^i / i for i in 1:M]

N13 = 30
v13 = ["fn$i" for i in 1:N13]

using Random
Random.seed!(123)
n = 250
x14 = rand(0:999, n)
y14 = rand(0:999, n)

diff_vec = y14[2:end] .- x14[1:end-1]

comb_vec = x14[1:end-2] .+ 2 .* x14[2:end-1] .- x14[3:end]

trig_vec = sin.(y14[1:end-1]) ./ cos.(x14[2:end])

sum_val = sum(exp.(-x14[2:end]) ./ (x14[1:end-1] .+ 10))

y_big = y14[y14 .> 600]

idx_big = findall(y14 .> 600)

x_corresponding = x14[idx_big]

x_mean = sum(x14) / length(x14)
sqrt_dev = sqrt.(abs.(x14 .- x_mean))

max_y = maximum(y14)
count_near_max = count(v -> abs(v - max_y) <= 200, y14)

count_even = count(iseven, x14)
count_odd  = count(isodd, x14)

count_mult7 = count(v -> v % 7 == 0, x14)

x_sorted_by_y = x14[sortperm(y14)]

top10 = sort(x14, rev=true)[1:10]

x_unique = unique(x14)

squares = [i^2 for i in 1:100]

using Primes

primes_arr = primes(1000)

p89 = primes_arr[89]

slice = primes_arr[89:99]

sum1 = sum(i^3 + 4i^2 for i in 10:100)

M6 = 25
sum2 = sum(2^i / i + 3^i / i^2 for i in 1:M6)

function partial_products()
    total = 1.0
    prod = 1.0
    for k in 1:19
        prod *= (2k) / (2k + 1)
        total += prod
    end
    return total
end

sum3 = partial_products()
