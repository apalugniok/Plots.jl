using Pkg

Pkg.add("ImageMagick")
Pkg.build("ImageMagick")

# Pkg.clone("GR")
# Pkg.build("GR")

Pkg.checkout(PackageSpec("https://github.com/JuliaPlots/PlotReferenceImages.jl.git", rev="master"))

# Pkg.clone("https://github.com/JuliaStats/KernelDensity.jl.git")

# Pkg.add("StatPlots")

Pkg.add(PackageSpec(url="https://github.com/JuliaPlots/RecipesBase.jl.git", rev="master"))
Pkg.add(PackageSpec(url="https://github.com/JuliaPlots/PlotUtils.jl.git", rev="master"))

# Pkg.clone("Blink")
# Pkg.build("Blink")
# import Blink
# Blink.AtomShell.install()
# Pkg.add("Rsvg")
# Pkg.add("PlotlyJS")

# Pkg.checkout("RecipesBase")
# Pkg.clone("VisualRegressionTests")

# need this to use Conda
# ENV["PYTHON"] = ""
# Pkg.add("PyPlot")
# Pkg.build("PyPlot")

# Pkg.add("InspectDR")

Pkg.test("Plots"; coverage=false)
