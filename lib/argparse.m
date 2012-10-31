function varargout = argparse(args, varargin)
% fetch values from key/value pairs
% >> varargin = {'x' 1 'y' 2};
% >> [x y] = parseprops(varargin, 'x', 'y');  % x==1  y==2

  assert(mod(numel(args),2) == 0) % even (tuples)
  assert(all(cellfun(@ischar, varargin)))
  assert(all(cellfun(@ischar, args(1:2:end))))

  keys = args(1:2:end);
  for i = 1:numel(varargin)
    param = varargin{i};
    idx = find(ismember(keys, param));

    if numel(idx) > 1
      error('%d matching parameters found for ''%s''', numel(idx), param), end

    if numel(idx) < 1
      error('parameter ''%s'' not found', param), end

    varargout{i} = args{2*idx};
  end
end
