% TESTER CODE
x_not = [0 
         0 
         12
         16];
B = [3 4];
N = [1 2];
A = [2 0 -1 0 
     1 3 0 -1];
x = [1 2 3 4];
b = [12 16];
C = [1 1 0 0];
Minimize(x_not, B, N, C, A, x, b);


% % TESTER CODE
% x_not = [0 
%          0 
%          4 
%          11 
%          4];
% B = [3 4 5];
% N = [1 2];
% A = [1 1 1 0 0
%      5 2 0 1 0 
%      0 1 0 0 1];
% x = [1 2 3 4 5];
% b = [4 11 4];
% C = [10 3 0 0 0];
% Maximize(x_not, B, N, C, A, x, b);
