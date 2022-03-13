classdef Beam2DBase
  % This class is a trick to support automatic library initialization
  %
  % To use it, have all your classes that depend on the library being
  % initialized inherit from this or Beam2DBaseHandle.
  
  properties (Constant, Hidden)
    initializer = beam2D.internal.LibraryInitializer;
  end
  
end

