function base = dirname(path)
  ind = strmatch('/', path(:));
  if isempty(ind)
    base = '.';
  else
    base = path(1:ind(end)-1);
  end
end
  
