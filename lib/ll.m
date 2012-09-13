function ll(arg)
  if ~nargin, arg = ''; end
  system(['ls -1Fl ' arg]);
end
