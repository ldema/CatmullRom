using Documenter
using CatmullRom

makedocs(
    sitename = "CatmullRom",
    format = :html,
    modules = [CatmullRom]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/ldema/CatmullRom.jl"
    branch = "gh-pages"
)
