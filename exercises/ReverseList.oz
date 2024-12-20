declare
fun {Reverse Xs}
   case Xs
   of nil then nil  
   [] X|Xr then  
   {Append {Reverse Xr} [X]} 
   end
end

declare
fun {Append Ls Ms}
   case Ls of nil then Ms
   [] X|Lr then X|{Append Lr Ms}
   end
end

%IterReverse with append
declare
fun {IterReverseAppend Xs}
   fun {Iter Xs A}
      case Xs of nil then A
      [] X|Xr then
	{Append {Iter Xr A} [X]}
      end
   end
in
   {Iter Xs nil}
end

%IterReverse normal
local
fun {IterReverse Rs Ys}
   case Ys
   of nil then Rs
   [] Y|Yr then {IterReverse Y|Rs Yr}
   end
end
in
fun {Reverse Xs}
   {IterReverse nil Xs}
end
end

L = 1 | 2 | 3 | 4 | 0 | nil
{Browse {IterReverse L}}