function m = subregion_set(m, b, val)
  m(b(1):b(2), b(3):b(4), b(5):b(6)) = val;
end
