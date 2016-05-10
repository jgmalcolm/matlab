function args = quoteunix(varargin)
% start and end each argument with a single quote (squote).
% special cases:
% 1. squote -> squote '\' squote squote
% 2. '!'    -> squote '\' '!' squote
% 3. '*'    -> squote '*' squote	(MATLAB globbing character)

% escape single quote and exclamation point
args = regexprep(varargin,'[''!]','''\\$&''');

% Special cases to maintain as NOT literal: Replace * with 'thing_I_found'
args = regexprep(args,'[*]','''$&''');

args = strcat(' ''', args, ''''); % leading space with surrounding single quotes
args = [args{:}]; % repackage
