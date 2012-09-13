function c = charlen3(masks)
  if ~iscell(masks), masks = {masks}; end
  
  c = [0 0 0];
  for i = 1:length(masks)
    m = masks{i};
    [rr cc dd] = ind2sub(size(m), find(m));
    rr = sort(rr);
    cc = sort(cc);
    dd = sort(dd);
    c = max(c, [rr(end)-rr(1) cc(end)-cc(1) dd(end)-dd(1)]);
  end
end
