function a = foldr(fn, a, m)
  for i = numel(m):-1:1
    a = fn(m{i}, a);
  end
end
