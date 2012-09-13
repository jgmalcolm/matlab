function varargout = map(fn, varargin)
  varargout = cell(1,max(1,nargout));
  [varargout{:}] = cellfun(fn, varargin{:}, 'Un', 0);
end

% function m = map(fn, m)
%   m = cellfun(fn, m, 'Un', 0);
% end
