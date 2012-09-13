function du(varargin)
  arg = '';
  for i = 1:numel(varargin)
    arg = [arg ' ' varargin{i}];
  end
  
  system(['du ' arg]);
end
