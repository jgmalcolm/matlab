function varargout = loadsome(file, varargin)
  s = load(file, varargin{:});
  
  for i = 1:nargout
    varargout{i} = s.(varargin{i});
  end
end
