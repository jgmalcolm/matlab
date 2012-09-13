function k = nankurt(x)
% NANKURT(X) Kurtosis "(mu_4/std^4)" ignoring NaN values
%  http://en.wikipedia.org/wiki/Kurtosis
  mu = nanmean(x);
  mu_4 = nanmean((x - mu).^4);
  k = mu_4 / nanstd(x)^4;
