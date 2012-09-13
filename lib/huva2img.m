function img = huva2img(fn)
  fid = fopen(fn, 'r');
  img = fread(fid, inf, '*short');
  fclose(fid);
  n = numel(img)/(256*256);
  img = reshape(img, [256 256 n]);
end
