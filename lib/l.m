function l(arg)
  if ~nargin, arg = ''; end
  system(['ls -1F ' arg]);
end
