function out = reporoot
% The root dir of the SingleSpanBeam repo
out = string(fileparts(fileparts(fileparts(mfilename('fullpath')))));
end