using AlgebraicInterfaces 
using Test 
f2,f3,f4 = FinSet.([2,3,4])

# injection from 1:n into 1:m
inj(i::Int, j::Int) = i <= j ? FinHom(i, j, collect(1:i)) : error("$i > $j")
@test compose(FinSetC(), inj(2,3), inj(3,4), inj(4,5)) == inj(2,5)