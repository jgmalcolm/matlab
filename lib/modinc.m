function x = modinc(x, n)
  x = max(mod(x + 1, n + 1), 1);
end
