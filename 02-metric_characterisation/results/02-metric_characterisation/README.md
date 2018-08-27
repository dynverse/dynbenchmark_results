Metrics to compare two trajectories
================







-   [Specific metrics](#specific-metrics)
-   [Application metrics](#application-metrics)
-   [Overall metrics](#overall-metrics)
-   [Metric conformity](#metric-conformity)

A trajectory, as defined in our evaluation, is a model with multiple abstractions. The top abstraction is the topology which contains information about the paths each cell can take from their starting point. Deeper abstractions involve the mapping of each cell to a particular branch within this network, and the position (or ordering) of each cells within these branches. Internally, the topology is represented by the milestone network and regions of delayed commitment, the branch assignment and cellular positions are represented by the milestone percentages ([**Figure 1**](#fig_trajectory_model_example)).

<p>
<a name = 'fig_trajectory_model_example'></a> <img src = "/home/wouters/thesis/projects/dynverse/dynbenchmark//results/manual_figures/trajectory_model_example.svg" />
</p>
<p>
<strong>Figure 1: An example trajectory that will be used throughout this section.</strong> It contains contains four milestones (W to Z) and five cells (a to e).
</p>
Given the multilayered complexity of a trajectory model, it is not trivial to compare the similarity of two trajectory models using only one metric. We therefore sought to use different comparison metrics, each serving a different purpose:

-   **Specific metrics** investigate one particular aspect of the trajectory. Such metrics make it possible to find particular weak points for methods, e.g. that a method is very good at ordering but does not frequently find the correct topology. Moreover, this makes it possible to create personalised rankings of methods, for example for users which are primarily interested in using the method correct topology.
-   **Application metrics** focus on the quality of a downstream analysis using the trajectory. For example, it measures whether the trajectory can be used to find accurate differentially expressed genes.
-   **Overall metrics** should capture all the different abstractions, in other words such metrics measure whether the resulting trajectory has a good topology, that the cells belong to similar branches *and* that they are ordered correctly.

Here, we first described and illustrate several specific, application and overall metrics which we defined. Next, we tested these metrics on several test cases, to make sure they were robustly identify different wrong trajectory predictions. Based on this robustness assessment, we chose 4 metrics for the final evaluation.

All metrics described here were implemented within the [*dyneval*](https://github.com/dynverse/dyneval) R package (<https://github.com/dynverse/dyneval>).

Specific metrics
================

Isomorphic, edgeflip and HIM: Edit distance between two trajectory topologies
-----------------------------------------------------------------------------

We used three different scores to assess the similarity in the topology between two trajectories, iregardless of where the cells were positioned.

For all three scores, we first simplified the topology of the trajectory to make both graph structures comparable:

-   As we are only interested in the main structure of the topology without start or end, the graph was made undirected.
-   All milestones with degree 2 were removed. For example in the topology A ⇨ B ⇨ C ⇨ D, C ⇨ D, the B milestone was removed
-   A linear topology was converted to A ⇨ B ⇨ C
-   A cyclical topology such as A ⇨ B ⇨ C ⇨ D or A ⇨ B ⇨ A were all simplified to A ⇨ B ⇨ C ⇨ A
-   Duplicated edges such as A ⇨ B, A ⇨ B were decoupled to A ⇨ B, A ⇨ C ⇨ B

The Isomorphic score returns 1 if two graphs are isomorphic, and 0 if they were not. For this, we used the used the BLISS algorithm \[@junttila\_engineeringefficientcanonical\_2007\], as implemented in the R *igraph* package.

The edgeflip score was defined as the minimal number of edges which should be added or removed to convert one network into the other, divided by the total number of edges in both networks. This problem is equivalent to the maximum common edge subgraph problem, a known NP-hard problem without a scalable solution \[@bahiense\_maximumcommonedge\_2012\]. We implemented a branch and bound approach for this problem, using several heuristics to speed up the search:

-   First check all possible edge additions and removals corresponding to the number of different edges between the two graphs. If no solution is found, check all possible solutions with two extra edge additions/removals.
-   For each possible solution, first check whether:
-   The maximal degree is the same
-   The minimal degree is the same
-   All degrees are the same after sorting
-   Only then check if the two graphs are isomorphic as described earlier.

The HIM metric (Hamming-Ipsen-Mikhailov distance) \[@jurmanHIMGlocalMetric2015\] which was adopted from the R nettools package <https://github.com/filosi/nettools>. It uses an adjacency matrix which was weighted according to the lengths of each edges within the milestone network. Conceptually, HIM is a linear combination of:

-   The normalised Hamming distance \[@doughertyValidationGeneRegulatory2011\], which calculates the distance between two graphs by matching individual edges in the adjacency matrix, but disregards overall structural similarity.
-   The normalised Ipsen-Mikhailov distance \[@ipsenEvolutionaryReconstructionNetworks2002\], which calculates the overall distance of two graphs based on matches between its degree and adjacency matrix, while disregarding local structural similarities. It requires a ![](https://latex.codecogs.com/gif.latex?%5Cgamma) parameter, which is usually estimated based on the number of nodes in the graph, but which we fixed at ![](https://latex.codecogs.com/gif.latex?0.1) so as to make the score comparable across different graph sizes.

We compared the three scores for several common topologies ([**Figure 2**](#fig_topology_scores_overview)). While conceptually very different, the edgeflipr and HIMr still produce similar scores ([**Figure 2b**](#fig_topology_scores_overview)). The HIMr tends to punish the detection of cycles, while the edgeflipr is more harsh for differences in the number of bifurcations ([**Figure 2c**](#fig_topology_scores_overview)). The main difference however is that the HIMr takes into account edge lengths when comparing two trajectories, as illustrated in ([**Figure 2d**](#fig_topology_scores_overview)).

<p>
<a name = 'fig_topology_scores_overview'></a> <img src = "/home/wouters/thesis/projects/dynverse/dynbenchmark/results/02-metric_characterisation/02-individual_metrics/topology_scores_overview.png" />
</p>
<p>
<strong>Figure 2: Isomorphic, edgeflip and HIM .</strong>
</p>
To summarise, the different topology based scores are useful for different scenarios:

-   If the two trajectories should only be compared when the topology is exactly the same, the Isomorphic should be used.
-   If it is important that the topologies are similar (but possible exactly isomorphic), the edgeflip is most appropriate.
-   If the topologies should be similar, but shorter edges should not be punished as hard as longer edges, the HIM is most appropriate.

F1<sub>branches</sub> and F1<sub>milestones</sub>: Comparing how well the cells are clustered in the trajectory
---------------------------------------------------------------------------------------------------------------

Perhaps one of the simplest ways to calculate the similarity between the cellular positions of two topologies is by mapping each cell to its closest milestone *or* branch ([**Figure 3**](#fig_clustering_scores_overview)). These clusters of cells can then be compared using one of the many external cluster evaluation measures \[@saelensComprehensiveEvaluationModule2018\]. When selecting such a metric, we had two conditions:

-   Because we allow some methods to filter cells in the trajectory, the metric should be able to handle "non-exhaustive assignment", where some cells are not assigned to any cluster.
-   The metric should give each cluster equal weight, so that rare cell stages are equally important as large stages.

Based on these requirements, and on the analysis in \[@saelensComprehensiveEvaluationModule2018\], we chose the ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BF1%7D) score between the ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRecovery%7D) and ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRelevance%7D). If ![](https://latex.codecogs.com/gif.latex?C) and ![](https://latex.codecogs.com/gif.latex?C') are two cell clusters:

![](https://latex.codecogs.com/gif.latex?Jaccard(c,%20c')%20=%20%5Cfrac%7B%7Cc%20%5Ccap%20c'%7C%7D%7B%7Cc%20%5Ccup%20c'%7C%7D)

![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRecovery%7D%20=%20%5Cfrac%7B1%7D%7B%7CC%7C%7D%20%5Csum_%7Bc%20%5Cin%20C%7D%7B%5Cmax_%7Bc'%20%5Cin%20C'%7D%7B%5Ctextrm%7BJaccard(c,%20c')%7D%7D%7D)

![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRelevance%7D%20=%20%5Cfrac%7B1%7D%7B%7CC'%7C%7D%20%5Csum_%7Bc'%20%5Cin%20C'%7D%7B%5Cmax_%7Bc%20%5Cin%20C%7D%7B%5Ctextrm%7BJaccard(c,%20c')%7D%7D%7D)

![](https://latex.codecogs.com/gif.latex?textrm%7BF1%7D%20=%20%5Cfrac%7B2%7D%7B%5Cfrac%7B1%7D%7B%5Ctextrm%7BRecovery%7D%7D%20+%20%5Cfrac%7B1%7D%7B%5Ctextrm%7BRelevance%7D%7D%7D)

<p>
<a name = 'fig_clustering_scores_overview'></a> <img src = "/home/wouters/thesis/projects/dynverse/dynbenchmark/results/02-metric_characterisation/02-individual_metrics/clustering_scores_overview.png" />
</p>
<p>
<strong>Figure 3: Mapping cells to their closest milestone or branch for the calculation of the F1<sub>milestones</sub> and F1<sub>branches</sub> .</strong>
</p>
cor<sub>dist</sub>: Correlation between geodesic distances
----------------------------------------------------------

When the position of a cell is the same in both the gold standard and the prediction, its distances to all other cells in the trajectory should also be the same. This observation is the basis for the cor<sub>dist</sub> metric.

<p>
<a name = 'fig_metrics_geodesic'></a> <img src = "/home/wouters/thesis/projects/dynverse/dynbenchmark//results/manual_figures/metrics_geodesic.svg" />
</p>
<p>
<strong>Figure 4: The calculation of geodesic distances on a small example trajectory.</strong> a) A toy example containing four milestones (W to Z) and five cells (a to e). b) The corresponding milestone network, milestone percentages and regions of delayed commitment, when the toy trajectory is converted to the common trajectory model. c) The calculations made for calculating the pairwise geodesic distances. d) A heatmap representation of the pairwise geodesic distances.
</p>
The geodesic distance is the distance a cell has to through the trajectory space to get from one position to another ([**Figure 4**](#fig_metrics_geodesic)). The way this distance is calculated depends on how two cells are positioned:

-   **Both cells are on the same edge in the milestone network.** In this case, the distance is defined as the product of the difference in milestone percentages and the length of the transition they both reside on. The geodesic distance is defined as the product of the difference in milestone percentages and the length of their common edge. For cells ![](https://latex.codecogs.com/gif.latex?a) and ![](https://latex.codecogs.com/gif.latex?b) in the example, ![](https://latex.codecogs.com/gif.latex?d(a,%20b)) is equal to ![](https://latex.codecogs.com/gif.latex?1%20%5Ctimes%20(0.9%20-%200.2)%20=%200.7).
-   **Cells reside on different edges in the milestone network.** First, the distance of the cell to all its nearby milestones is calculated, based on its percentage within the edge and the length of the edge. These distances in combination with the milestone network are used to calculate the shortest path distance between the two cells. For cells ![](https://latex.codecogs.com/gif.latex?a) and ![](https://latex.codecogs.com/gif.latex?c) in the example, ![](https://latex.codecogs.com/gif.latex?d(a,%20X)%20=%201%20%5Ctimes%200.9) and ![](https://latex.codecogs.com/gif.latex?d(c,%20X)%20=%203%20%5Ctimes%200.2), and therefore ![](https://latex.codecogs.com/gif.latex?d(a,%20c)%20=%201%20%5Ctimes%200.9%20+%203%20%5Ctimes%200.2).

The geodesic distance can be easily extended towards cells within regions of delayed commitment. When both cells are part of the same region of delayed commitment, the geodesic distance was defined as the manhattan distances between the milestone percentages weighted by the lengths from the milestone network. For cells ![](https://latex.codecogs.com/gif.latex?d) and ![](https://latex.codecogs.com/gif.latex?e) in the example, ![](https://latex.codecogs.com/gif.latex?d(d,%20e)) is equal to ![](https://latex.codecogs.com/gif.latex?0%20%5Ctimes%20(0.3%20-%200.2)%20+%202%20%5Ctimes%20(0.7%20-%200.2)%20+%203%20%5Ctimes(0.4%20-%200.1)), which is equal to ![](https://latex.codecogs.com/gif.latex?1.9). The distance between two cells where one is part of a region of delayed commitment is calculated similarly to the previous paragraph, by first calculating the distance between the cells and their neighbouring milestones first, then calculating the shortest path distances between the two.

Calculating the pairwise distances between cells scales quadratically with the number of cells, and would therefore not be scaleable for large datasets. For this reason, a set of waypoint cells are defined *a priori*, and only the distances between the waypoint cells and all other cells is calculated, in order to calculate the correlation of geodesic distances of two trajectories ([**Figure 5a**](#fig_waypoints_overview)). These cell waypoints are determined by viewing each milestone, edge between two milestones and region of delayed commitment as a collection of cells. We do stratified sampling from each collection of cells by weighing them by the total number of cells within that collection. For calculating the cor<sub>dist</sub> between two trajectories, the distances between all cells and the union of both waypoint sets is computed.

To select the number of cell waypoints, we need to find a trade-off between the accuracy versus the time to calculate cor<sub>dist</sub>. To select an optimal number of cell waypoints, we used the synthetic dataset with the most complex topology, and determined the cor<sub>dist</sub> at different levels of both cell shuffling and number of cell waypoints ([**Figure 5b**](#fig_waypoints_overview)). We found that using cell waypoints does not induce a systematic bias in the cor<sub>dist</sub>, and that its variability was relatively minimal when compared to the variability between different levels of cell shuffling when using 100 or more cell waypoints.

<p>
<a name = 'fig_waypoints_overview'></a> <img src = "/home/wouters/thesis/projects/dynverse/dynbenchmark/results/02-metric_characterisation/02-individual_metrics/waypoints_overview.png" />
</p>
<p>
<strong>Figure 5: Determination of cell waypoints</strong> a) Illustration of the stratified cell sampling using an example dataset (top). Each milestone, edge between two milestones and region of delayed commitment is seen as a collection of cells (middle), and the number of waypoints (100 in this case) are divided over each of these collection of cells (bottom). b) Accuracy versus time to calculate cor<sub>dist</sub>
</p>
NMSE<sub>rf</sub> and NMSE<sub>lm</sub>: Using the positions of the cells within one trajectory to predict the cellular positions in the other trajectory
---------------------------------------------------------------------------------------------------------------------------------------------------------

An alternative approach to detect whether the positions of cells are similar between two trajectories, is to use the positions of one trajectory to predict the positions within the other trajectory. If the prediction error for a particular cell is low, the higher the similarity between the cellular positions.

Specifically, we implemented two metrics which predict the milestone percentages from the gold standards by using the predicted milestone percentages as features ([**Figure 6**](#fig_metrics_prediction)). We did this with two regression methods, linear regression (![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Blm%7D), using the R `lm` function) and Random Forest (![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Brf%7D), implemented in the *ranger* package \[@wright\_rangerfastimplementation\_2017\]). In both cases, the accuracy of the prediction was measured using the Mean Squared error (![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BMSE%7D)), in the case of Random forest we used the out-of-bag mean-squared error. Next, we calculated ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BMSE%7D_%7Bworst%7D) equal to the ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BMSE%7D) when predicting all milestone percentages as the average. We used this to calculate the normalised mean squared error as ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BNMSE%7D%20=%201%20-%20%5Cfrac%7B%5Cmathit%7BMSE%7D%7D%7B%5Cmathit%7BMSE%7D_%7Bworst%7D%7D). We created a regression model for every milestone in the gold standard, and averaged the ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BNMSE%7D) values to finally obtain the NMSE<sub>rf</sub> and NMSE<sub>lm</sub> scores.

<p>
<a name = 'fig_metrics_prediction'></a> <img src = "/home/wouters/thesis/projects/dynverse/dynbenchmark//results/manual_figures/metrics_prediction.svg" />
</p>
<p>
<strong>Figure 6: The calculation of NMSE<sub>lm</sub> distances on a small example trajectory.</strong>
</p>
Application metrics
===================

Although most metrics described above already assess some aspects directly relevant to the user, such as whether the method is good at finding the right topology, these metrics do not assess the quality of downstream analyses and hypotheses which can be generated from these models.

cor<sub>features</sub>: The accuracy of dynamical differentially expressed features/genes.
------------------------------------------------------------------------------------------

Perhaps the main advantages of studying cellular dynamic processes using single-cell -omics data is that the dynamics of gene expression can be studied for the whole transcriptome. This can be used to construct other models such as dynamic regulatory networks and gene expression modules. Such analyses rely on a "good-enough" cellular ordering, so that it can be used to identify dynamical differentially expressed genes.

To calculate the cor<sub>features</sub> we used Random forest regression to rank all the features according to their importance in predicting the positions of cells in the trajectory. Specifically, we calculated the geodesic distances for each cell to all milestones in the trajectory. Next, we trained a Random Forest regression model (implemented in the R *ranger* package \[@wright\_rangerfastimplementation\_2017\], <https://github.com/imbs-hl/ranger>) to predict these distances for each milestone, based on the expression of genes within each cell. We then extracted feature importances using the Mean Decrease in Impurity (`importance = 'impurity'` parameter of the `ranger` function), as illustrated in ([**Figure 7**](#fig_featureimp_overview)). The overall importance of a feature (gene) was then equal to the mean importance over all milestones.

<p>
<a name = 'fig_featureimp_overview'></a> <img src = "/home/wouters/thesis/projects/dynverse/dynbenchmark/results/02-metric_characterisation/02-individual_metrics/featureimp_overview.png" />
</p>
<p>
<strong>Figure 7: </strong>
</p>
Random forest regression has two main hyperparameters. The number of trees to be fitted (`num_trees` parameter) was fixed to `10000` to provide accurate and stable estimates of the feature importance ([**Figure 8**](#fig_featureimp_cor_distributions)). The number of features on which can be split (`mtry` parameter) was set to 1% of all available features (instead of the default square-root of the number of features), as to make sure that predictive but highly correlated feautres (omnipresent in transcriptomics data) are not suppressed in the ranking.

<p>
<a name = 'fig_feautreimp_cor_distributions'></a> <img src = "/home/wouters/thesis/projects/dynverse/dynbenchmark/results/02-metric_characterisation/02-individual_metrics/feautreimp_cor_distributions.png" />
</p>
<p>
<strong>Figure 9: </strong>
</p>
Overall metrics
===============

An overall metric should not only focus on

Metric conformity
=================

Although most metrics described in the previous section make sense intuitively, this does not necessarily mean that these metrics are robust and will generate reasonable results when used for benchmarking. This is because different methods and datasets will all lead to a varied set of trajectory models:

-   Real datasets have all cells grouped onto milestones
-   Some methods place all cells in a region of delayed commitment, others never generate a region of delayed commitment
-   Some methods always return a linear trajectory, even if a bifurcation is present in the data
-   Some methods filter cells

A good metric, especially a good overall metric, should work in all these circumstances. To test this, we designed a set of rules to which a good metric should conform, and assessed empirically whether a metric conforms to these rules.

We generated a panel of toy datasets (using our [*dyntoy*](https://github.com/dynverse/dyntoy) package, <https://github.com/dynverse/dyntoy>) with all possible combinations of:

-   \# cells: 10, 50, 100, 200 and 500
-   \# features: 200
-   topologies: linear, bifurcation, multifurcating, tree, cycle, connected graph and disconnected graph
-   Whether cells are placed on the milestones (as in real data) or on the edges/regions of delayed commitment between the milestones (as in synthetic data)

We then perturbed the trajectories in these datasets in certain ways, and tested whether the scores follow an expected pattern. An overview of the conformity of every metric is first given in [**Table 1**](#table_conformity_overview). The individual rules and metric behaviour are discussed more into detail after that.

<a name = 'table_conformity_overview'></a>

| name                                            | cor<sub>dist</sub> | NMSE<sub>rf</sub> | NMSE<sub>lm</sub> | edgeflip | cor<sub>features</sub> | F1<sub>branches</sub> | F1<sub>milestones</sub> | hmean |
|:------------------------------------------------|:-------------------|:------------------|:------------------|:---------|:-----------------------|:----------------------|:------------------------|:------|
| New connecting edges                            | ✔                  | ✖                 | ✖                 | ✔        | ✖                      | ✔                     | ✔                       | ✔     |
| New leaf edges                                  | ✖                  | ✖                 | ✖                 | ✔        | ✖                      | ✔                     | ✔                       | ✔     |
| Cycle breaking                                  | ✔                  | ✖                 | ✖                 | ✔        | ✔                      | ✖                     | ✔                       | ✔     |
| Cells on milestones vs edges                    | ✔                  | ✔                 | ✔                 | ✔        | ✔                      | ✔                     | ✔                       | ✔     |
| Change of topology                              | ✔                  | ✖                 | ✖                 | ✔        | ✔                      | ✖                     | ✔                       | ✔     |
| Changing positions locally and/or globally      | ✔                  | ✔                 | ✔                 | ✖        | ✔                      | ✖                     | ✖                       | ✔     |
| Bifurcation merging and changing cell positions | ✔                  | ✔                 | ✔                 | ✖        | ✔                      | ✔                     | ✔                       | ✔     |
| Changing topology and cell position             | ✖                  | ✖                 | ✖                 | ✖        | ✔                      | ✖                     | ✖                       | ✔     |
| Bifurcation concatentation                      | ✔                  | ✖                 | ✔                 | ✔        | ✔                      | ✔                     | ✔                       | ✔     |
| Same score on identity                          | ✔                  | ✖                 | ✔                 | ✔        | ✖                      | ✔                     | ✔                       | ✔     |
| Cell filtering                                  | ✔                  | ✔                 | ✔                 | ✖        | ✔                      | ✔                     | ✔                       | ✔     |
| Linear joining                                  | ✔                  | ✖                 | ✖                 | ✔        | ✖                      | ✖                     | ✔                       | ✔     |
| Bifurcation merging                             | ✔                  | ✖                 | ✔                 | ✔        | ✔                      | ✔                     | ✔                       | ✔     |
| Cells into small subedges                       | ✖                  | ✖                 | ✖                 | ✔        | ✔                      | ✔                     | ✔                       | ✔     |
| Removing divergence regions                     | ✔                  | ✔                 | ✔                 | ✖        | ✔                      | ✖                     | ✔                       | ✔     |
| Local and global cell shuffling                 | ✔                  | ✖                 | ✖                 | ✖        | ✔                      | ✔                     | ✔                       | ✔     |
| Local cell shuffling                            | ✔                  | ✔                 | ✔                 | ✖        | ✔                      | ✖                     | ✖                       | ✔     |
| Edge shuffling                                  | ✔                  | ✔                 | ✔                 | ✖        | ✔                      | ✔                     | ✔                       | ✔     |
| Length shuffling                                | ✔                  | ✖                 | ✖                 | ✖        | ✖                      | ✖                     | ✖                       | ✔     |
| Linear splitting                                | ✔                  | ✔                 | ✖                 | ✔        | ✔                      | ✔                     | ✔                       | ✔     |
| Move cells to closest milestone                 | ✔                  | ✖                 | ✔                 | ✖        | ✔                      | ✖                     | ✔                       | ✔     |
| Move cells to start milestone                   | ✔                  | ✔                 | ✔                 | ✖        | ✔                      | ✖                     | ✔                       | ✔     |

**Table 1: Overview of whether a particular metric conforms to a particular rule**

Same score on identity
----------------------

The score should be approximately the same when comparing the trajectory to itself

A metric conforms to this rule if: 1 ≤ *s**c**o**r**e* ≤ 0.99

Metrics which contain some stochasticity (random forest based metrics in particular), usually do not conform to this rule, even though their scores are still consistently high.

<img src="results/02-metric_characterisation/README_files/figure-markdown_github/A-1.png" width="2in" />

<img src="results/02-metric_characterisation/README_files/figure-markdown_github/B-1.png" width="3in" />
