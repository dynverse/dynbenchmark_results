
# Synthetic datasets

To generate synthetic datasets, we used four different synthetic data
simulators:

  - **dyngen:** Simulations of gene regulatory networks, available at
    [github.com/dynverse/dyngen](https://github.com/dynverse/dyngen)
  - **dyntoy:** Random gradients of expression in the reduced space,
    available at
    [github.com/dynverse/dyntoy](https://github.com/dynverse/dyntoy)
  - **PROSSTT:** Expression is sampled from a linear model which depends
    on
    pseudotime<sup>[1](#ref-papadopoulosPROSSTTProbabilisticSimulation2018)</sup>
  - **Splatter:** Simulations of non-linear paths between different
    expression
    states<sup>[2](#ref-zappia_splattersimulationsinglecell_2017)</sup>

For every simulator, we took great care to make the datasets as
realistic as possible. To do this, we extracted several parameters from
all real datasets. We calculated the number of differentially expressed
features within a trajectory using a two-way Mann–Whitney U test between
every pair of cell groups. These values were corrected for multiple
testing using the Benjamini-Hochberg procedure (FDR \< 0.05) and we
required that a gene was expressed in at least 5% of cells, and had at
least a fold-change of 2. We also calculated several other parameters,
such as drop-out rates and library sizes using the Splatter
package<sup>[2](#ref-zappia_splattersimulationsinglecell_2017)</sup>.
These parameters were then given to the simulators when applicable, as
described for each simulator below. Not every real dataset was selected
to serve as a reference for a synthetic dataset. Instead, we chose a set
of ten distinct reference real datasets by clustering all the parameters
of each real dataset, and used the reference real datasets at the
cluster centers from a pam clustering (with
![](https://latex.codecogs.com/gif.latex?k%20=%2010), implemented in the
R cluster package) to generate synthetic data.

## dyngen

The dyngen (
[github.com/dynverse/dyngen](https://github.com/dynverse/dyngen))
workflow to generate synthetic data is based on the well established
workflow used in the evaluation of network inference
methods<sup>[3](#ref-schaffter_genenetweaversilicobenchmark_2011),[4](#ref-marbach_wisdom_2012)</sup>
and consists of four main steps: network generation, simulation, gold
standard extraction and simulation of the scRNA-seq experiment. At every
step, we tried to mirror real regulatory networks, while keeping the
model simple and easily extendable. We simulated a total of 110
datasets, with 11 different topologies.

### Network generation

One of the main processes involved in cellular dynamic processes is gene
regulation, where regulatory cascades and feedback loops lead to
progressive changes in expression and decision making. The exact way a
cell chooses a certain path during its differentiation is still an
active research field, although certain models have already emerged and
been tested in vivo. One driver of bifurcation seems to be mutual
antagonism, where
genes<sup>[5](#ref-xu_regulationbifurcatingcell_2015)</sup> strongly
repress each other, forcing one of the two to become
inactive<sup>[6](#ref-graf_forcingcellschange_2009)</sup>. Such mutual
antagonism can be modelled and
simulated<sup>[7](#ref-wang_quantifyingwaddingtonlandscape_2011),[8](#ref-ferrell_bistabilitybifurcationswaddington_2012)</sup>.
Although such a two-gene model is simple and elegant, the reality is
frequently more complex, with multiple genes (grouped into modules)
repressing each
other<sup>[9](#ref-yosef_dynamicregulatorynetwork_2013)</sup>.

To simulate certain trajectory topologies, we therefore designed module
networks in which the cells follow a particular trajectory topology
given certain parameters. Two module networks generated linear
trajectories (linear and linear long), one generated a bifurcation, one
generated a convergence, one generated a multifurcation (trifurcating),
two generated a tree (consecutive bifurcating and binary tree), one
generated an acyclic graph (bifurcating and converging), one generated a
complex fork (trifurcating), one generated a rooted tree (consecutive
bifurcating) and two generated simple graph structures (bifurcating loop
and bifurcating cycle). The structure of these module networks is
available at
<https://github.com/dynverse/dyngen/tree/master/inst/ext_data/modulenetworks>.

From these module networks we generated gene regulatory networks in two
steps: the main regulatory network was first generated, and extra target
genes from real regulatory networks were added. For each dataset, we
used the same number of genes as were differentially expressed in the
real datasets. 5% of the genes were assigned to be part of the main
regulatory network, and were randomly distributed among all modules
(with at least one gene per module). We sampled edges between these
individual genes (according to the module network) using a uniform
distribution between 1 and the number of possible targets in each
module. To add additional target genes to the network, we assigned every
regulator from the network to a real regulator in a real network (from
regulatory
circuits<sup>[10](#ref-marbach_tissuespecificregulatorycircuits_2016)</sup>),
and extracted for every regulator a local network around it using
personalized pagerank (with damping factor set to 0.1), as implemented
in the `page_rank` function of the *igraph* package.

### Simulation of gene regulatory systems using thermodynamic models

To simulate the gene regulatory network, we used a system of
differential equations similar to those used in evaluations of gene
regulatory network inference
methods<sup>[4](#ref-marbach_wisdom_2012)</sup>. In this model, the
changes in gene expression
(![](https://latex.codecogs.com/gif.latex?x_i)) and protein expression
(![](https://latex.codecogs.com/gif.latex?y_i)) are modeled using
ordinary differential
equations<sup>[3](#ref-schaffter_genenetweaversilicobenchmark_2011)</sup>
(ODEs):

![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%0A%5Clabel%7Beq:mrna_ode%7D%0A%5Cfrac%7Bdx_i%7D%7Bdt%7D%20&=%20%5Cunderbrace%7Bm%20%5Ctimes%20f\(y_1,%20y_2,%20...\)%7D_%5Ctext%7Bproduction%7D%20-%20%5Cunderbrace%7B%5Clambda%20%5Ctimes%20x_i%7D_%5Ctext%7Bdegradation%7D%0A%5Cend%7Baligned%7D)

![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%0A%5Clabel%7Beq:prot_ode%7D%0A%5Cfrac%7Bdy_i%7D%7Bdt%7D%20&=%20%5Cunderbrace%7Br%20%5Ctimes%20x_i%7D_%5Ctext%7Bproduction%7D%20-%20%5Cunderbrace%7B%5CLambda%20%5Ctimes%20y_i%7D_%5Ctext%7Bdegradation%7D%0A%5Cend%7Baligned%7D)

where ![](https://latex.codecogs.com/gif.latex?m),
![](https://latex.codecogs.com/gif.latex?%5Clambda),
![](https://latex.codecogs.com/gif.latex?r) and
![](https://latex.codecogs.com/gif.latex?%5CLambda) represent production
and degradation rates, the ratio of which determines the maximal gene
and protein expression. The two types of equations are coupled because
the production of protein ![](https://latex.codecogs.com/gif.latex?y_i)
depends on the amount of gene expression
![](https://latex.codecogs.com/gif.latex?x_i), which in turn depends on
the amount of other proteins through the activation function
![](https://latex.codecogs.com/gif.latex?f\(y_1,%20y_2,%20...\)).

The activation function is inspired by a thermodynamic model of gene
regulation, in which the promoter of a gene can be bound or unbound by a
set of transcription factors, each representing a certain state of the
promoter. Each state is linked with a relative activation
![](https://latex.codecogs.com/gif.latex?%5Calpha_j), a number between 0
and 1 representing the activity of the promoter at this particular
state. The production rate of the gene is calculated by combining the
probabilities of the promoter being in each state with the relative
activation:

![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%0A%5Clabel%7Beq:input_function_probabilities%7D%0Af\(y_1,%20y_2,%20...,%20y_n\)%20=%20%5Csum_%7Bj%20%5Cin%20%5C%7B0,%201,%20...,%20n%5E2%5C%7D%7D%20%5Calpha_j%20%5Ctimes%20P_j%0A%5Cend%7Baligned%7D)

The probability of being in a state is based on the thermodynamics of
transcription factor binding. When only one transcription factor is
bound in a
state:

![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%0AP_j%20%5Cpropto%20%5Cnu%20=%20%5Cleft\(%5Cfrac%7By%7D%7Bk%7D%5Cright\)%5E%7Bn%7D%0A%5Cend%7Baligned%7D)

where the hill coefficient ![](https://latex.codecogs.com/gif.latex?n)
represents the cooperativity of binding and
![](https://latex.codecogs.com/gif.latex?k) the transcription factor
concentration at half-maximal binding. When multiple regulators are
bound:

![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%0AP_j%20%5Cpropto%20%5Cnu%20=%20%20%5Crho%20%5Ctimes%20%5Cprod_j%20%5Cleft\(%5Cfrac%7By_j%7D%7Bk_j%7D%5Cright\)%5E%7Bn_j%7D%0A%5Cend%7Baligned%7D)

where ![](https://latex.codecogs.com/gif.latex?%5Crho) represents the
cooperativity of binding between the different transcription factors.

![](https://latex.codecogs.com/gif.latex?P_i) is only proportional to
![](https://latex.codecogs.com/gif.latex?%5Cnu) because
![](https://latex.codecogs.com/gif.latex?%5Cnu) is normalized such that
![](https://latex.codecogs.com/gif.latex?%5Csum_%7Bi%7D%20P_i%20=%201).

To each differential equation, we added an additional stochastic
term:

![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%0A%5Cfrac%7Bdx_i%7D%7Bdt%7D%20&%20=%20m%20%5Ctimes%20f\(y_1,%20y_2,%20...\)%20-%20%5Clambda%20%5Ctimes%20x_i%20+%20%5Ceta%20%5Ctimes%20%5Csqrt%7Bx_i%7D%20%5Ctimes%20%5CDelta%20W_t%20%5C%5C%0A%5Cfrac%7Bdy_i%7D%7Bdt%7D%20&%20=%20r%20%5Ctimes%20x_i%20-%20%5CLambda%20%5Ctimes%20y_i%20+%20%5Ceta%20%5Ctimes%20%5Csqrt%7By_i%7D%20%5Ctimes%20%5CDelta%20W_t%0A%5Cend%7Baligned%7D)

with
![](https://latex.codecogs.com/gif.latex?%5CDelta%20W_t%20%5Csim%20%5Cmathcal%7BN%7D\(0,%20h\)).

Similar to
GeneNetWeaver<sup>[3](#ref-schaffter_genenetweaversilicobenchmark_2011)</sup>,
we sample the different parameters from random distributions, defined as
follows. ![](https://latex.codecogs.com/gif.latex?e) defines whether a
transcription factor activates (1) or represses (-1), as defined within
the regulatory network
network.

![](https://latex.codecogs.com/gif.latex?%5Cbegin%7Baligned%7D%0Ar%20&%20=%20%5Cmathcal%7BU%7D\(10,%20200\)%20%5C%5C%0Ad%20&%20=%20%5Cmathcal%7BU%7D\(2,%208\)%20%5C%5C%0Ap%20&%20=%20%5Cmathcal%7BU%7D\(2,%208\)%20%5C%5C%0Aq%20&%20=%20%5Cmathcal%7BU%7D\(1,%205\)%20%5C%5C%0Aa_0%20&%20=%20%5Cbegin%7Bcases%7D1%20&%20%5Ctext%7Bif%20%7D%20%7Ce%7C%20=%200%20%5C%5C%201%20&%20%5Ctext%7Bif%20%7D%20%5Cforall%20x%20%5Cin%20e%20%5Ctext%7B,%20%7D%20x%20=%20-1%20%5C%5C%200%20&%20%5Ctext%7Bif%20%7D%20%5Cforall%20x%20%5Cin%20e%20%5Ctext%7B,%20%7D%20x%20=%201%20%5C%5C%200.5%20&%20%5Ctext%7Botherwise%7D%5Cend%7Bcases%7D%20%5C%5C%0Aa_i%20&%20=%20%5Cbegin%7Bcases%7D0%20&%20%5Ctext%7Bif%20%7D%20%5Cexists%20x%20%5Cin%20e_i%20%5Ctext%7B,%20%7D%20x%20=%20-1%20%5C%5C%201%20&%20%5Ctext%7Botherwise%7D%5Cend%7Bcases%7D%20%5C%5C%0As%20&%20=%20%5Cmathcal%7BU%7D\(1,%2020\)%20%5C%5C%0Ak%20&%20=%20y_%7Bmax%7D%20/%20\(2%20*%20s\)%20%5Ctext%7B,%7D%20%5C%5C%0A%5C%20&%20%5Cquad%20%5Ctext%7Bwhere%20%7D%20y_%7Bmax%7D%20=%20r%20/%20d%20%5Ctimes%20p%20/%20q%20%5C%5C%0Ac%20&%20=%20%5Cmathcal%7BU%7D\(1,%204\)%0A%5Cend%7Baligned%7D)

We converted each ODE to an SDE by adding a chemical Langevin equation,
as described
in<sup>[3](#ref-schaffter_genenetweaversilicobenchmark_2011)</sup>.
These SDEs were simulated using the Euler–Maruyama approximation, with
time-step ![](https://latex.codecogs.com/gif.latex?h%20=%200.01) and
noise strength ![](https://latex.codecogs.com/gif.latex?%5Ceta%20=%208).
The total simulation time varied between 5 for linear and bifurcating
datasets, 10 for consecutive bifurcating, trifurcating and converging
datasets, 15 for bifurcating converging datasets and 30 for linear long,
cycle and bifurcating loop datasets. The burn-in period was for each
simulation 2. Each network was simulated 32 times.

### Simulation of the single-cell RNA-seq experiment

For each dataset we sampled the same number of cells as were present in
the reference real dataset, limited to the simulation steps after
burn-in. These cells were sampled uniformly across the different steps
of the 32 simulations. Next, we used the Splatter
package<sup>[2](#ref-zappia_splattersimulationsinglecell_2017)</sup> to
estimate the different characteristics of a real dataset, such as the
distributions of average gene expression, library sizes and dropout
probabilities. We used Splatter to simulate the expression levels
![](https://latex.codecogs.com/gif.latex?%5Clambda_%7Bi,j%7D) of
housekeeping genes ![](https://latex.codecogs.com/gif.latex?i) (to match
the number of genes in the reference dataset) in every cell
![](https://latex.codecogs.com/gif.latex?j). These were combined with
the expression levels of the genes simulated within a trajectory. Next,
true counts were simulated using
![](https://latex.codecogs.com/gif.latex?Y'_%7Bi,j%7D%20%5Csim%20%5Ctext%7BPoisson%7D\(%5Clambda_%7Bi,j%7D\)).
Finally, we simulated dropouts by setting true counts to zero by
sampling from a Bernoulli distribution using a dropout probability
![](https://latex.codecogs.com/gif.latex?%5Cpi%5ED_%7Bi,j%7D%20=%5Cfrac%7B1%7D%7B1+e%5E%7B-k\(%5Ctext%7Bln%7D\(%5Clambda_%7Bi,j%7D\)-x_0\)%7D%7D).
Both ![](https://latex.codecogs.com/gif.latex?x_0) (the midpoint for the
dropout logistic function) and
![](https://latex.codecogs.com/gif.latex?k) (the shape of the dropout
logistic function) were estimated by Splatter.

This count matrix was then filtered and normalised using the pipeline
described below.

### Gold standard extraction

Because each cellular simulation follows the trajectory at its own
speed, knowing the exact position of a cell within the trajectory
topology is not straightforward. Furthermore, the speed at which
simulated cells make a decision between two or more alternative paths is
highly variable. We therefore first constructed a backbone expression
profile for each branch within the trajectory. To do this, we first
defined in which order the expression of the modules is expected to
change, and then generated a backbone expression profile in which the
expression of these modules increases and decreases smoothly between 0
and 1. We also smoothed the expression in each simulation using a
rolling mean with a window of 50 time steps, and then calculated the
average module expression along the simulation. We used dynamic time
warping, implemented in the dtw R
package<sup>[11](#ref-giorgino_computingvisualizingdynamic_2009),[12](#ref-tormene_matchingincompletetime_2009)</sup>,
with an open end to align a simulation to all possible module
progressions, and then picked the alignment which minimised the
normalised distance between the simulation and the backbone. In case of
cyclical trajectory topologies, the number of possible milestones a
backbone could progress through was limited to 20.

## dyntoy

For more simplistic data generation (“toy” datasets), we created the
dyntoy workflow
([github.com/dynverse/dyntoy](https://github.com/dynverse/dyntoy)) . We
created 12 topology generators (described below), and with 10 datasets
per generator, this lead to a total of 120 datasets.

We created a set of topology generators, were
![](https://latex.codecogs.com/gif.latex?B\(n,%20p\)) denotes a binomial
distribution, and ![](https://latex.codecogs.com/gif.latex?U\(a,%20b\))
denotes a uniform distribution:

  - Linear and cyclic, with number of milestones
    ![](https://latex.codecogs.com/gif.latex?%5Csim%20B\(10,%200.25\))
  - Bifurcating and converging, with four milestones
  - Binary tree, with number of branching points
    ![](https://latex.codecogs.com/gif.latex?%5Csim%20U\(3,%206\))
  - Tree, with number of branching points
    ![](https://latex.codecogs.com/gif.latex?%5Csim%20U\(3,%206\)) and
    maximal degree
    ![](https://latex.codecogs.com/gif.latex?%5Csim%20U\(3,%206\))

For more complex topologies we first calculated a random number of
“modifications”
![](https://latex.codecogs.com/gif.latex?%5Csim%20U\(3,%206\)) and a
![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Bdeg%7D_%7B%5Ctextit%7Bmax%7D%7D%20%5Csim%20B\(10,%200.25\)%20+%201).
For each type of topology, we defined what kind of modifications are
possible: divergences, loops, convergences and divergence-convergence.
We then iteratively constructed the topology by uniformly sampling from
the set of possible modifications, and adding this modification to the
existing topology. For a divergence, we connected an existing milestone
to a number of a new milestones. Conversely, for a convergence we
connected a number of new nodes to an existing node. For a loop, we
connected two existing milestones with a number of milestones in
between. Finally for a divergence-convergence we connected an existing
milestone to several new milestones which again converged on a new
milestone. The number of nodes was sampled from
![](https://latex.codecogs.com/gif.latex?%5Csim%20B\(%5Ctextit%7Bdeg%7D_%7B%5Ctextit%7Bmax%7D%7D%20-%203,%200.25\)%20+%202)

  - Looping, allowed loop modifications
  - Diverging-converging, allowed divergence and converging
    modifications
  - Diverging with loops, allowed divergence and loop modifications
  - Multiple looping, allowed looping modifications
  - Connected, allowed looping, divergence and convergence modifications
  - Disconnected, number of components sampled from
    ![](https://latex.codecogs.com/gif.latex?%5Csim%20B\(5,%200.25\)%20+%202),
    for each component we randomly chose a topology from the ones listed
    above

After generating the topology, we sampled the length of each edge
![](https://latex.codecogs.com/gif.latex?%5Csim%20U\(0.5,%201\)). We
added regions of delayed commitment to a divergence in a random half of
the cases. We then placed the number of cells (same number as from the
reference real dataset), on this topology uniformly, based on the length
of the edges in the milestone network.

For each gene (same number as from the reference real dataset), we
calculated the Kamada-Kawai layout in 2 dimensions, with edge weight
equal to the length of the edge. For this gene, we then extracted for
each cell a density value using a bivariate normal distribution with
![](https://latex.codecogs.com/gif.latex?%5Cmu%20%5Csim%20U\(x_%7B%5Ctextit%7Bmin%7D%7D,%20x_%7B%5Ctextit%7Bmin%7D%7D\))
and
![](https://latex.codecogs.com/gif.latex?%5Csigma%20%5Csim%20U\(x_%7B%5Ctextit%7Bmin%7D%7D/10,%20x_%7B%5Ctextit%7Bmin%7D%7D/8\)).
We used this density as input for a zero-inflated negative binomial
distribution with
![](https://latex.codecogs.com/gif.latex?%5Cmu%20~%20U\(100,%201000\)%20%5Ctimes%20%5Ctextit%7Bdensity%7D),
![](https://latex.codecogs.com/gif.latex?k%20~%20U\(%5Cmu%20/%2010,%20%5Cmu%20/%204\))
and ![](https://latex.codecogs.com/gif.latex?pi) from the parameters of
the reference real dataset, to get the final count values.

This count matrix was then filtered and normalised using the pipeline
described below.

## PROSSTT

PROSSTT is a recent data
simulator<sup>[1](#ref-papadopoulosPROSSTTProbabilisticSimulation2018)</sup>,
which simulates expression using linear mixtures of expression programs
and random walks through the trajectory. We used 5 topology generators
from dyntoy (linear, bifurcating, multifurcating, binary tree and tree),
and simulated for each topology generator 10 datasets using different
reference real datasets. However, due to frequent crashes of the tool,
only 19 datasets created output and were thus used in the evaluation.

Using the `simulate_lineage` function, we simulated the lineage
expression, with parameters
![](https://latex.codecogs.com/gif.latex?%5Ca%20%5Csim%20U\(0.01,%200.1\)),
![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Bbranch-tol%7D_%7B%5Ctextit%7Bintra%7D%7D%20%5Csim%20U\(0,%200.9\))
and
![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Bbranch-tol%7D_%7B%5Ctextit%7Binter%7D%7D%20%5Csim%20U\(0,%200.9\)).
These parameter distributions were chosen very broad so as to make sure
both easy and difficult datasets are simulated. After simulating base
gene expression with `simulate_base_gene_exp`, we used the
`sample_density` function to finally simulate expression values of a
number of cells (the same as from the reference real dataset), with
![](https://latex.codecogs.com/gif.latex?%5Calpha%20%5Csim%20%5Ctextit%7BLognormal%7D)
(![](https://latex.codecogs.com/gif.latex?%5Cmu%20=%200.3) and
![](https://latex.codecogs.com/gif.latex?%5Csigma%20=%201.5)) and
![](https://latex.codecogs.com/gif.latex?%5Cbeta%20%5Csim%20%5Ctextit%7BLognormal%7D)
(![](https://latex.codecogs.com/gif.latex?%5Cmu%20=%202) and
![](https://latex.codecogs.com/gif.latex?%5Csigma%20=%201.5)). Each of
these parameters were centered around the default values of PROSSTT, but
with enough variability to ensure a varied set of datasets.

This count matrix was then filtered and normalised using the pipeline
described below.

## Splatter

Splatter<sup>[2](#ref-zappia_splattersimulationsinglecell_2017)</sup>
simulates expression values by constructing non-linear paths between
different states, each having a distinct expression profile. We used 5
topology generators from dyntoy (linear, bifurcating, multifurcating,
binary tree and tree), and simulated for each topology generator 10
datasets using different reference real datasets, leading to a total of
50 datasets.

We used the `splatSimulatePaths` function from Splatter to simulate
datasets, with number of cells and genes equal to those in the reference
real dataset, and with parameters
![](https://latex.codecogs.com/gif.latex?%5Ctextit%7BnonlinearProb%7D),
![](https://latex.codecogs.com/gif.latex?%5Ctextit%7BsigmaFac%7D) and
![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Bskew%7D) all
sampled from ![](https://latex.codecogs.com/gif.latex?U\(0,%201\)).

# References

<div id="refs" class="references">

<div id="ref-papadopoulosPROSSTTProbabilisticSimulation2018">

1\. Papadopoulos, N., Parra, R. G. & Soeding, J. PROSSTT: Probabilistic
simulation of single-cell RNA-seq data for complex differentiation
processes. *bioRxiv* 256941 (2018).
doi:[10.1101/256941](https://doi.org/10.1101/256941)

</div>

<div id="ref-zappia_splattersimulationsinglecell_2017">

2\. Zappia, L., Phipson, B. & Oshlack, A. Splatter: Simulation of
single-cell RNA sequencing data. *Genome Biology* **18**, 174 (2017).

</div>

<div id="ref-schaffter_genenetweaversilicobenchmark_2011">

3\. Schaffter, T., Marbach, D. & Floreano, D. GeneNetWeaver: In silico
benchmark generation and performance profiling of network inference
methods. *Bioinformatics (Oxford, England)* **27**, 2263–2270 (2011).

</div>

<div id="ref-marbach_wisdom_2012">

4\. Marbach, D. *et al.* Wisdom of crowds for robust gene network
inference. *Nature methods* **9**, 796–804 (2012).

</div>

<div id="ref-xu_regulationbifurcatingcell_2015">

5\. Xu, H. *et al.* Regulation of bifurcating B cell trajectories by
mutual antagonism between transcription factors IRF4 and IRF8. *Nature
Immunology* **16**, 1274–1281 (2015).

</div>

<div id="ref-graf_forcingcellschange_2009">

6\. Graf, T. & Enver, T. Forcing cells to change lineages. *Nature*
**462**, 587 (2009).

</div>

<div id="ref-wang_quantifyingwaddingtonlandscape_2011">

7\. Wang, J., Zhang, K., Xu, L. & Wang, E. Quantifying the Waddington
landscape and biological paths for development and differentiation.
*Proceedings of the National Academy of Sciences* **108**, 8257–8262
(2011).

</div>

<div id="ref-ferrell_bistabilitybifurcationswaddington_2012">

8\. Ferrell, J. E. Bistability, Bifurcations, and Waddington’s
Epigenetic Landscape. *Current Biology* **22**, R458–R466 (2012).

</div>

<div id="ref-yosef_dynamicregulatorynetwork_2013">

9\. Yosef, N. *et al.* Dynamic regulatory network controlling Th17 cell
differentiation. *Nature* **496**, 461–468 (2013).

</div>

<div id="ref-marbach_tissuespecificregulatorycircuits_2016">

10\. Marbach, D. *et al.* Tissue-specific regulatory circuits reveal
variable modular perturbations across complex diseases. *Nature Methods*
**13**, 366 (2016).

</div>

<div id="ref-giorgino_computingvisualizingdynamic_2009">

11\. Giorgino, T. Computing and Visualizing Dynamic Time Warping
Alignments in R: The dtw Package. *Journal of Statistical Software*
**31**, (2009).

</div>

<div id="ref-tormene_matchingincompletetime_2009">

12\. Tormene, P., Giorgino, T., Quaglini, S. & Stefanelli, M. Matching
incomplete time series with dynamic time warping: An algorithm and an
application to post-stroke rehabilitation. *Artificial Intelligence in
Medicine* **45**, 11–34 (2009).

</div>

</div>
