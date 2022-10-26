module AlgebraicInterfaces
using Reexport 


include("InterfaceCore.jl")
include("Categories.jl")
include("CategoryInstances.jl")

@reexport using .InterfaceCore
@reexport using .Categories
@reexport using .CategoryInstances

end # module AlgebraicInterfaces
