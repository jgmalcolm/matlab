function ifpath(fn,p)
  if ~exist(fn), addpath(p); end
end
