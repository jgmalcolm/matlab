function P = unextract(p, rr, cc, opt)
  if any(size(opt) == 1)
    P = p(1)*ones(opt); % size of embedding
  else
    P = opt; % full data to embed within
  end

  P(rr,cc) = p;
end
