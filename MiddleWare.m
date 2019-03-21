%Error handling and some behind the scenes work
%@PARAM: A -> Constraint Matrix
%        x -> All vars
%        b -> Bounds for constraints
%        C -> Objective function
%        m -> Min/Max (0,1)
%        g -> Generate Graph (2 dim only)
% TODO - Find initial feasible solution
%      - Find basic and non-basic vars
function MiddleWare(A,b,x,C,m,g)
    %Do error checking here
    if length(A) ~= length(x)
        lenErr = MException('Matrix dimension error', ...
            'Dimensions of A and X dont match');
        throw(lenErr)
    end
    %add more throws to cover all cases of erronius behavior
    
    %Find basic and non basic vars
    B = [];
    N = [];
    
    %Find inital solution
    x_not = [];
    
    if m == 0
        Minimze(x_not, B, N, C, A, x, b)
    elseif m == 1
        Maximize(x_not, B, N, C, A, x, b)   
    else 
       disp("Unrecognized command") 
    end
end