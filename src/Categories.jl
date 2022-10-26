module Categories

import ..InterfaceCore: default

export Category, dom, codom, compose, id

abstract type Category{Ob, Hom} end

function objectType(C::Category{Ob, Hom}) where {Ob, Hom} Ob end 
function homType(C::Category{Ob, Hom}) where {Ob, Hom} Hom end 

dom(f) = dom(default(f), f)
codom(f) = codom(default(f), f)

compose(f::Hom,g::Hom) where {Hom} = compose(default(f), f, g)
id(f) = compose(default(f), f) # Ob -> Hom

function compose(C::Category{Ob, Hom}, homs...) where {Ob, Hom}
  foldl((f,g) -> compose(C, f, g), [homs...])
end

end