function dM = Dyy(M)
  shiftD = @(M) M([1 1:end-1],:);
  shiftU = @(M) M([2:end end],:);
  
  dM = shiftU(M) - 2*M + shiftD(M);
end
