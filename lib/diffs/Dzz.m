function dM = Dzz(M)
  shiftF = @(M) M(:,:,[2:end end]);
  shiftB = @(M) M(:,:,[1 1:end-1]);

  dM = shiftF(M) - 2*M + shiftB(M);
end
