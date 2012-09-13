function phi = mask2dist(mask)
  phi_pos = bwdist(mask);
  ind = find(phi_pos);
  phi_pos(ind) = phi_pos(ind) - .5;
  
  phi_neg = -bwdist(~mask);
  ind = find(phi_neg);
  phi_neg(ind) = phi_neg(ind) + .5;
  
  phi = phi_pos + phi_neg;
end
