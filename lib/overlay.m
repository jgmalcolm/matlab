function img = overlay(img, mask, ch)
  if ~exist('ch'), ch = 1; end % channels
  ch_ = setxor(ch, 1:3);

  img = uint8(img);
  if size(img,3) ~= 3
    img = img(:,:,[1 1 1]);
  end
  
  sz = size(img);
  img = reshape(img, [prod(sz(1:2)) sz(3)]);
  
  img(mask,ch_) = img(mask,ch_) - 80;
  img(mask,ch ) = img(mask,ch ) + 80;
  
  img = reshape(img, sz);
end
