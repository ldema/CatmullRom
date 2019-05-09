using Documenter
using CatmullRom

makedocs(
    sitename = "CatmullRom",
    format = Documenter.HTML(),
    modules = [CatmullRom]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
