# SAIDE-functions-to-reproduce
This repository provides graph generation functions and configuration details
# Synthetic Graph Generation Scripts

## Overview

This repository provides the MATLAB scripts used to generate the synthetic network topologies employed in the experiments described in the associated manuscript.

The purpose of releasing these files is to facilitate reproducibility of the network generation process and the experimental configuration.

## Included Files

README.md
config.m                 (or configuration information)
create_connected_network.m
connect_components.m
generate_wsn.m
generate_er.m
generate_ba.m
generate_rg.m
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

## Usage

Open MATLAB and ensure all files are in the current working directory or MATLAB path.

Example:

```matlab
G = generate_wsn(250);
```

# Reproducibility

The graph generation code and configuration parameters correspond to those used in the experiments reported in the associated manuscript. Researchers may use these scripts to recreate the synthetic network topologies under the same parameter settings.
