function lrt(arg)
  if ~nargin, arg = ''; end
  system(['ls -1Frt ' arg]);
end
