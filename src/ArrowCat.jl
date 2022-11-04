module ArrowCat
using ..Categories
import ..Categories: dom, codom, compose, id

struct Square{Hom}
  top::Hom
  bottom::Hom
  left::Hom
  right::Hom
end

struct ArrowCat{Ob, Hom, C <: Category{Ob, Hom}} <: Category{Hom, Square{Hom}} end

function dom(::ArrowCat, s::Square)
  s.top
end 

function codom(::ArrowCat, s::Square)
  s.bot
end 

function compose(::ArrowCat{Ob, Hom, C}, s₁::Square, s₂::Square)
  Square(dom(C, s₁), codom(C, s₂), compose(C, s₁.left, s₂.left), compose(C, s₁.right, s₂.right))
end

function id(::ArrowCat{Ob, Hom, C}, f::Obs) where {Ob, Hom, C}
  Square(f, f, id(C, f), id(C, f))
end

end