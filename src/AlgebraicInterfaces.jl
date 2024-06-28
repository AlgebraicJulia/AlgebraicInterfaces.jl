module AlgebraicInterfaces
export dom, codom, compose, id, Ob, ob, Hom, hom, munit, mcompose, ocompose, 
        oapply, attr, attrtype, generators, equations, getvalue

# Theory of categories 
function dom end
function codom end
function compose end
function id end

function Ob end 
function ob end 
function Hom end 
function hom end

# Monoidal categories 
function munit end
function mcompose end

# Operads
function ocompose end
function oapply end

# Attributed CSets
function attr end 
function attrtype end

# Generic functions
function generators end
function equations end
function getvalue end

end # module
