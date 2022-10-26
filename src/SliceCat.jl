using ..AlgebraicInterfaces

struct Slice{Ob,Hom}
  ob::Ob
  hom::Hom
end

struct SliceC{Ob,Hom,C<:Category{Ob,Hom}} <: Category{}