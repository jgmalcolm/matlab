function ha_ = slicer(D)
  clf;
  hf = gcf;
  colormap gray;

  Dx = permute(D, [2 3 1]);
  Dy = permute(D, [3 1 2]);
  Dz = D;

  % show 3D slices
  p = round(size(D)/2);
  ha = sp(3,1,1:2); set(ha, 'ZDir', 'reverse'); hold on;
  if nargout, ha_ = ha; end
  hs = [slice(D,[],p(2),[]) slice(D,p(1),[],[]) slice(D,[],[],p(3))];
  set(hs, 'FaceColor', 'interp', 'EdgeColor', 'none');
  set(hs(1), 'UserData', Dx);
  set(hs(2), 'UserData', Dy);
  set(hs(3), 'UserData', Dz);
  hold off;
  view(3); axis image off;
  
  set(hf, 'KeyPressFcn', @key_press);
  function key_press(h,e)
    switch e.Key
     case 'r'
      rotate3d(ha);
     case 'd'
      set(ha, 'CameraViewAngle', get(ha, 'CameraViewAngle')*2);
     case 'f'
      set(ha, 'CameraViewAngle', get(ha, 'CameraViewAngle')/2);
    end
  end
  
  % show 2D slices
  sp(3,4, 9); hi(1) = imagesc(Dx(:,:,p(1)), 'UserData', Dx); axis image ij;
  sp(3,4,10); hi(2) = imagesc(Dy(:,:,p(2)), 'UserData', Dy); axis image ij;
  sp(3,4,11); hi(3) = imagesc(Dz(:,:,p(3)), 'UserData', Dz); axis image ij;
  sp(3,4,12); hi(4) = imagesc(zeros(31));                    axis image ij;

  % mouse click handlers
  set(hi(1), 'ButtonDownFcn', @(h,e) click_image(h,hi([2 3 4]),hs([2 3])));
  set(hi(2), 'ButtonDownFcn', @(h,e) click_image(h,hi([3 1 4]),hs([3 1])));
  set(hi(3), 'ButtonDownFcn', @(h,e) click_image(h,hi([1 2 4]),hs([1 2])));
end

function click_image(hi, ho, hs)
  ha = get(hi, 'Parent');
  pos = get(ha, 'CurrentPoint');
  pos = floor(pos(1,[2 1])) + 1;

  % update others
  for i = 1:2
    D = get(ho(i), 'UserData');
    set(ho(i), 'CData', D(:,:,pos(i)));
    update_slice(hs(i), pos(i));
  end
  
  % update small view
  img = get(hi, 'CData');
  % clamp
  w = size(img) - 15;
  pos(pos < 16) = 16;
  pos(pos >  w) = w(pos > w);
  % grab window
  xx = pos(1) + (-15:15);
  yy = pos(2) + (-15:15);
  set(ho(3), 'CData', img(xx,yy));
end

function update_slice(h, i)
  D = get(h, 'UserData');
  xx = get(h, 'XData');
  yy = get(h, 'YData');
  zz = get(h, 'ZData');
  if xx(1) == xx(2) && xx(1) == xx(1,2)
    set(h, 'CData', permute(D(:,:,i), [2 1]), 'XData', 0*xx+i);
  elseif yy(1) == yy(2) && yy(1) == yy(1,2)
    set(h, 'CData', D(:,:,i), 'YData', 0*yy+i);
  elseif zz(1) == zz(2) && zz(1) == zz(1,2)
    set(h, 'CData', D(:,:,i), 'ZData', 0*zz+i);
  end
end
