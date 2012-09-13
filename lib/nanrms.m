function e = nanrms(x)
% NANRMS(X) root-mean-square ignoring NaN values
  e = sqrt(nanmean(x.^2));
