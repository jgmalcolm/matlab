function D = subpixel_shift(D, dx)
% shift D by dx using a 2D convolution with 3x3 kernel where |dx|<=sqrt(2)

  assert(norm(dx) < sqrt(2));
  
  %- treat as if in positive/positive quadrant
  alpha = abs(dx(1));
  beta = abs(dx(2));
  K = [0 0 0; ...
       0 (1-alpha)*(1-beta) (1-alpha)*beta; ...
       0 alpha*(1-beta) alpha*beta];
    
  %- flip appropriately
  if dx(1) < 0, K = K(end:-1:1,:); end % up/down
  if dx(2) < 0, K = K(:,end:-1:1); end % left/right
  
  %- convolution
  D = conv2(D, K, 'same');
end
