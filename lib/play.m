function play(imgs, start_fr, end_fr)
  if ~exist('start_fr'), start_fr = 1; end
  if ~exist('end_fr'), end_fr = length(imgs); end

  clf; colormap gray;
  for i = start_fr:2:end_fr
    imagesc(imgs{i}); axis image off;
    title(i);
    drawnow;
  end
end
