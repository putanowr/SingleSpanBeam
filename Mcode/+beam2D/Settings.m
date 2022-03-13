classdef Settings < beam2D.internal.Beam2DBaseHandle
% Global settings for the beam2D package
%
% Don't use this class directly. If you want to get or set the settings,
% work with the instance of this in the beam2D.globals.settings field.

  properties
  end

  methods (Static=true)

    function out = discover()
      % Discovery of initial values for package settings.
      %
      % This could look at config files, environment variables, Matlab appdata, and
      % so on.
      %
      % This needs to avoid referencing beam2D.globals, to avoid a circular dependency.
      out = beam2D.Settings;
    end

  end

end