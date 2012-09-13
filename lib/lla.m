function lla(arg)
  if ~nargin, arg = ''; end
  system(['ls -1FlA ' arg]);
end
