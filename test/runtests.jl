using AlgebraicInterfaces 

f2,f3,f4 = [FinSet(OneTo(x)) x for x in [2,3,4]]

inj(i::Int, j::Int) = FinHom([1,2], j)
i_f23 = FinHom(f2,f3,[1,2])