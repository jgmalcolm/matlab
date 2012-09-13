function la(arg)
  if ~nargin, arg = ''; end
  system(['ls -1FA ' arg]);
end
