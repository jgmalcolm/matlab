function F = iff(test, T, F)
% similar to ternary operator in C   out = cond ? T : F
  if test, F = T; end
end
