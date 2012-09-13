function [maps win init] = package(maps, masks)
  param.inflate = 1.25;
  
  if ~exist('masks'), masks = maps; end
  
  %- assume first frame initializes
  init = weighted_centroid(masks{1});
  
  %- determine tight window
  charlen = [0 0];
  for i = 1:length(masks)
    [rr cc] = find(masks{i});
    charlen_ = [range(rr) range(cc)];
    is_bigger = charlen_ > charlen;
    charlen(is_bigger) = charlen_(is_bigger);
  end
  charlen = round(param.inflate * charlen); % inflate
  is_odd = mod(charlen, 2) == 1;
  charlen(is_odd) = charlen(is_odd) + 1; % ensure even
  win = charlen / 2;
  
  % extract out windows masks
  for i = 1:length(masks)
    c = weighted_centroid(masks{i});
    maps{i} = extract(maps{i}, win, round(c));
  end

end
