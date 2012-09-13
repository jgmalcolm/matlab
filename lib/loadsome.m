function varargout = loadsome(file, varargin)
  fprintf('loading %s...\n', file)
  s = load(file, varargin{:});

  for i = 1:nargout
    varargout{i} = s.(varargin{i});
  end
end
