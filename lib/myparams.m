function p = myparams(args)
  assert(even(numel(args)));
  args = map(@(x) iff(iscell(x), {x}, x), args);
  p = struct(args{:});
end
