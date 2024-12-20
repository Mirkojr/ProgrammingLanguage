%recursive Length 
declare
fun {Length Xs}
   case Xs of nil then 0
   [] _|Xr then 1 + {Length Xr}
   end
end

%iterative Length
declare
fun {IterLength Xs}
   fun {Iter Xs A}
      case Xs of nil then A
      [] _|Xr then {Iter Xr (A+1)}
      end
   end
   in
      {Iter Xs 0}
end

declare 
L = 1 | 2 | 3 | 4 | 5 | 6 | nil

{Browse {IterLength L}}
