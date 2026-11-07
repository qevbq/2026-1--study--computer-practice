#!/usr/bin/env julia
## add_packages.jl — пакеты лабораторной работы №5 (построение графиков)
using Pkg
Pkg.activate(".")

## Системный Python с matplotlib, чтобы PyPlot не ставил отдельный Conda.
ENV["PYTHON"] = "/usr/bin/python3"
ENV["MPLBACKEND"] = "Agg"

## Пакеты из раздела 5.2 и сборки literate.
## plotly() в Plots сохраняет png через PlotlyBase и PlotlyKaleido.
packages = [
    "DrWatson",        # структура проекта, пути в tangle.jl
    "Literate",        # генерация .jl / .qmd / .ipynb
    "IJulia",          # Jupyter Lab, как требуется в задании
    "Plots",           # единый интерфейс графиков
    "PyPlot",          # бэкенд pyplot(), подписи на русском
    "UnicodePlots",    # бэкенд unicodeplots()
    "PlotlyBase",      # бэкенд plotly()
    "PlotlyKaleido",   # сохранение plotly в png
    "Distributions",   # нормальное распределение и гистограммы
    "Statistics",      # mean, std для погрешностей
    "Random",          # воспроизводимые случайные выборки
]

println("Установка пакетов лабораторной работы №5...")
Pkg.add(packages)
println("\n✅ Все пакеты установлены!")
println("Для проверки: using Plots, Distributions, Statistics")
