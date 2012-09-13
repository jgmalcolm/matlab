function imgs = capture(n, is_color)
  if ~exist('n'), n = 70; end
  if ~exist('is_color'), is_color = false; end
  
  if ~exist('iSightInit'), addpath('~/src/applications/matlab/iSight'); end
  
  clf; colormap gray;
  %iSight = iSightInit([640 480]);
  iSight = iSightInit([320 240]);
  %iSight = iSightInit([160 120]);
  if nargout, imgs = {}; end
  for i = 1:n
    img = iSightCapture(iSight);
    if ~is_color, img = rgb2gray(img); end
    imagesc(img); axis image off; title(sprintf('%d of %d', i, n)); drawnow
    imgs{i} = img;
  end

  iSightClose(iSight);
end
