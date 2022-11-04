using ..AlgebraicInterfaces

struct Slice{Ob,Hom}
  ob::Ob
  hom::Hom
end

struct SliceC{Ob,Hom,C<:Category{Ob,Hom}} <: Category{Slice{Ob, Hom}, Tuple{Slice, Slice, Hom}}
  over::Ob
end

function dom(::SliceC{Ob, Hom, C}, f::Hom)::Ob
  
end 

function codom(::SliceC, s::Square)
  s.bot
end 

function compose(::{Ob, Hom, C}, s₁::Square, s₂::Square)
  Square(dom(s₁), codom(s₂), compose(C, s₁.left, s₂.left), compose(C, s₁.right, s₂.right))
end 

function id(::ArrowC{Ob, Hom, C}, f::Obs) where {Ob, Hom, C}
end

end