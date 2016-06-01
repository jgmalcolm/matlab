function varargout = loadsome(file, varargin)
  fprintf('loading %s...\n', file)
  data = load(file, varargin{:});

  for i = 1:nargin-1
    varargout{i} = data.(varargin{i});
  end

  % if no inputs and .mat only had one variable, assume that is wanted
  flds = fieldnames(data);
  if nargin == 1 && numel(flds) == 1
    varargout{1} = data.(flds{1});
  end
end
