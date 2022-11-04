module FinSets

using ..Categories
import Categories: apply

struct FinHom
  dom::Int
  codom::Int
  vs::Vector{Int}
end

struct FinSetC <: Category{Int, FinHom} end

apply(::FinSetC, ::Dom, f::FinHom) = f.dom



end