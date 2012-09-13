function x_ = empty(x)
  x_ = x(~cellfun(@isempty, x));
end
