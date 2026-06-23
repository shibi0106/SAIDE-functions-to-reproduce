function G = connect_components(G)
    bins = conncomp(G); % Identify connected components
    unique_bins = unique(bins);
    num_comps = numel(unique_bins);

    if num_comps <= 1
        return; % Already connected
    end

    % Get one representative node from each component
    rep_nodes = zeros(1, num_comps);
    for i = 1:num_comps
        rep_nodes(i) = find(bins == unique_bins(i), 1);
    end

    % Add edges between consecutive components
    A = adjacency(G);
    for i = 2:num_comps
        u = rep_nodes(i-1);
        v = rep_nodes(i);
        A(u, v) = 1;
        A(v, u) = 1;
    end

    G = graph(A); % Return updated connected graph
end