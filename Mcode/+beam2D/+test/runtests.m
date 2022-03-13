function out = runtests
  % runtests Run all the tests in beam2D
  %
  % rslt = beam2D.test.runtests
  %
  % Runs all the tests in beam2D, presenting results on the command
  % line and producing results output files.
  %
  % The results output files are
  % created in a directory named "test-output" under the current directory.
  % Output files:
  % test-output/
  %   junit/
  %     beam2D/
  %       results.xml     - JUnit XML format test results
  %   cobertura/
  %     coverage.xml      - Cobertura format code coverage report
  %
  % Examples:
  % beam2D.test.runtests
  
  import matlab.unittest.TestSuite
  import matlab.unittest.TestRunner
  import matlab.unittest.plugins.CodeCoveragePlugin
  import matlab.unittest.plugins.codecoverage.CoberturaFormat
  import matlab.unittest.plugins.XMLPlugin;
  
  baseDir = pwd;
  testOutDir = [baseDir '/test-output'];
  if exist(testOutDir, 'dir')
      rmdir(testOutDir, 's');
  end
  mkdir(testOutDir);
  
  suite = TestSuite.fromPackage('beam2D.test', 'IncludingSubpackages', true);
  
  runner = TestRunner.withTextOutput;
  mkdir([testOutDir '/cobertura']);
  coberturaOutFile = [testOutDir '/cobertura/coverage.xml'];
  coveragePlugin = CodeCoveragePlugin.forPackage('beam2D', ...
      'Producing',CoberturaFormat(coberturaOutFile ), ...
      'IncludingSubpackages', true);
  runner.addPlugin(coveragePlugin);
  mkdir([testOutDir '/junit/beam2D']);
  junitXmlPlugin = XMLPlugin.producingJUnitFormat(...
      [testOutDir '/junit/beam2D/results.xml']);
  runner.addPlugin(junitXmlPlugin);
  
  out = runner.run(suite);
  
  end
  