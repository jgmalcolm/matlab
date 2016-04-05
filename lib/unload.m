function unload(s, names)
% Unload variables from struct
%
%  s - struct
%  names - space-separated list of variables to unload
%
% >> s = struct('foo',1, 'bar',2);
% >> unload(s, 'foo bar')
% >> foo  % 1
% >> bar  % 2

  names = strsplit(names, ' ');
  for i = 1:numel(names)
    assignin('caller', names{i}, s.(names{i}))
  end
end
