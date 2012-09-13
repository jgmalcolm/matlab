function d = pD(D, r, c)
  d = D(r,c) - D(r,c-1);
end
function d = pDx_f(D, r, c)
  d = D(r,c+1) - D(r,c);
end
function d = pDx(D, r, c)
  if      c == 1,         d = pDx_f(D, r, c);
  elseif  c == size(D,2), d = pDx_b(D, r, c);
  else                    d = (D(r,c+1) - D(r,c-1))/2;
  end
end
function d = pDy_b(D, r, c)
  d = D(r,c) - D(r-1,c);
end
function d = pDy_f(D, r, c)
  d = D(r+1,c) - D(r,c);
end
function d = pDy(D, r, c)
  if      r == 1,         d = pDy_f(D, r, c);
  elseif  r == size(D,1), d = pDy_b(D, r, c);
  else                    d = (D(r+1,c) - D(r-1,c))/2;
  end
end
