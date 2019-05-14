using Documenter
using CatmullRom

makedocs(
    sitename = "CatmullRom",
    modules = [CatmullRom],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"
    )
)


# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/ldema/CatmullRom.jl",
    branch = "gh-pages"
)
