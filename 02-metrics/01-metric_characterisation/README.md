
# Metric characterisation and testing

## Specific metrics

### Isomorphic, edgeflip and HIM: Edit distance between two trajectory topologies

We used three different scores to assess the similarity in the topology between two trajectories, iregardless of where the cells were positioned.

For all three scores, we first simplified the topology of the trajectory to make both graph structures comparable:

-   As we are only interested in the main structure of the topology without start or end, the graph was made undirected.
-   All milestones with degree 2 were removed. For example in the topology A ⇨ B ⇨ C ⇨ D, C ⇨ D, the B milestone was removed
-   A linear topology was converted to A ⇨ B ⇨ C
-   A cyclical topology such as A ⇨ B ⇨ C ⇨ D or A ⇨ B ⇨ A were all simplified to A ⇨ B ⇨ C ⇨ A
-   Duplicated edges such as A ⇨ B, A ⇨ B were decoupled to A ⇨ B, A ⇨ C ⇨ B

The Isomorphic score returns 1 if two graphs are isomorphic, and 0 if they were not. For this, we used the used the BLISS algorithm<sup>[1](#ref-junttila_engineeringefficientcanonical_2007)</sup>, as implemented in the R *igraph* package.

The edgeflip score was defined as the minimal number of edges which should be added or removed to convert one network into the other, divided by the total number of edges in both networks. This problem is equivalent to the maximum common edge subgraph problem, a known NP-hard problem without a scalable solution<sup>[2](#ref-bahiense_maximumcommonedge_2012)</sup>. We implemented a branch and bound approach for this problem, using several heuristics to speed up the search:

-   First check all possible edge additions and removals corresponding to the number of different edges between the two graphs. If no solution is found, check all possible solutions with two extra edge additions/removals.
-   For each possible solution, first check whether:
-   The maximal degree is the same
-   The minimal degree is the same
-   All degrees are the same after sorting
-   Only then check if the two graphs are isomorphic as described earlier.

The HIM metric (Hamming-Ipsen-Mikhailov distance)<sup>[3](#ref-jurmanHIMGlocalMetric2015)</sup> which was adopted from the R nettools package <https://github.com/filosi/nettools>. It uses an adjacency matrix which was weighted according to the lengths of each edges within the milestone network. Conceptually, HIM is a linear combination of:

-   The normalised Hamming distance<sup>[4](#ref-doughertyValidationGeneRegulatory2011)</sup>, which calculates the distance between two graphs by matching individual edges in the adjacency matrix, but disregards overall structural similarity.
-   The normalised Ipsen-Mikhailov distance<sup>[5](#ref-ipsenEvolutionaryReconstructionNetworks2002)</sup>, which calculates the overall distance of two graphs based on matches between its degree and adjacency matrix, while disregarding local structural similarities. It requires a ![](https://latex.codecogs.com/gif.latex?%5Cgamma) parameter, which is usually estimated based on the number of nodes in the graph, but which we fixed at ![](https://latex.codecogs.com/gif.latex?0.1) so as to make the score comparable across different graph sizes.

We compared the three scores for several common topologies ([**Figure 1**](#fig_topology_scores_overview)). While conceptually very different, the edgeflip and HIM still produce similar scores ([**Figure 1b**](#fig_topology_scores_overview)). The HIM tends to punish the detection of cycles, while the edgeflip is more harsh for differences in the number of bifurcations ([**Figure 1c**](#fig_topology_scores_overview)). The main difference however is that the HIM takes into account edge lengths when comparing two trajectories, as illustrated in ([**Figure 1d**](#fig_topology_scores_overview)). Short "extra" edges in the topology are less punished by the HIM than by the edgeflip.

<p>
<a name = 'fig_topology_scores_overview'></a> <img src = "topology_scores_overview.png" width = "840" height = "840" />
</p>
<p>
<strong>Figure 1: Isomorphic, edgeflip and HIM .</strong>
</p>

------------------------------------------------------------------------

To summarise, the different topology based scores are useful for different scenarios:

-   If the two trajectories should only be compared when the topology is exactly the same, the Isomorphic should be used.
-   If it is important that the topologies are similar (but possible exactly isomorphic), the edgeflip is most appropriate.
-   If the topologies should be similar, but shorter edges should not be punished as hard as longer edges, the HIM is most appropriate.

### F1<sub>branches</sub> and F1<sub>milestones</sub>: Comparing how well the cells are clustered in the trajectory

Perhaps one of the simplest ways to calculate the similarity between the cellular positions of two topologies is by mapping each cell to its closest milestone *or* branch ([**Figure 2**](#fig_clustering_scores_overview)). These clusters of cells can then be compared using one of the many external cluster evaluation measures<sup>[6](#ref-saelensComprehensiveEvaluationModule2018)</sup>. When selecting a cluster evaluation metric, we had two main conditions:

-   Because we allow some methods to filter cells in the trajectory, the metric should be able to handle "non-exhaustive assignment", where some cells are not assigned to any cluster.
-   The metric should give each cluster equal weight, so that rare cell stages are equally important as large stages.

The ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BF1%7D) score between the ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRecovery%7D) and ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRelevance%7D) is a metric which conforms to both these conditions. This metric will map two clustersets by using their shared members based on the ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BJaccard%7D) similarity. It then calculates the ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRecovery%7D) as the average maximal ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BJaccard%7D) for every cluster in the first set of clusters (in our case the gold standard). Conversely, the ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRelevance%7D) is calculated based on the average maximal similarity in the second set of clusters (in our case the prediction). Both the ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRecovery%7D) and ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRelevance%7D) are then given equal weight in a harmonic mean (![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BF1%7D)). Formally, if ![](https://latex.codecogs.com/gif.latex?C) and ![](https://latex.codecogs.com/gif.latex?C') are two cell clusters:

![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BJaccard%7D(c,%20c')%20=%20%5Cfrac%7B%7Cc%20%5Ccap%20c'%7C%7D%7B%7Cc%20%5Ccup%20c'%7C%7D)

![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRecovery%7D%20=%20%5Cfrac%7B1%7D%7B%7CC%7C%7D%20%5Csum_%7Bc%20%5Cin%20C%7D%7B%5Cmax_%7Bc'%20%5Cin%20C'%7D%7B%5Ctextrm%7BJaccard(c,%20c')%7D%7D%7D)

![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRelevance%7D%20=%20%5Cfrac%7B1%7D%7B%7CC'%7C%7D%20%5Csum_%7Bc'%20%5Cin%20C'%7D%7B%5Cmax_%7Bc%20%5Cin%20C%7D%7B%5Ctextrm%7BJaccard(c,%20c')%7D%7D%7D)

![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BF1%7D%20=%20%5Cfrac%7B2%7D%7B%5Cfrac%7B1%7D%7B%5Ctextrm%7BRecovery%7D%7D%20+%20%5Cfrac%7B1%7D%7B%5Ctextrm%7BRelevance%7D%7D%7D)

<p>
<a name = 'fig_clustering_scores_overview'></a> <img src = "clustering_scores_overview.png" width = "840" height = "350" />
</p>
<p>
<strong>Figure 2: Mapping cells to their closest milestone or branch for the calculation of the F1<sub>milestones</sub> and F1<sub>branches</sub> .</strong>
</p>

------------------------------------------------------------------------

### cor<sub>dist</sub>: Correlation between geodesic distances

When the position of a cell is the same in both the gold standard and the prediction, its *relative* distances to all other cells in the trajectory should also be the same. This observation is the basis for the cor<sub>dist</sub> metric.

<p>
<a name = 'fig_metrics_geodesic'></a> <img src = "../../manual_figures/metrics_geodesic.svg" width = "840" height = "420" />
</p>
<p>
<strong>Figure 3: The calculation of geodesic distances on a small example trajectory.</strong> a) A toy example containing four milestones (W to Z) and five cells (a to e). b) The corresponding milestone network, milestone percentages and regions of delayed commitment, when the toy trajectory is converted to the common trajectory model. c) The calculations made for calculating the pairwise geodesic distances. d) A heatmap representation of the pairwise geodesic distances.
</p>

------------------------------------------------------------------------

The geodesic distance is the distance a cell has to go through the trajectory space to get from one position to another ([**Figure 3**](#fig_metrics_geodesic)). The way this distance is calculated depends on how two cells are positioned:

-   **Both cells are on the same edge in the milestone network.** In this case, the distance is defined as the product of the difference in milestone percentages and the length of the transition they both reside on. The geodesic distance is defined as the product of the difference in milestone percentages and the length of their common edge. For cells ![](https://latex.codecogs.com/gif.latex?a) and ![](https://latex.codecogs.com/gif.latex?b) in the example, ![](https://latex.codecogs.com/gif.latex?d(a,%20b)) is equal to ![](https://latex.codecogs.com/gif.latex?1%20%5Ctimes%20(0.9%20-%200.2)%20=%200.7).
-   **Cells reside on different edges in the milestone network.** First, the distance of the cell to all its nearby milestones is calculated, based on its percentage within the edge and the length of the edge. These distances in combination with the milestone network are used to calculate the shortest path distance between the two cells. For cells ![](https://latex.codecogs.com/gif.latex?a) and ![](https://latex.codecogs.com/gif.latex?c) in the example, ![](https://latex.codecogs.com/gif.latex?d(a,%20X)%20=%201%20%5Ctimes%200.9) and ![](https://latex.codecogs.com/gif.latex?d(c,%20X)%20=%203%20%5Ctimes%200.2), and therefore ![](https://latex.codecogs.com/gif.latex?d(a,%20c)%20=%201%20%5Ctimes%200.9%20+%203%20%5Ctimes%200.2).

The geodesic distance can be easily extended towards cells within regions of delayed commitment. When both cells are part of the same region of delayed commitment, the geodesic distance was defined as the manhattan distances between the milestone percentages weighted by the lengths from the milestone network. For cells ![](https://latex.codecogs.com/gif.latex?d) and ![](https://latex.codecogs.com/gif.latex?e) in the example, ![](https://latex.codecogs.com/gif.latex?d(d,%20e)) is equal to ![](https://latex.codecogs.com/gif.latex?0%20%5Ctimes%20(0.3%20-%200.2)%20+%202%20%5Ctimes%20(0.7%20-%200.2)%20+%203%20%5Ctimes(0.4%20-%200.1)), which is equal to ![](https://latex.codecogs.com/gif.latex?1.9). The distance between two cells where one is part of a region of delayed commitment is calculated similarly to the previous paragraph, by first calculating the distance between the cells and their neighbouring milestones first, then calculating the shortest path distances between the two.

Calculating the pairwise distances between cells scales quadratically with the number of cells, and would therefore not be scaleable for large datasets. For this reason, a set of waypoint cells are defined *a priori*, and only the distances between the waypoint cells and all other cells is calculated, in order to calculate the correlation of geodesic distances of two trajectories ([**Figure 4a**](#fig_waypoints_overview)). These cell waypoints are determined by viewing each milestone, edge between two milestones and region of delayed commitment as a collection of cells. We do stratified sampling from each collection of cells by weighing them by the total number of cells within that collection. For calculating the cor<sub>dist</sub> between two trajectories, the distances between all cells and the union of both waypoint sets is computed.

To select the number of cell waypoints, we need to find a trade-off between the accuracy versus the time to calculate cor<sub>dist</sub>. To select an optimal number of cell waypoints, we used the synthetic dataset with the most complex topology, and determined the cor<sub>dist</sub> at different levels of both cell shuffling and number of cell waypoints ([**Figure 4b**](#fig_waypoints_overview)). We found that using cell waypoints does not induce a systematic bias in the cor<sub>dist</sub>, and that its variability was relatively minimal when compared to the variability between different levels of cell shuffling when using 100 or more cell waypoints.

<p>
<a name = 'fig_waypoints_overview'></a> <img src = "waypoints_overview.png" width = "840" height = "560" />
</p>
<p>
<strong>Figure 4: Determination of cell waypoints</strong> a) Illustration of the stratified cell sampling using an example dataset (top). Each milestone, edge between two milestones and region of delayed commitment is seen as a collection of cells (middle), and the number of waypoints (100 in this case) are divided over each of these collection of cells (bottom). b) Accuracy versus time to calculate cor<sub>dist</sub>
</p>

------------------------------------------------------------------------

### NMSE<sub>rf</sub> and NMSE<sub>lm</sub>: Using the positions of the cells within one trajectory to predict the cellular positions in the other trajectory

An alternative approach to detect whether the positions of cells are similar between two trajectories, is to use the positions of one trajectory to predict the positions within the other trajectory. If the cells are at similar positions in the trajectory (relative to its nearby cells), its prediction error should be low.

Specifically, we implemented two metrics which predict the milestone percentages from the gold standards by using the predicted milestone percentages as features ([**Figure 5**](#fig_metrics_prediction)). We did this with two regression methods, linear regression (![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Blm%7D), using the R `lm` function) and Random Forest (![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Brf%7D), implemented in the *ranger* package<sup>[7](#ref-wright_rangerfastimplementation_2017)</sup>). In both cases, the accuracy of the prediction was measured using the Mean Squared error (![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BMSE%7D)), in the case of Random forest we used the out-of-bag mean-squared error. Next, we calculated ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BMSE%7D_%7Bworst%7D) equal to the ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BMSE%7D) when predicting all milestone percentages as the average. We used this to calculate the normalised mean squared error as ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BNMSE%7D%20=%201%20-%20%5Cfrac%7B%5Cmathit%7BMSE%7D%7D%7B%5Cmathit%7BMSE%7D_%7Bworst%7D%7D). We created a regression model for every milestone in the gold standard, and averaged the ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BNMSE%7D) values to finally obtain the NMSE<sub>rf</sub> and NMSE<sub>lm</sub> scores.

<p>
<a name = 'fig_metrics_prediction'></a> <img src = "../../manual_figures/metrics_prediction.svg" width = "840" height = "420" />
</p>
<p>
<strong>Figure 5: The calculation of NMSE<sub>lm</sub> distances on a small example trajectory.</strong>
</p>

------------------------------------------------------------------------

## Application metrics

Although most metrics described above already assess some aspects directly relevant to the user, such as whether the method is good at finding the right topology, these metrics do not assess the quality of downstream analyses and hypotheses which can be generated from these models.

### cor<sub>features</sub> and wcor<sub>features</sub>: The accuracy of dynamical differentially expressed features/genes.

Perhaps the main advantage of studying cellular dynamic processes using single-cell -omics data is that the dynamics of gene expression can be studied for the whole transcriptome. This can be used to construct other models such as dynamic regulatory networks and gene expression modules. Such analyses rely on a "good-enough" cellular ordering, so that it can be used to identify dynamical differentially expressed genes.

To calculate the cor<sub>features</sub> we used Random forest regression to rank all the features according to their importance in predicting the positions of cells in the trajectory. Specifically, we calculated the geodesic distances for each cell to all milestones in the trajectory. Next, we trained a Random Forest regression model (implemented in the R *ranger* package<sup>[7](#ref-wright_rangerfastimplementation_2017)</sup>, <https://github.com/imbs-hl/ranger>) to predict these distances for each milestone, based on the expression of genes within each cell. We then extracted feature importances using the Mean Decrease in Impurity (`importance = 'impurity'` parameter of the `ranger` function), as illustrated in ([**Figure 6**](#fig_featureimp_overview)). The overall importance of a feature (gene) was then equal to the mean importance over all milestones. Finally, we compared the two rankings by calculating the Pearson correlation, with values lower than between -1 and 0 clipped to 0.

<p>
<a name = 'fig_featureimp_overview'></a> <img src = "featureimp_overview.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 6: </strong>
</p>

------------------------------------------------------------------------

Random forest regression has two main hyperparameters. The number of trees to be fitted (`num_trees` parameter) was fixed to `10000` to provide accurate and stable estimates of the feature importance ([**Figure 7**](#fig_featureimp_cor_distributions)). The number of features on which can be split (`mtry` parameter) was set to 1% of all available features (instead of the default square-root of the number of features), as to make sure that predictive but highly correlated features (omnipresent in transcriptomics data) are not suppressed in the ranking.

<p>
<a name = 'fig_featureimp_cor_distributions'></a> <img src = "featureimp_cor_distributions.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 7: </strong>
</p>

------------------------------------------------------------------------

For most datasets, only a limited number of features will be differentially expressed in the trajectory. For example, in the dataset used in [**Figure 7**](#fig_featureimp_cor_distributions) only the top 10%-20% show a clear pattern of differential expression. The correlation will weight each of these features equally, and will therefore give more weight to the bottom, irrelevant features. To prioritise the top differentially expressed features, we also implemented the wcor<sub>features</sub>, which will weight the correlation using the feature importance scores in the gold standard so that the top features have relatively more impact on the score ([**Figure 8**](#fig_featureimp_wcor_effect)).

<p>
<a name = 'fig_featureimp_wcor_effect'></a> <img src = "featureimp_wcor_effect.png" width = "560" height = "350" />
</p>
<p>
<strong>Figure 8: </strong>
</p>

------------------------------------------------------------------------

## Overall metrics

Undoubtedly, a single optimal overall metric does not exist for trajectories, as different users may have different priorities:

-   A user may be primarily interested in defining the correct topology, and only use the cellular ordering when the topology is correct
-   A user may be less interested in how the cells are ordered within a branch, but primarily in which cells are in which branches
-   A user may already know the topology, and may be primarily interested in finding good features related to a particular branching point
-   ...

Each of these scenarios would require a combinations of *specific* metrics with different weights. To provide an "overall" ranking of the metrics, which is impartial for the scenarios described above, we therefore chose a metric which weighs every aspect of the trajectory equally:

-   Its **ordering**, using the cor<sub>dist</sub>
-   Its **branch assignment**, using the F1<sub>branches</sub>
-   Its **topology**, using the HIM
-   The accuracy of **differentially expressed features**, using the wcor<sub>features</sub>

Next, we considered three different ways of averaging different scores: the mean<sub>arithmetic</sub>, mean<sub>geometric</sub> and mean<sub>harmonic</sub>. Each of these 'pythagorean means' have different use cases. The mean<sub>harmonic</sub> is most appropriate when the scores would all have a common denominator (as is the case for the ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRecovery%7D) and ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRelevance%7D) described earlier). The mean<sub>arithmetic</sub> would be most appropriate when all the metrics have the same range. For our use case, the mean<sub>geometric</sub> is the most appropriate, because it gives a meaningful average when the metrics are present in different ranges. Even though the maximal and minimal values of our metrics all lie within ![](https://latex.codecogs.com/gif.latex?%5Clbrack%200,%201%20%5Crbrack), their actual values within our benchmark were very different. Moreover, the geometric mean has as an added benefit that it is relatively low if one of the values is low. This means that if a method is not good at inferring the correct topology, it get a low overall score, even if it is very good at all other scores.

The final overall score for a method on a particular dataset was thus defined as: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmean%7D_%7B%5Ctextit%7Bgeometric%7D%7D%20=%20%5Csqrt%5B4%5D%7B%5Cmathit%7Bcor%7D_%7B%5Ctextrm%7Bdist%7D%7D%20%5Ctimes%20%5Ctextrm%7BHIM%7D%20%5Ctimes%20%5Cmathit%7Bwcor%7D_%7B%5Ctextrm%7Bfeatures%7D%7D%20%5Ctimes%20%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D%7D)

# References

1. Junttila, T. & Kaski, P. Engineering an Efficient Canonical Labeling Tool for Large and Sparse Graphs. in *2007 Proceedings of the Ninth Workshop on Algorithm Engineering and Experiments (ALENEX)* 135–149 (Society for Industrial and Applied Mathematics, 2007). doi:[10.1137/1.9781611972870.13](https://doi.org/10.1137/1.9781611972870.13)

2. Bahiense, L., Manić, G., Piva, B. & de Souza, C. C. The maximum common edge subgraph problem: A polyhedral investigation. *Discrete Applied Mathematics* **160,** 2523–2541 (2012).

3. Jurman, G., Visintainer, R., Filosi, M., Riccadonna, S. & Furlanello, C. The HIM glocal metric and kernel for network comparison and classification. in *2015 IEEE International Conference on Data Science and Advanced Analytics (DSAA)* 1–10 (2015). doi:[10.1109/DSAA.2015.7344816](https://doi.org/10.1109/DSAA.2015.7344816)

4. Dougherty, E. R. Validation of gene regulatory networks: Scientific and inferential. *Briefings in Bioinformatics* **12,** 245–252 (2011).

5. Ipsen, M. & Mikhailov, A. S. Evolutionary reconstruction of networks. *Physical Review. E, Statistical, Nonlinear, and Soft Matter Physics* **66,** 046109 (2002).

6. Saelens, W., Cannoodt, R. & Saeys, Y. A comprehensive evaluation of module detection methods for gene expression data. *Nature Communications* **9,** 1090 (2018).

7. Wright, M. N. & Ziegler, A. Ranger: A Fast Implementation of Random Forests for High Dimensional Data in C++ and R | Wright | Journal of Statistical Software. *Journal of Statistical Software* **77,** (2017).
