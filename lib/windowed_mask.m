function m_win = windowed_mask(m, perc)
% WINDOWED_MASK Grab centered window around each training example

  [r c n] = size(m);
   
  % determine maximum lengths along each axis
  charlen = [0 0 ];
  for i = 1:n
    [rr cc] = find(m(:,:,i));
    rr = max(rr) - min(rr);
    cc = max(cc) - min(cc);
    if (charlen(1) < rr), charlen(1) = rr; end
    if (charlen(2) < cc), charlen(2) = cc; end
  end
  charlen = round((1 + 2*perc)*charlen); % inflate
  ind_odd = find(mod(charlen,2));
  charlen(ind_odd) = charlen(ind_odd) + 1;   % ensure even
  width = charlen/2;
  
  % grab windows
  for i=1:n
    [rr cc] = find(m(:,:,i));
    cent = round(mean([rr cc]));
    ind_r = (cent(1)-width(1)+1):(cent(1)+width(1));
    ind_c = (cent(2)-width(2)+1):(cent(2)+width(2));
    [ind_r ind_c] = prune(ind_r, ind_c);
    m_win(:,:,i) = m(ind_r,ind_c,i);
  end

  function [rr cc] = prune(rr, cc)
    rr(rr < 1) = 1;
    rr(r < rr) = r;
    cc(cc < 1) = 1;
    cc(c < cc) = c;
  end
end
