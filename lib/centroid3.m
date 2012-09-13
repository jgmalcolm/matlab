function c = centroid3(M)
  sz = size(M);
  [rr cc dd] = ndgrid(1:sz(1), 1:sz(2), 1:sz(3));
  c = [M(:)' * rr(:)  M(:)' * cc(:)  M(:)' * dd(:)] / sum(M(:));
end
