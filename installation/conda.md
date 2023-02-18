---
layout: default
nav_order: 2
title: Conda Installation
parent: installation
---

# Conda installation

The best and the easiest way to install ASE/GPAW/Elastic system with gpaw-tools is a conda installation. **However, sometimes GPAW can run up to 20 times slower with conda installation. Please keep this in mind.** Download and install the miniconda. You can say ‘yes’ or ‘no’ to initialization after installing it:

    $ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    $ chmod +x Miniconda3-latest-Linux-x86_64.sh
    $ ./Miniconda3-latest-Linux-x86_64.sh

then you can update miniconda:

    $ eval "$(/home/$USER/miniconda3/bin/conda shell.bash hook)"
    $ conda update conda

Now, we can create an environment (here ‘gpaw-env’ name is used. You can use any name) and activate it:

    $ conda create --name gpaw-env
    $ conda activate gpaw-env

Then, install GPAW and Elastic packages

    $ conda install -c conda-forge gpaw elastic requests
    

Lastly, [download and install gpaw-tools](https://www.lrgresearch.org/gpaw-tools/installation/#4-installation-of-gpaw-tools).

NOTE: Sometimes, after this step, `mpirun -np <core_number> command.py` runs `command.py` seperately in a number of `core_number` instances. If you observe this kind of execution, please deactivate `conda deactivate` then remove environment `conda remove --name gpaw-env --all` then create same environment again `conda create --name gpaw-env` then activate it `conda activate gpaw-env` and then install all files again `conda install -c conda-forge gpaw elastic requests`. Problem must be solved. If it is not solved, please open a [new issue](https://github.com/lrgresearch/gpaw-tools/issues/new/choose) about your problem.
{: .text-red-200 }

