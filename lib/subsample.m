function ind = subsample(k,n)
% generate K unique indices inside 1:N
  
  assert(k <= n);
  ind = [];
  
  while numel(ind) < k
    r = randint(k - numel(ind), n);
    ind = unique([ind r]);
  end

end

  
function r = randint(n, max)
  r = ceil(rand(1,n)*max);
end
