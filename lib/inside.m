function idx = inside(x, low, high)
% return index of elements inside [low,high]
  idx = find(low <= x & x <= high);
end
