function derivatives = compute_derivatives(X, Y, theta0, theta1, m)
    %ttt = theta1*X
    %theta0 = zeros(size(ttt))
    %inner = theta0+ttt
    %inner2 = inner-Y
    %mat = X.*inner2;
    %derivative = (1/m)*sum(mat)
    derivatives(1) = (1/m)*sum((theta0+(theta1*X))-Y);
    derivatives(2) = (1/m)*sum(X.*((theta0+(theta1*X))-Y));
end