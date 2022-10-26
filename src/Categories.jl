module Categories

export Category, dom, codom, compose, id

abstract type Category{Ob, Hom} end

function objectType(C::Category{Ob, Hom}) Ob end 
function morphType(C::Category{Ob, Hom}) Hom end 

function dom end # Hom -> Ob 
function codom end # Hom -> Ob 

function compose end # Hom -> Hom -> Hom OR [Hom] -> Hom
function id end # Ob -> Hom

function compose(C::Category{Ob, Hom}, homs::Vector{Hom}) where {Ob, Hom}
    foldl((f,g) -> compose(C, f, g), homs)
end

end