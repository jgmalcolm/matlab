function varargout = loadcached(file, varargin)
  % initialize persistent cache
  persistent cache
  if isempty(cache)
    cache.keys = {};
    cache.vals = {};
  end

  % if not in cache, pull it in
  if ~ismember(file, cache.keys)
    fprintf('caching %s... (%d entries)\n', file, 1+numel(cache.keys))
    cache.vals{end+1} = load(file);  % attempt load before recording filename
    cache.keys{end+1} = file;
  end

  % return from cache
  idx = find(ismember(cache.keys,file));    assert(numel(idx) == 1)
  data = cache.vals{idx};

  for i = 1:nargin-1
    varargout{i} = data.(varargin{i});
  end

  % if no varnames ...
  flds = fieldnames(data);
  if nargin == 1
    % ...and .mat only had one variable, assume that is wanted
    if numel(flds) == 1
      varargout{1} = data.(flds{1});
    else
      % otherwise return as struct
      varargout{1} = data;
    end
  end
end
