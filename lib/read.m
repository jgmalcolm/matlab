function imgs = read(force_gray)
  if ~exist('force_gray'), force_gray = true; end

  d = dir('*.png');
  
  imgs = cell([1 length(d)]);
  for i = 1:length(d)
    imgs{i} = imread(sprintf('%08d.png', i));
    if ndims(imgs{i}) == 3 && force_gray
      imgs{i} = rgb2gray(imgs{i});
    end
  end

end
