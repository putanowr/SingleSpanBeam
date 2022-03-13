classdef globals
  % Global library properties and settings for SingleSpanBeam.
  %
  % Note that if you want to change the settings, you can't do this:
  %
  %    beam2D.globals.settings.someSetting = 42;
  %
  % That will break due to how Matlab Constant properties work. Instead, you need
  % to first grab the Settings object and store it in a variable, and then work
  % on that:
  %
  %    s = beam2D.globals.settings;
  %    s.someSetting = 42;
  
  properties (Constant)
    % Path to the root directory of this SingleSpanBeam distribution.
    distroot = string(fileparts(fileparts(fileparts(mfilename('fullpath')))));
    % Global settings for beam2D.
    settings = beam2D.Settings.discover
  end
  
  methods (Static)
    
    function out = version
      % The version of the SingleSpanBeam library
      %
      % Returns a string.
      persistent val
      if isempty(val)
        versionFile = fullfile(beam2D.globals.distroot, 'VERSION');
        val = strtrim(beam2D.internal.util.readtext(versionFile));
      end
      out = val;
    end
    
    function initialize
      % Initialize this library/package
      beam2D.internal.initializePackage;
    end
    
  end
  
end

