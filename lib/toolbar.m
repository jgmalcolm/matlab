function toolbar(h)
  if ~exist('h'), h = gcf; end
  
  if strcmp(get(h, 'toolbar'), 'figure')
    set(h, 'toolbar', 'none');
  else
    set(h, 'toolbar', 'figure');
  end
end
