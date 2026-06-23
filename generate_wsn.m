function G = generate_wsn(N)
    areaSize = 100;                 % Area dimension (e.g., 100x100)
    comm_range = 20;               % Increased from 6 to 12
    min_neighbors = 3;            % Ensure nodes connect to at least 3 closest

    % Random coordinates
    xy = rand(N, 2) * areaSize;
    dist = squareform(pdist(xy));

    % Initial connectivity based on communication range
    A = double(dist < comm_range);
    A(1:N+1:end) = 0;  % remove self-loops

    % Force each node to connect to its k-nearest neighbors (even if range is exceeded)
    for i = 1:N
        [~, idx] = sort(dist(i, :), 'ascend');
        for j = 2:min_neighbors+1
            A(i, idx(j)) = 1;
            A(idx(j), i) = 1;
        end
    end
     G = graph(A);
end
