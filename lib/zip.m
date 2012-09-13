function c = zip(a,b)
  c = cell(1,numel(a));
  for i = 1:numel(a)
    c{i} = { a{i}  b{i} };
  end
end
