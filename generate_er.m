function G = generate_er(N, p)
    A = rand(N) < p;
    A = triu(A, 1); A = A + A';
    G = graph(A);
end
