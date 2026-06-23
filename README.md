# SAIDE-functions-to-reproduce
This repository provides graph generation functions and configuration details
# Synthetic Graph Generation Scripts

## Overview

This repository provides the MATLAB scripts used to generate the synthetic network topologies employed in the experiments described in the associated manuscript.

The purpose of releasing these files is to facilitate reproducibility of the network generation process and the experimental configuration.

## Included Files

README.md
network_config.m                 (or configuration information)
connect_components.m
generate_wsn.m
generate_er.m
generate_ba.m
generate_rg.m
seedlist.txt
## Experimental Configuration

The default parameters used in the experiments are:

```matlab
numNodes = 250;
K = 50;
pop_size = 50;
max_gen = 1000;
```

These values may be modified as needed for different experimental settings.

## Graph Generation

The repository supports generation of the following synthetic network models:

- Wireless Sensor Network (WSN)
- Erdős–Rényi (ER)
- Barabási–Albert (BA)
- Random Geometric (RG)

Each script returns a connected graph that can be used as input for downstream evaluation.
## Evaluation Commands

To reproduce the synthetic graph generation used in this study:

1. Open MATLAB (R2022a or later recommended).
2. Clone or download this repository.
3. Add the repository folder to the MATLAB path or set it as the current working directory.
4. Run the desired graph generation function.

### Example commands

Generate a Wireless Sensor Network (WSN):

```matlab
G = create_connected_network('WSN', 250);
```

Generate an Erdős–Rényi (ER) network:

```matlab
G = create_connected_network('ER', 250);
```

Generate a Barabási–Albert (BA) network:

```matlab
G = create_connected_network('BA', 250);
```

Generate a Random Geometric (RG) network:

```matlab
G = create_connected_network('RG', 250);
```

The experimental parameters (e.g., number of nodes and model-specific settings) can be modified in `network_config.m` or within the graph generation scripts before execution.


The graph generation code and configuration parameters correspond to those used in the experiments reported in the associated manuscript. Researchers may use these scripts to recreate the synthetic network topologies under the same parameter settings.
