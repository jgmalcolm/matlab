function df(varargin)
  unix(['df ' quoteunix(varargin{:})]);
end
