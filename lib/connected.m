function marked = connected(mask, marked)
% CONNECTED Span out to mark connected components
  
  for i = 1:numel(mask)
    % neighbors
    Nu = shiftD(marked); Nd = shiftU(marked);
    Nl = shiftR(marked); Nr = shiftL(marked);

    ind = find(mask & ~marked & (Nu | Nd | Nl | Nr));
    if isempty(ind) break, end
    marked(ind) = 1;
  end
end

function shift = shiftL(M)
  shift = [ M(:,2:end) M(:,end) ];
end

function shift = shiftR(M)
  shift = [ M(:,1) M(:,1:end-1) ];
end

function shift = shiftU(M)
  shift = shiftL(M')';
end

function shift = shiftD(M)
  shift = shiftR(M')';
end
