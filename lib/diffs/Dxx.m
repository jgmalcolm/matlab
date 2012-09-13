function dM = Dxx(M)
  shiftL = @(M) M(:,[2:end end]);
  shiftR = @(M) M(:,[1 1:end-1]);
  
  dM = shiftL(M) - 2*M + shiftR(M);
end
