% iptsetpref('ImshowBorder','tight');
format compact
format short
colordef black
dbstop if error
set(0, 'DefaultFigureMenu', 'none', ...
       'DefaultFigureColor', 'k');
% set(0, 'ShareColors', 'off');
% set(0, 'DefaultFigureRenderer', 'OpenGL');

p = which('startup');
p = p(1:end-numel('startup.m'));
addpath([p 'lib']);
addpath([p 'lib/visual']);
addpath([p 'lib/diffs']);
clear p

disp('[malcolm environment set]');
