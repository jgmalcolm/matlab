function masks = maps2masks(maps, fn)
  if ~exist('fn'), fn = @(m) m > 1; end
  masks = map(fn, maps);
end
