function H = heaviside(x, eps)
  H = zeros(size(x));
  H(eps < x) = 1;
  ind = find(abs(x) < eps);
  x = x(ind);
  H(ind) = (1 + x/eps + sin(pi*x/eps)/pi)/2;
end
