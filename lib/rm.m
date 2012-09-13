function rm(arg)
  if ~exist('arg'), arg = ''; end
  system(['rm ' arg]);
end
