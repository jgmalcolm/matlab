function b = bounds(masks)
  if ~iscell(masks), masks = {masks}; end
  
  b = [Inf Inf Inf; 0 0 0];
  for i = 1:length(masks)
    m = masks{i};
    [rr cc dd] = ind2sub(size(m), find(m));
    rr = sort(rr);
    cc = sort(cc);
    dd = sort(dd);
    b = [rr([1 end]) cc([1 end]) dd([1 end])];
end
