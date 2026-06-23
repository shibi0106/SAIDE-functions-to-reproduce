function G = generate_ba(N, m)
    A = zeros(N);
    A(1:m+1, 1:m+1) = 1; A = A - diag(diag(A));
    for i = m+2:N
        deg = sum(A(1:i-1, 1:i-1));
        prob = deg / sum(deg);
        targets = randsample(1:i-1, m, true, prob);
        A(i, targets) = 1;
        A(targets, i) = 1;
    end
    G = graph(A);
end