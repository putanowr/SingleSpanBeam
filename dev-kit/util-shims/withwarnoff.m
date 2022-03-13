function out = withwarnoff(warningId)
% Temporarily disable warnings
arguments
  warningId string
end
out = beam2D.internal.util.withwarnoff(warningId);
end
