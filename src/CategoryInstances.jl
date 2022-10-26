module CategoryInstances
export FinSet, FinHom, FinSetC

using StructEquality 

using ..Categories
import ..Categories: id, dom, codom, compose

# FinSet 
########

@struct_hash_equal struct FinSet
  elts::Base.OneTo{Int}
  FinSet(i::Int) = new(Base.OneTo(i))
end


@struct_hash_equal struct FinHom
  dom::FinSet
  codom::FinSet
  vals::Vector{Int}
  FinHom(d::FinSet, cd::FinSet, vs::Vector{Int}) = new(d,cd,vs)
  FinHom(d::Int,cd::Int,vs::Vector{Int}) = 
    new(FinSet(d), FinSet(cd), vs)
end

FinHom(vals::Vector{Int}, cod::Union{Nothing, Int} = nothing) = 
  FinHom(length(vals), isnothing(cod) ? maximum(vals) : cod, vals) 


(f::FinHom)(i::Int) = f.vals[i]

@struct_hash_equal struct FinSetC <: Category{FinSet, FinHom} end

function dom(::FinSetC, f :: FinHom)::FinSet
  f.dom
end

function codom(::FinSetC, f :: FinHom)::FinSet
  f.codom
end

function compose(::FinSetC, f::FinHom, g::FinHom)::FinHom
  FinHom(f.dom, g.codom, [g(i) for i in f.vals])
end

function id(::FinSetC, A::FinSet)::FinHom
  FinHom(A, A, collect(A.elts)) 
end

end