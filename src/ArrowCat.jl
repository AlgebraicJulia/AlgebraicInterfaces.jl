module ArrowCat
using ..Categories

struct Square{Hom}
  top::Hom
  bottom::Hom
  left::Hom
  right::Hom
end

struct ArrowCat{Ob, Hom, C <: Category{Ob, Hom}} <: Category{Hom, Square{Hom}} end

function dom(::ArrowCat, s::Square)
    s.top #maybe more natural to make this left? 
end 

function codom 
end 

function compose 
end 

function id(::)
end

end