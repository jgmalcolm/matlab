function dz = Dz(d)
  for i = 1:size(d,4)
    dz(:,:,:,i) = (shiftF(d(:,:,:,i)) - shiftB(d(:,:,:,i)))/2;
  end
end
