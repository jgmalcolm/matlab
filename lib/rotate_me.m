function [az el] = rotate_me(az, el)
  if ~exist('getkey'), addpath('~/src/applications/matlab'); end
  
  if ~exist('az') || ~exist('el') , [az el] = view; end

  while true
    view(az, el);
    k = getkey;
    switch k
     case 28, az = az - 5;
     case 29, az = az + 5;
     case 30, el = el + 5;
     case 31, el = el - 5;
     otherwise return;
    end
  end
end
