function q = wkeep(p, w)
  a = (numel(p) - w)/2 + 1;
  q = p(a:(a+w-1));
end
