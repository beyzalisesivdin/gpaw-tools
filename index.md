---
layout: default
nav_order: 1
title: Home
---

![Image](../assets/images/banner.png)

# Welcome to *gpaw-tools*
{: .fs-9 }

`gpaw-tools` is a powerful and user-friendly UI/GUI tool for conducting Density Functional Theory (DFT) and molecular dynamics (MD) calculations. Our goal is to make DFT and MD calculations more accessible and easy to use for individuals and small groups, by providing a simple command-line interface and graphical user interface.

{: .fs-6 .fw-300 }

[Download now](#download){: .btn .btn-primary .fs-5 .mb-4 .mb-md-0 .mr-2 } [View it on GitHub](https://github.com/lrgresearch/gpaw-tools){: .btn .fs-5 .mb-4 .mb-md-0 }

The `gpaw-tools` package is built on top of the ASE, ASAP3, KIM-API, PHONOPY and GPAW libraries, which are well-established and widely used in the scientific community. It allows users to simulate the properties of materials, optimize structures, investigate chemical reactions and processes, and perform calculations on systems with a large number of atoms. With `gpaw-tools`, researchers, students, and engineers in a wide range of fields, including materials science, chemistry, physics, and engineering, can easily conduct DFT and MD calculations and explore the electronic, optical and phonon structure of material systems. We are constantly working to improve and expand the capabilities of `gpaw-tools`, and we welcome feedback and contributions from the community.

`gpaw-tools` have:
1. The main solver script `gpawsolver.py` which can be run in PW or LCAO mode. It can perform structure optimization, equation of state and elastic tensor calculations, use several different XCs (as well as hybrid XCs) for spin-polarized DOS and band structure calculations, electron densities, phonon calculations and optical properties (RPA and BSE). In addition to calculations, it can draw DOS and band structures, save all data and figure in an ordered way.
2. A force-field quick optimization script `asapsolve.py` for MD calculations using ASAP3 and OpenKIM potentials. 
3. To choose better cut off energy, lattice parameter and k-points, there are 4 scripts called `optimize_cutoff.py`, `optimize_kpoints.py`,`optimize_kptsdensity.py` and `optimize_latticeparam.py`.
4. A simple Graphical User Interface (GUI) for `gpawsolve.py` (and also you may say that GUI for GPAW) which is called `gg.py`.

More information about [gpaw-tools idea](about.md), [installation](installation/installation.md), [usage](generalusage.md) and [release notes](development/releasenotes.md) can be found at related pages.

## Download

**Latest stable release: v23.2.0 [download (tar.gz)](https://github.com/lrgresearch/gpaw-tools/archive/refs/tags/v23.2.0.tar.gz), [download (zip)](https://github.com/lrgresearch/gpaw-tools/archive/refs/tags/v23.2.0.zip)**

Latest development release: [download (tar.gz)](https://github.com/lrgresearch/gpaw-tools/archive/refs/heads/main.tar.gz), [download (zip)](https://github.com/lrgresearch/gpaw-tools/archive/refs/heads/main.zip)

## News
* **[gpaw-tools](development/releasenotes.md#version-2320)** version 23.2.0 released. It is a version with major changes and it is **incompatible with the previous versions**. Please use input files in example folder to create new input files (February 1, 2023).
* A new oral presentation about *gpaw-tools* is presented at MSNG2022 (September 22, 2022).
* We had a small deparment-wide hands-on activity about installation and basic usage of ASE, GPAW and gpaw-tools software at Gazi Univ. Dept. of Phys. (August 8, 2022). 
* **[gpaw-tools](development/releasenotes.md#version-2270)** version 22.7.0 released (July 12, 2022).
* A new poster presentation about *gpaw-tools* is presented at 2022 Workshop on Recent Developments in Electronic Structure (June 2, 2022).
* **[gpaw-tools](development/releasenotes.md#version-2250)** version 22.5.0 released (May 8, 2022).
* **[gpaw-tools](development/releasenotes.md#version-2240)** version 22.4.0 released (Apr 7, 2022).
* **[gpaw-tools](development/releasenotes.md#version-2230)** version 22.3.0 released (Mar 4, 2022).
* Our [paper](https://doi.org/10.1016/j.commatsci.2022.111201) about *gpaw-tools* is published in Computational Material Science.
* **[gpaw-tools](development/releasenotes.md#version-21120)** version 21.12.0 released (Dec 2, 2021).
* **[gpaw-tools](development/releasenotes.md#version-21110)** version 21.11.0 released (Nov 2, 2021).
* **[gpaw-tools](development/releasenotes.md#version-21101)** version 21.10.1 released (Oct 1, 2021).
* **[gpaw-tools](development/releasenotes.md#version-21100)** version 21.10.0 released (Oct 1, 2021).
* **[gpaw-tools](development/releasenotes.md#version-2190)** version 21.9.0 released (Sep 14, 2021).

## Citing
Please do not forget that, gpaw-tools is a UI/GUI software. For the main DFT calculations, it uses ASE and GPAW. It also uses Elastic python package for elastic tensor solutions and ASAP with KIM database for interatomic interaction calculations. Therefore, you must know what you use, and cite them properly. Here, the basic citation information of each packages are given.

### ASE 
* Ask Hjorth Larsen et al. "[The Atomic Simulation Environment—A Python library for working with atoms](https://doi.org/10.1088/1361-648X/aa680e)" J. Phys.: Condens. Matter Vol. 29 273002, 2017.
### GPAW
* J. J. Mortensen, L. B. Hansen, and K. W. Jacobsen "[Real-space grid implementation of the projector augmented wave method](https://doi.org/10.1103/PhysRevB.71.035109)" Phys. Rev. B 71, 035109 (2005) and J. Enkovaara, C. Rostgaard, J. J. Mortensen et al. "[Electronic structure calculations with GPAW: a real-space implementation of the projector augmented-wave method](https://doi.org/10.1088/0953-8984/22/25/253202)" J. Phys.: Condens. Matter 22, 253202 (2010).
### KIM
* E. B. Tadmor, R. S. Elliott, J. P. Sethna, R. E. Miller and C. A. Becker "[The Potential of Atomistic Simulations and the Knowledgebase of Interatomic Models](https://doi.org/10.1007/s11837-011-0102-6)" JOM, 63, 17 (2011).
### Elastic
* P.T. Jochym, K. Parlinski and M. Sternik "[TiC lattice dynamics from ab initio calculations](https://doi.org/10.1007/s100510050823)", European Physical Journal B; 10, 9 (1999).
### Phonopy
* A. Togo "[First-principles Phonon Calculations with Phonopy and Phono3py](https://doi.org/10.7566/JPSJ.92.012001)", Journal of the Physical Society of Japan, 92(1), 012001 (2023).

And for `gpaw-tools` usage, please use the following citation:

* S.B. Lisesivdin, B. Sarikavak-Lisesivdin "[gpaw-tools – higher-level user interaction scripts for GPAW calculations and interatomic potential based structure optimization](https://doi.org/10.1016/j.commatsci.2022.111201)" Comput. Mater. Sci. 204, 111201 (2022).

There are many other packages needed to be cited. With GPAW, you may needed to cite LibXC or cite for LCAO, TDDFT, lineer-response calculations. Please visit their pages for many other citation possibilities. For more you can visit [https://wiki.fysik.dtu.dk/ase/faq.html#how-should-i-cite-ase](https://wiki.fysik.dtu.dk/ase/faq.html#how-should-i-cite-ase), [https://wiki.fysik.dtu.dk/gpaw/faq.html#citation-how-should-i-cite-gpaw](https://wiki.fysik.dtu.dk/gpaw/faq.html#citation-how-should-i-cite-gpaw), and [https://openkim.org/how-to-cite/](https://openkim.org/how-to-cite/).

## Licensing
This project is licensed under the terms of the [MIT license](https://opensource.org/licenses/MIT).
