function top(X, elem)
  % print the top few elements of matrix X

  if ~exist('elem')
    elem = 5;
  end

  dims_str = ['   dims=[' dims(X) ']'];

  name = inputname(1);
  if isempty(name)
    name = '<temp>';
  end
  if isvector(X)
    elem = min(elem, numel(X));
    X = reshape(X(1:elem), 1, []);
    access = sprintf('1:%d', elem);
  else
    rows = min(elem, size(X,1));
    cols = min(elem, size(X,2));
    X = X(1:rows,1:cols);
    access = sprintf('1:%d,1:%d', rows, cols);
  end
  fprintf('%s(%s) =%s\n', name, access, dims_str);
  disp(X)
  fprintf('\n')
end

function s = dims(x)
  s = sprintf('%d %d', size(x,1), size(x,2));
  for i = 3:ndims(x)
    s = sprintf('%s %d', s, size(x,i));
  end
end
