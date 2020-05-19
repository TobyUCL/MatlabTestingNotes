function tests = quadraticSolver_test % Naming of the function, this must be the same as the name of the file. I choose the naming convention that is (name of function you wish to test)_test
addpath(genpath("../")) % Add the path to the function you wish to test
tests = functiontests(localfunctions); % This is what calls all of the functions which have the prefix (test) in this file
end

%% Now you place the actual test functions
%% Unit tests
function testRealSolution(testCase)
actSolution = quadraticSolver(1,-3,2);
expSolution = [2 1];
verifyEqual(testCase,actSolution,expSolution)
end

function testImaginarySolution(testCase)
actSolution = quadraticSolver(1,2,10);
expSolution = [-1+3i -1-3i];
verifyEqual(testCase,actSolution,expSolution)
end

%% Exception handling
function testStringExceptionHandling(testCase)
verifyError(testCase,@()quadraticSolver(1,2,"ayy"),'quadraticSolver:InputMustBeNumeric')
end