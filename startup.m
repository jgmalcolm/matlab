% iptsetpref('ImshowBorder','tight');
format compact
format short
colordef black
set(0, 'DefaultFigureMenu', 'none', ...
       'DefaultFigureColor', 'k');
% set(0, 'ShareColors', 'off');
% set(0, 'DefaultFigureRenderer', 'OpenGL');

p = which('startup');
p = p(1:end-numel('startup.m'));
addpath([p 'matlab/lib']);
addpath([p 'matlab/lib/visual']);
addpath([p 'matlab/lib/diffs']);

disp('[malcolm environment set]');
