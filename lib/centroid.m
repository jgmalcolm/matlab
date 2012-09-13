function c = centroid(M)
  [cc rr] = meshgrid(1:size(M,2), 1:size(M,1));
  c = [M(:)' * rr(:)  M(:)' * cc(:)] / sum(M(:));
end
