function G = generate_rg(N, radius)
    xy = rand(N, 2);
    dist = squareform(pdist(xy));
    A = double(dist < radius);
    A(1:N+1:end) = 0;  % remove self-loops
    G = graph(A);

    % Optionally add links to make the graph connected
    if max(conncomp(G)) > 1
        G = connect_components(G);
    end
end