function fn = eval_3D_normal(mu, sigma) % Gaussian distribution
  fn = @eval;

  function p = eval(x)
    if ndims(x) == 3
      sz = size(x);
      x = reshape(x, [prod(sz(1:2)) sz(3)]);
    end
    n = size(x,1);

    x_ = x - mu(:,ones([n 1]))'; % center
    denom = sqrt( (2*pi)^3 * det(sigma) );

    x__ = x_ * inv(sigma); % first half of computation
    p = zeros([n 1]);
    for i = 1:n % remainder of computation
      p(i) = exp( -x__(i,:) * x_(i,:)' / 2) / denom;
    end
  end
end
