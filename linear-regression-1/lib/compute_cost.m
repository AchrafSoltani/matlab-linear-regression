function cost = compute_cost(H, Y, m) 
    % H hypothesis matrix
    % Y goal 
    % m training examples
    % matrix_sub = H - Y
    % matrix_sum = sum(matrix_sub.^2)
    % cost = (1/(2*m))*matrix_sum;
    cost = (1/(2*m))*sum((H-Y).^2);
end
