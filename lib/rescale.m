function y = rescale(x,ref)
% RESCALE(X,REF) rescale X to have same min/max as REF
  y = (x-min(x))/(max(x)-min(x))*max(ref) + min(ref);
