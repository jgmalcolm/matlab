format compact
format short
colordef black
dbstop if error
set(0, 'DefaultFigureMenu', 'none', ...
       'DefaultFigureColor', 'k', ...
       'DefaultFigureInvertHardcopy', 'on')

p = which('startup');
p = p(1:end-numel('startup.m'));
addpath(genpath([p 'lib']))
clear p

disp('{preferences complete}');
