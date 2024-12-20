%recursive SumList
declare
fun {SumList Xs}
   case Xs of nil then 0
   [] X|Xr then X + {SumList Xr}
   end
end

%kernel language SumList
declare
proc {SumListKernel Xs ?R}
   case Xs of nil then R = 0
   [] X|Xr then
      local B in
	 {SumList Xr B}
	 R = B + X
      end
   end
end

		  
%iterative SumList
declare
fun {IterSumList Xs}
   fun {Iter Xs A}
      case Xs of nil then A
      [] X|Xr then {Iter Xr (A+X)}
      end
   end
in
   {Iter Xs 0}
end

declare
L = 1 | 2 | 3 | 4 | 5 | 6 | 7 | nil
{Browse {SumListKernel L}}