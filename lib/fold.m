function a = foldl(fn, a, m)
  for i = 1:numel(m)
    a = fn(m{i}, a);
  end
end
