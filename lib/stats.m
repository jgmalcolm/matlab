function stats(varargin)
  x = varargin{1};
  if ischar(x)
    name = sprintf('%s  ', x);
    x = varargin{2};
  elseif isempty(inputname(1))
    name = '';
  else
    name = sprintf('%s  ', inputname(1));
  end
  x = double(x(:));

  nans = isnan(x);
  if any(nans)
    nans = sprintf('  nan %d', nnz(nans));
  else
    nans = '';
  end

  fprintf('%srange=[%g  %g]  mean %g  std %g  median %g  kurt %g%s\n', ...
          name, nanmin(x), nanmax(x), nanmean(x), nanstd(x), nanmedian(x), nankurt(x), nans)
end
