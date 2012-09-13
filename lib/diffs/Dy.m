function dM = Dy(M)
  shiftD = @(M) M([1 1:end-1],:);
  shiftU = @(M) M([2:end end],:);

  dM = (shiftU(M) - shiftD(M))/2;
end
