function dM = Dxy(M)
  shiftD = @(M) M([1 1:end-1],:);
  shiftL = @(M) M(:,[2:end end]);
  shiftR = @(M) M(:,[1 1:end-1]);
  shiftU = @(M) M([2:end end],:);
  
  L = shiftL(M);
  R = shiftR(M);

  dr = shiftU(L) + shiftD(R);
  ul = shiftU(R) + shiftD(L);

  dM = (dr-ul)/4;
end
