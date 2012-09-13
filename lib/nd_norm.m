function V = nd_norm(V)
  sz = size(V);
  d = size(V, ndims(V));
  V = reshape(V, [], d);
  fx = sqrt(sum(V.^2, 2));
  V = V ./ (fx(:,ones(1,d)) + eps);
  V = reshape(V, sz);
end
