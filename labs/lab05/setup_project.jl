using Pkg
Pkg.add("DrWatson")
using DrWatson
## Создание проекта
project_name = "project"
initialize_project(project_name; authors="Беспутин Глеб Антонович", git=false)
println("✅ Проект создан: ", project_name)
println("Перейдите в директорию: cd ", project_name)
