function z = volume(vol, a, b)
% example:
%   >> volume(vol_, @(v,z) imagesc(v(:,:,z)), 5)

  if ~exist('getkey'), addpath('~/src/applications/matlab'); end
  
  if exist('a')
    if     isa(a, 'function_handle'), disp_fn = a;
    elseif isa(a, 'numeric'),         z = a; end
  end
  if exist('b')
    if     isa(b, 'function_handle'), disp_fn = b;
    elseif isa(b, 'numeric'),         z = b; end
  end

  if ~exist('z'), z = 1; end
  if ~exist('disp_fn'), disp_fn = @default_fn; end
  
  clf; colormap gray;
  while true
    disp_fn(vol, z);
    k = getkey;
    switch k
     case 28, z = max(z - 1, 1);
     case 29, z = min(z + 1, size(vol,3));
     case 31, z = max(z - 5, 1);
     case 30, z = min(z + 5, size(vol,3));
     otherwise break;
    end
  end
  
  if ~nargout, clear z; end
end


function default_fn(vol, z)
  imagesc(vol(:,:,z)); axis image; title(z); colorbar
end
