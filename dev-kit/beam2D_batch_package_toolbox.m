function beam2D_batch_package_toolbox
% An entry point for building the toolbox from a "matlab -batch" call
%
% This has error handling to set matlab's exit status appropriately.

try
  load_beam2D;
  beam2D_package_toolbox;
catch err
  fprintf('Error occurred:\n');
  fprintf('%s\n', getReport(err));
  exit(1);
end
