function p = ground_truth(imgs)
  
  clf; colormap gray;
  n = length(imgs);
  p = zeros([n 2]);
  for i = 1:n
    imagesc(imgs{i}); axis image off
    title(sprintf('%d of %d\n', i, n));

    [p(i,2) p(i,1)] = ginput(1);
  end
  
end
