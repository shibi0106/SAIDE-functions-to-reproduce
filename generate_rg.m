function G = generate_rg(N, comm_range)
    % Deploy nodes uniformly in a 100 x 100 area
    areaSize = 100;
    xy = rand(N, 2) * areaSize;

    % Compute Euclidean distances
    dist = squareform(pdist(xy));

    % Connect nodes within the communication range
    A = double(dist <= comm_range);
    A(1:N+1:end) = 0;   % Remove self-loops

    G = graph(A);

    % Ensure the graph is connected
    if max(conncomp(G)) > 1
        G = connect_components(G);
    end
end