function plot_int(xx, mu, sigma, c, ind)
  
  if nargin == 5
    xx = xx(ind);
    mu = mu(ind);
    sigma = sigma(ind);
  end

  dx = .2 * abs(xx(2) - xx(1));

%   int = cell(1,3*3*numel(xx));
%   [int{3:9:end}] = deal([c(1) ':']);
%   [int{6:9:end} int{9:9:end}] = deal(c(1));

  int = cell(1,3*3*numel(xx));
  [int{3:9:end}] = deal(':');
  [int{6:9:end} int{9:9:end}] = deal('');

  for i = 1:numel(xx)
    int{9*(i-1)+1} = xx(i)*[1 1];
    int{9*(i-1)+2} = mu(i) + [1 -1]*sigma(i);

    int{9*(i-1)+4} = xx(i)*[1 1] + [1 -1]*dx;
    int{9*(i-1)+5} = mu([i i]) + sigma([i i]);

    int{9*(i-1)+7} = xx(i)*[1 1] + [1 -1]*dx;
    int{9*(i-1)+8} = mu([i i]) - sigma([i i]);
  end
  
  plot(xx,mu,  'LineWidth', 4, 'Color', c);
  plot(int{:}, 'LineWidth', 4, 'Color', c, 'MarkerSize', 35);
end  
