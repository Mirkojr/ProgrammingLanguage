declare
fun {Fact N}
if N==0 then 1
elseif N>0 then N*{Fact N-1}
else raise domainError end
end
end

declare
proc {Fact N ?R}
   if N == 0 then R = 1
   elseif N > 0 then N1 R1 in
      N1 = N-1
      {Fact N1 R1}
      R = N1 * R1
   else raise domainError end
   end
end

declare
fun {FactIter N A}
   if N == 0 then A
   elseif N > 0
   then  {FactIter N-1 N*A}
   else raise domainError('N must be a non-negative integer') end
end
end

{Browse {FactIter 5 1}}
      

