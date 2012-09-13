function w(varargin)
  if ~exist('varargin'), varargin = {''}; end
  varargin = map(@(x) [x ' '], varargin);
  evalin('caller', ['whos ' [varargin{:}]]);
end
