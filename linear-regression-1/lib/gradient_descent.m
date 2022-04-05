function parameters = gradient_descent(X, Y, theta0, theta1, learning_rate, initial_cost)
    i = 0;
    previous_cost = initial_cost+1;
    cost = initial_cost;
    m = length(X);
    while(i < 100)
        H = theta0 + theta1.*X;
        cost = compute_cost(H, Y, m);
        format short
        cost
        derivatives = compute_derivatives(X, Y, theta0, theta1, m);
        theta0 = theta0 - learning_rate*derivatives(1);
        theta1 = theta1 - learning_rate*derivatives(2);
        i = i+1;
        previous_cost = cost;
    end
    cost
    previous_cost
    i
    parameters = [theta0(1), theta1, cost];
end