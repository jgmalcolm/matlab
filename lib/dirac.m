function d = dirac(x, eps)
%   d = zeros(size(x));
%   ind = find(abs(x) < eps);
%   x = x(ind);
%   d(ind) = (1 + cos(pi*x/eps))/2/eps;
  d = eps./(eps^2 + x.^2)/pi;  % infinite support
end
