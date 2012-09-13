function [p rr cc] = extract(P, sz, c)
  %- compute extent
  rr = (c(1) - sz(1)):(c(1) + sz(1));
  cc = (c(2) - sz(2)):(c(2) + sz(2));

  %- adjust for bounds (extended boundary conditions)
  rr(rr <= 0) = 1;
  cc(cc <= 0) = 1;
  rr(size(P,1) < rr) = size(P,1);
  cc(size(P,2) < cc) = size(P,2);

  %- extract
  p = P(rr, cc);
end
