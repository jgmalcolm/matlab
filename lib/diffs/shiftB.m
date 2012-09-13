function M_ = shiftB(M)
  M_ = M(:,:,[1 1:end-1]); % assumes 3D
end
