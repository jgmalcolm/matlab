function masks = center_masks(masks)
  
  win = round(size(masks{1})/2)-1;

  for i = 1:length(masks)
    m = masks{i};
    c = weighted_centroid(m);

    m_ = extract(m, win+1, round(c));
    dc = c - round(c);
    m_ = subpixel_shift(double(m_), -dc);
    m_ = extract(m_, win, win+2);

    masks{i} = embed(m_, m_, round(size(m)/2)) > .2;
  end

end
