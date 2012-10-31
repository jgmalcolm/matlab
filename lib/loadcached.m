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
    cache.keys{end+1} = file;
    cache.vals{end+1} = load(file);
  end

  % return from cache
  idx = find(ismember(cache.keys,file));    assert(numel(idx) == 1)
  data = cache.vals{idx};

  for i = 1:nargin-1
    varargout{i} = data.(varargin{i});
  end
end
