#!/usr/bin/env julia
## add_packages.jl — пакеты лабораторной работы №4 (линейная алгебра)
using Pkg
Pkg.activate(".")

## Пакеты, которые нужны для примеров раздела 4.2, заданий 4.4 и сборки literate
packages = [
    "DrWatson",       # структура проекта, пути в tangle.jl
    "Literate",       # генерация .jl / .qmd / .ipynb
    "IJulia",         # Jupyter Lab, как требуется в задании
    "BenchmarkTools", # сравнение эффективности матричных операций
    "LinearAlgebra",  # нормы, факторизации, собственные значения
    "Statistics",     # mean по массиву, строкам и столбцам
    "Random",         # воспроизводимые случайные матрицы
]

println("Установка пакетов лабораторной работы №4...")
Pkg.add(packages)
println("\n✅ Все пакеты установлены!")
println("Для проверки: using LinearAlgebra, Statistics, BenchmarkTools, Literate")
