function tail(varargin)
  lines = 10;  % default number of lines
  if varargin{1}(1) == '-'
    lines = str2num(varargin{1}(2:end));
    varargin = {varargin{2:end}};
  end
  
  for file = varargin
    system(['tail -' num2str(lines) ' ' which(file{1})]);
  end
end
