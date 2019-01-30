
# Metric conformity

Although most metrics described in the previous section make sense
intuitively, this does not necessarily mean that these metrics are
robust and will generate reasonable results when used for benchmarking.
This is because different methods and datasets will all lead to a varied
set of trajectory models:

  - Real datasets have all cells grouped onto milestones
  - Some methods place all cells in a region of delayed commitment,
    others never generate a region of delayed commitment
  - Some methods always return a linear trajectory, even if a
    bifurcation is present in the data
  - Some methods filter cells

A good metric, especially a good overall metric, should work in all
these circumstances. To test this, we designed a set of rules to which a
good metric should conform, and assessed empirically whether a metric
conforms to these rules.

We generated a panel of toy datasets (using our
[*dyntoy*](https://github.com/dynverse/dyntoy) package,
<https://github.com/dynverse/dyntoy>) with all possible combinations of:

  - \# cells: 10, 20, 50, 100, 200 and 500
  - \# features: 200
  - topologies: linear, bifurcation, multifurcating, tree, cycle,
    connected graph and disconnected graph
  - Whether cells are placed on the milestones (as in real data) or on
    the edges/regions of delayed commitment between the milestones (as
    in synthetic data)

We then perturbed the trajectories in these datasets in certain ways,
and tested whether the scores follow an expected pattern. An overview of
the conformity of every metric is first given in [**Table
1**](#table_conformity_overview). The individual rules and metric
behaviour are discussed more into detail after
that.

<a name = 'table_conformity_overview'></a>

| name                                            | cor<sub>dist</sub> | NMSE<sub>rf</sub> | NMSE<sub>lm</sub> | edgeflip | HIM | Isomorphic | cor<sub>features</sub> | wcor<sub>features</sub> | F1<sub>branches</sub> | F1<sub>milestones</sub> | mean<sub>geometric</sub> |
| :---------------------------------------------- | :----------------- | :---------------- | :---------------- | :------- | :-- | :--------- | :--------------------- | :---------------------- | :-------------------- | :---------------------- | :----------------------- |
| New connecting edges                            | ✔                  | ✔                 | ✖                 | ✔        | ✔   | ✔          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| New leaf edges                                  | ✔                  | ✔                 | ✖                 | ✔        | ✔   | ✔          | ✖                      | ✖                       | ✔                     | ✔                       | ✔                        |
| Cycle breaking                                  | ✔                  | ✖                 | ✔                 | ✔        | ✔   | ✔          | ✔                      | ✔                       | ✖                     | ✔                       | ✔                        |
| Cells on milestones vs edges                    | ✔                  | ✔                 | ✔                 | ✔        | ✔   | ✔          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| Change of topology                              | ✔                  | ✖                 | ✖                 | ✔        | ✔   | ✔          | ✔                      | ✔                       | ✖                     | ✔                       | ✔                        |
| Changing positions locally and/or globally      | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✖                     | ✖                       | ✔                        |
| Bifurcation merging and changing cell positions | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| Changing topology and cell position             | ✖                  | ✖                 | ✖                 | ✖        | ✖   | ✖          | ✖                      | ✖                       | ✖                     | ✖                       | ✔                        |
| Bifurcation concatentation                      | ✔                  | ✖                 | ✔                 | ✔        | ✔   | ✔          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| Same score on identity                          | ✔                  | ✖                 | ✔                 | ✔        | ✔   | ✔          | ✔                      | ✖                       | ✔                     | ✔                       | ✔                        |
| Cell filtering                                  | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| Linear joining                                  | ✔                  | ✔                 | ✔                 | ✔        | ✔   | ✔          | ✔                      | ✔                       | ✖                     | ✔                       | ✔                        |
| Bifurcation merging                             | ✔                  | ✖                 | ✔                 | ✔        | ✔   | ✔          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| Cells into small subedges                       | ✖                  | ✔                 | ✖                 | ✔        | ✔   | ✔          | ✔                      | ✖                       | ✔                     | ✔                       | ✔                        |
| Removing divergence regions                     | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✖                     | ✔                       | ✔                        |
| Local and global cell shuffling                 | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| Local cell shuffling                            | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✖                     | ✔                       | ✔                        |
| Edge shuffling                                  | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| Length shuffling                                | ✔                  | ✖                 | ✔                 | ✖        | ✔   | ✖          | ✖                      | ✖                       | ✖                     | ✔                       | ✔                        |
| Linear splitting                                | ✔                  | ✔                 | ✔                 | ✔        | ✔   | ✔          | ✔                      | ✔                       | ✔                     | ✔                       | ✔                        |
| Move cells to closest milestone                 | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✖                     | ✔                       | ✔                        |
| Move cells to start milestone                   | ✔                  | ✔                 | ✔                 | ✖        | ✖   | ✖          | ✔                      | ✔                       | ✖                     | ✔                       | ✔                        |

**[**Table 1**](#table_conformity_overview): Overview of whether a
particular metric conforms to a particular rule**

### Rule 1: Same score on identity

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/equal_identity.png" width="2in" height="10in" />

\\end{center}

The score should be approximately the same when comparing the trajectory
to itself

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?0.99%20%5Cleqslant%20%5Cmathit%7Bscore%7D%20%5Cleqslant%201)

Metrics which contain some stochasticity (random forest based metrics in
particular), usually do not conform to this rule, even though their
scores are still consistently high.

<p>

<a name = 'fig_equal_identity_plot_datasets'></a>
<img src = ".figures/equal_identity_plot_datasets.png" width = "280" height = "280" />

</p>

<p>

<strong>[**Figure 1**](#fig_equal_identity_plot_datasets): Example
trajectory that was used to assess this rule.</strong>

</p>

-----

<p>

<a name = 'fig_equal_identity_plot_scores'></a>
<img src = ".figures/equal_identity_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 2**](#fig_equal_identity_plot_scores): Score values of
the different metrics across 42 datasets.</strong>

</p>

-----

### Rule 2: Local cell shuffling

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/shuffle_cells_edgewise.png" width="2in" height="10in" />

\\end{center}

Shuffling the positions of cells within each edge should lower the
score. This is equivalent to changing the cellular position locally.

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Metrics which do not look at the cellular positioning, or group the
cells within branches or milestones, do not conform to this rule.

<p>

<a name = 'fig_shuffle_cells_edgewise_plot_datasets'></a>
<img src = ".figures/shuffle_cells_edgewise_plot_datasets.png" width = "560" height = "280" />

</p>

<p>

<strong>[**Figure 3**](#fig_shuffle_cells_edgewise_plot_datasets):
Example dataset before and after perturbation.</strong>

</p>

-----

<p>

<a name = 'fig_shuffle_cells_edgewise_plot_scores'></a>
<img src = ".figures/shuffle_cells_edgewise_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 4**](#fig_shuffle_cells_edgewise_plot_scores):
Differences in scores of 231 datasets before and after perturbation. Red
bar gives the mean.</strong>

</p>

-----

### Rule 3: Edge shuffling

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/shuffle_edges.png" width="2in" height="10in" />

\\end{center}

Shuffling the edges in the milestone network should lower the score.
This is equivalent to changing the cellular positions only globally.

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft\(%20%5Ctextit%7Bshuffled%20edges%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7Bshuffled%20edges%7D%7D%20%5Cright\))

Metrics which only look at the topology do not conform to this rule.

<p>

<a name = 'fig_shuffle_edges_plot_datasets'></a>
<img src = ".figures/shuffle_edges_plot_datasets.png" width = "840" height = "280" />

</p>

<p>

<strong>[**Figure 5**](#fig_shuffle_edges_plot_datasets): Lowly (left),
moderatly (middle) and highly (right) perturbed example
dataset.</strong>

</p>

-----

<p>

<a name = 'fig_shuffle_edges_plot_scores'></a>
<img src = ".figures/shuffle_edges_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 6**](#fig_shuffle_edges_plot_scores): Score values at
different extents of the perturbation across 84 datasets. Red line
denotes the mean values.</strong>

</p>

-----

### Rule 4: Local and global cell shuffling

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/shuffle_cells.png" width="2in" height="10in" />

\\end{center}

Shuffling the positions of cells should lower the score. This is
equivalent to changing the cellular position both locally and globally.

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft\(%20%5Ctextit%7Bshuffled%20cells%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7Bshuffled%20cells%7D%7D%20%5Cright\))

Most metrics that look at the position of each cell conform to this
rule.

<p>

<a name = 'fig_shuffle_cells_plot_datasets'></a>
<img src = ".figures/shuffle_cells_plot_datasets.png" width = "840" height = "280" />

</p>

<p>

<strong>[**Figure 7**](#fig_shuffle_cells_plot_datasets): Lowly (left),
moderatly (middle) and highly (right) perturbed example
dataset.</strong>

</p>

-----

<p>

<a name = 'fig_shuffle_cells_plot_scores'></a>
<img src = ".figures/shuffle_cells_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 8**](#fig_shuffle_cells_plot_scores): Score values at
different extents of the perturbation across 84 datasets. Red line
denotes the mean values.</strong>

</p>

-----

### Rule 5: Changing positions locally and/or globally

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/combined_local_global_position_change.png" width="2in" height="10in" />

\\end{center}

Changing the cellular position locally AND globally should lower the
score more than any of the two individually.

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_a%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_b%20%5Cland%20%5Cmathit%7Bscore%7D_%7Ba%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bb%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D)

Because the topology remains the same, the topology scores do not
conform to this rule. Also the clustering based scores have some
difficulties with this rule.

<p>

<a name = 'fig_combined_local_global_position_change_plot_datasets'></a>
<img src = ".figures/combined_local_global_position_change_plot_datasets.png" width = "840" height = "210" />

</p>

<p>

<strong>[**Figure
9**](#fig_combined_local_global_position_change_plot_datasets): Example
dataset before perturbation (identity), with any of the two
perturbations (a and b) and both perturbations combined (a+b).</strong>

</p>

-----

<p>

<a name = 'fig_combined_local_global_position_change_plot_scores'></a>
<img src = ".figures/combined_local_global_position_change_plot_scores.png" width = "577.5" height = "560" />

</p>

<p>

<strong>[**Figure
10**](#fig_combined_local_global_position_change_plot_scores): Score
values before perturbation (identity), with any of the two perturbations
(a and b) and both perturbations combined (a+b). The upper whisker of
the boxplot extends from the hinge (75% percentile) to the largest
value, no further than 1.5× the IQR from the hinge. The lower whisker
extends from the hinge (25% percentile) to the smallest value, at most
1.5× the IQR of the hinge. We used 84 different datasets.</strong>

</p>

-----

### Rule 6: Cell filtering

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/filter_cells.png" width="2in" height="10in" />

\\end{center}

Removing cells from the trajectory should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft\(%20%5Ctextit%7BFiltered%20cells%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BFiltered%20cells%7D%7D%20%5Cright\))

Metrics which look at the topology do not conform to this rule.

<p>

<a name = 'fig_filter_cells_plot_datasets'></a>
<img src = ".figures/filter_cells_plot_datasets.png" width = "840" height = "280" />

</p>

<p>

<strong>[**Figure 11**](#fig_filter_cells_plot_datasets): Lowly (left),
moderatly (middle) and highly (right) perturbed example
dataset.</strong>

</p>

-----

<p>

<a name = 'fig_filter_cells_plot_scores'></a>
<img src = ".figures/filter_cells_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 12**](#fig_filter_cells_plot_scores): Score values at
different extents of the perturbation across 84 datasets. Red line
denotes the mean values.</strong>

</p>

-----

### Rule 7: Removing divergence regions

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/remove_divergence_regions.png" width="2in" height="10in" />

\\end{center}

Removing divergence regions should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Both
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D)
and ![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7Bedgeflip%7D)
fail here because neither the topology nor the branch assignment
changes. Moreover, the decreases in score are relatively minor for all
metrics, given that the impact of the positions of the cells is only
minimal.

<p>

<a name = 'fig_remove_divergence_regions_plot_datasets'></a>
<img src = ".figures/remove_divergence_regions_plot_datasets.png" width = "560" height = "280" />

</p>

<p>

<strong>[**Figure 13**](#fig_remove_divergence_regions_plot_datasets):
Example dataset before and after perturbation.</strong>

</p>

-----

<p>

<a name = 'fig_remove_divergence_regions_plot_scores'></a>
<img src = ".figures/remove_divergence_regions_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 14**](#fig_remove_divergence_regions_plot_scores):
Differences in scores of 33 datasets before and after perturbation. Red
bar gives the mean.</strong>

</p>

-----

### Rule 8: Move cells to start milestone

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/time_warping_start.png" width="2in" height="10in" />

\\end{center}

Moving the cells closer to their start milestone should lower the score.
Cells were moved closer to the start milestone using
![](https://latex.codecogs.com/gif.latex?%5Ctextit%7Bpercentage%7D_%7B%5Ctextit%7Bnew%7D%7D%20=%20%5Ctextit%7Bpercentage%7D%5E%7B%5Ctextit%7Bwarp%20magnitude%7D%7D)

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft\(%20%5Ctextit%7BWarp%20magnitude%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BWarp%20magnitude%7D%7D%20%5Cright\))

Both
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D)
and topology scores fail here because neither the topology nor the
branch assignment changes. The score decreases only slightly for all the
other metrics, given that only the relative distances change between
cells, but not their actual ordering.

<p>

<a name = 'fig_time_warping_start_plot_datasets'></a>
<img src = ".figures/time_warping_start_plot_datasets.png" width = "840" height = "280" />

</p>

<p>

<strong>[**Figure 15**](#fig_time_warping_start_plot_datasets): Lowly
(left), moderatly (middle) and highly (right) perturbed example
dataset.</strong>

</p>

-----

<p>

<a name = 'fig_time_warping_start_plot_scores'></a>
<img src = ".figures/time_warping_start_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 16**](#fig_time_warping_start_plot_scores): Score
values at different extents of the perturbation across 84 datasets. Red
line denotes the mean values.</strong>

</p>

-----

### Rule 9: Move cells to closest milestone

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/time_warping_parabole.png" width="2in" height="10in" />

\\end{center}

Moving the cells closer to their nearest milestone should lower the
score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft\(%20%5Ctextit%7BWarp%20magnitude%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BWarp%20magnitude%7D%7D%20%5Cright\))

Both
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D)
and topology scores fail here because neither the topology nor the
branch assignment changes. The score decreases only slightly for all the
other metrics, given that only the relative distances change between
cells, but not their actual ordering.

<p>

<a name = 'fig_time_warping_parabole_plot_datasets'></a>
<img src = ".figures/time_warping_parabole_plot_datasets.png" width = "840" height = "280" />

</p>

<p>

<strong>[**Figure 17**](#fig_time_warping_parabole_plot_datasets): Lowly
(left), moderatly (middle) and highly (right) perturbed example
dataset.</strong>

</p>

-----

<p>

<a name = 'fig_time_warping_parabole_plot_scores'></a>
<img src = ".figures/time_warping_parabole_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 18**](#fig_time_warping_parabole_plot_scores): Score
values at different extents of the perturbation across 84 datasets. Red
line denotes the mean values.</strong>

</p>

-----

### Rule 10: Length shuffling

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/shuffle_lengths.png" width="2in" height="10in" />

\\end{center}

Shuffling the lengths of the edges of the milestone network should lower
the score.

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Only the correlation between geodesic distances is consistently
decreases when the lengths of the edges change.

<p>

<a name = 'fig_shuffle_lengths_plot_datasets'></a>
<img src = ".figures/shuffle_lengths_plot_datasets.png" width = "560" height = "280" />

</p>

<p>

<strong>[**Figure 19**](#fig_shuffle_lengths_plot_datasets): Example
dataset before and after perturbation.</strong>

</p>

-----

<p>

<a name = 'fig_shuffle_lengths_plot_scores'></a>
<img src = ".figures/shuffle_lengths_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 20**](#fig_shuffle_lengths_plot_scores): Differences
in scores of 231 datasets before and after perturbation. Red bar gives
the mean.</strong>

</p>

-----

### Rule 11: Cells into small subedges

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/move_cells_subedges.png" width="2in" height="10in" />

\\end{center}

Moving some cells into short subedges should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft\(%20%5Ctextit%7BNumber%20of%20added%20edges%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BNumber%20of%20added%20edges%7D%7D%20%5Cright\))

This rule is primarily captured by the scores looking at the topology
and clustering quality.

<p>

<a name = 'fig_move_cells_subedges_plot_datasets'></a>
<img src = ".figures/move_cells_subedges_plot_datasets.png" width = "840" height = "280" />

</p>

<p>

<strong>[**Figure 21**](#fig_move_cells_subedges_plot_datasets): Lowly
(left), moderatly (middle) and highly (right) perturbed example
dataset.</strong>

</p>

-----

<p>

<a name = 'fig_move_cells_subedges_plot_scores'></a>
<img src = ".figures/move_cells_subedges_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 22**](#fig_move_cells_subedges_plot_scores): Score
values at different extents of the perturbation across 84 datasets. Red
line denotes the mean values.</strong>

</p>

-----

### Rule 12: New leaf edges

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/add_leaf_edges.png" width="2in" height="10in" />

\\end{center}

Adding new edges only connected to one existing milestone should lower
the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft\(%20%5Ctextit%7BNumber%20of%20edges%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BNumber%20of%20edges%7D%7D%20%5Cright\))

As the positions of the cells are not affected, only metrics which
investigate the clustering quality and topology conform to this rule.

<p>

<a name = 'fig_add_leaf_edges_plot_datasets'></a>
<img src = ".figures/add_leaf_edges_plot_datasets.png" width = "840" height = "280" />

</p>

<p>

<strong>[**Figure 23**](#fig_add_leaf_edges_plot_datasets): Lowly
(left), moderatly (middle) and highly (right) perturbed example
dataset.</strong>

</p>

-----

<p>

<a name = 'fig_add_leaf_edges_plot_scores'></a>
<img src = ".figures/add_leaf_edges_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 24**](#fig_add_leaf_edges_plot_scores): Score values
at different extents of the perturbation across 84 datasets. Red line
denotes the mean values.</strong>

</p>

-----

### Rule 13: New connecting edges

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/add_connecting_edges.png" width="2in" height="10in" />

\\end{center}

Adding new edges between existing milestones should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft\(%20%5Ctextit%7BNumber%20of%20edges%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BNumber%20of%20edges%7D%7D%20%5Cright\))

Even though the positions of the cells do not change, the
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bcor%7D_%7B%5Ctextrm%7Bdist%7D%7D)
still conforms to this rule because new edges can create shortcuts which
will affect the geodesic distances between cells. Apart from this,
metrics which investigate the clustering quality and topology also
conform to this rule.

<p>

<a name = 'fig_add_connecting_edges_plot_datasets'></a>
<img src = ".figures/add_connecting_edges_plot_datasets.png" width = "840" height = "280" />

</p>

<p>

<strong>[**Figure 25**](#fig_add_connecting_edges_plot_datasets): Lowly
(left), moderatly (middle) and highly (right) perturbed example
dataset.</strong>

</p>

-----

<p>

<a name = 'fig_add_connecting_edges_plot_scores'></a>
<img src = ".figures/add_connecting_edges_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 26**](#fig_add_connecting_edges_plot_scores): Score
values at different extents of the perturbation across 84 datasets. Red
line denotes the mean values.</strong>

</p>

-----

### Rule 14: Changing topology and cell position

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/combined_position_topology.png" width="2in" height="10in" />

\\end{center}

Changing both the topology and the cell positions should lower the score
more than any of the two individually

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_a%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_b%20%5Cland%20%5Cmathit%7Bscore%7D_%7Ba%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bb%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D)

Most metrics have problems with this rule as they focus on either the
cellular positions or the topology individually. Only the cor\[dist\]
and
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmean%7D_%7B%5Ctextit%7Bgeometric%7D%7D)
consistently conform to this rule.

<p>

<a name = 'fig_combined_position_topology_plot_datasets'></a>
<img src = ".figures/combined_position_topology_plot_datasets.png" width = "840" height = "210" />

</p>

<p>

<strong>[**Figure 27**](#fig_combined_position_topology_plot_datasets):
Example dataset before perturbation (identity), with any of the two
perturbations (a and b) and both perturbations combined (a+b).</strong>

</p>

-----

<p>

<a name = 'fig_combined_position_topology_plot_scores'></a>
<img src = ".figures/combined_position_topology_plot_scores.png" width = "577.5" height = "560" />

</p>

<p>

<strong>[**Figure 28**](#fig_combined_position_topology_plot_scores):
Score values before perturbation (identity), with any of the two
perturbations (a and b) and both perturbations combined (a+b). The upper
whisker of the boxplot extends from the hinge (75% percentile) to the
largest value, no further than 1.5× the IQR from the hinge. The lower
whisker extends from the hinge (25% percentile) to the smallest value,
at most 1.5× the IQR of the hinge. We used 56 different
datasets.</strong>

</p>

-----

### Rule 15: Bifurcation merging

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/merge_bifurcation.png" width="2in" height="10in" />

\\end{center}

Merging the two branches after a bifurcation point should lower the
score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

This changes both the cellular ordering and the topology so most metrics
are affected.

<p>

<a name = 'fig_merge_bifurcation_plot_datasets'></a>
<img src = ".figures/merge_bifurcation_plot_datasets.png" width = "560" height = "280" />

</p>

<p>

<strong>[**Figure 29**](#fig_merge_bifurcation_plot_datasets): Example
dataset before and after perturbation.</strong>

</p>

-----

<p>

<a name = 'fig_merge_bifurcation_plot_scores'></a>
<img src = ".figures/merge_bifurcation_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 30**](#fig_merge_bifurcation_plot_scores): Differences
in scores of 132 datasets before and after perturbation. Red bar gives
the mean.</strong>

</p>

-----

### Rule 16: Bifurcation merging and changing cell positions

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/combined_merge_bifurcation_shuffle_cells.png" width="2in" height="10in" />

\\end{center}

Merging the two branches of a bifurcation and changing the cells
positions should lower the score more than any of the two individually

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_a%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_b%20%5Cland%20%5Cmathit%7Bscore%7D_%7Ba%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bb%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D)

Only metrics which look at the topology do not conform to this
rule.

<p>

<a name = 'fig_combined_merge_bifurcation_shuffle_cells_plot_datasets'></a>
<img src = ".figures/combined_merge_bifurcation_shuffle_cells_plot_datasets.png" width = "840" height = "210" />

</p>

<p>

<strong>[**Figure
31**](#fig_combined_merge_bifurcation_shuffle_cells_plot_datasets):
Example dataset before perturbation (identity), with any of the two
perturbations (a and b) and both perturbations combined
(a+b).</strong>

</p>

-----

<p>

<a name = 'fig_combined_merge_bifurcation_shuffle_cells_plot_scores'></a>
<img src = ".figures/combined_merge_bifurcation_shuffle_cells_plot_scores.png" width = "577.5" height = "560" />

</p>

<p>

<strong>[**Figure
32**](#fig_combined_merge_bifurcation_shuffle_cells_plot_scores): Score
values before perturbation (identity), with any of the two perturbations
(a and b) and both perturbations combined (a+b). The upper whisker of
the boxplot extends from the hinge (75% percentile) to the largest
value, no further than 1.5× the IQR from the hinge. The lower whisker
extends from the hinge (25% percentile) to the smallest value, at most
1.5× the IQR of the hinge. We used 8 different datasets.</strong>

</p>

-----

### Rule 17: Bifurcation concatentation

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/concatenate_bifurcation.png" width="2in" height="10in" />

\\end{center}

Concatenating one branch of a bifurcation to the other bifurcation
branch should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

This changes both the cellular ordering and the topology so most metrics
conform to this rule.

<p>

<a name = 'fig_concatenate_bifurcation_plot_datasets'></a>
<img src = ".figures/concatenate_bifurcation_plot_datasets.png" width = "560" height = "280" />

</p>

<p>

<strong>[**Figure 33**](#fig_concatenate_bifurcation_plot_datasets):
Example dataset before and after perturbation.</strong>

</p>

-----

<p>

<a name = 'fig_concatenate_bifurcation_plot_scores'></a>
<img src = ".figures/concatenate_bifurcation_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 34**](#fig_concatenate_bifurcation_plot_scores):
Differences in scores of 66 datasets before and after perturbation. Red
bar gives the mean.</strong>

</p>

-----

### Rule 18: Cycle breaking

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/break_cycle.png" width="2in" height="10in" />

\\end{center}

Breaking a cyclic trajectory should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Because the actual positions of the cells nor the branch assignment
change, both the MSE metrics and the
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D)
do not conform to this rule.

<p>

<a name = 'fig_break_cycle_plot_datasets'></a>
<img src = ".figures/break_cycle_plot_datasets.png" width = "560" height = "280" />

</p>

<p>

<strong>[**Figure 35**](#fig_break_cycle_plot_datasets): Example dataset
before and after perturbation.</strong>

</p>

-----

<p>

<a name = 'fig_break_cycle_plot_scores'></a>
<img src = ".figures/break_cycle_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 36**](#fig_break_cycle_plot_scores): Differences in
scores of 132 datasets before and after perturbation. Red bar gives the
mean.</strong>

</p>

-----

### Rule 19: Linear joining

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/join_linear.png" width="2in" height="10in" />

\\end{center}

Joining the two ends of a linear trajectory should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Because the positions of the cells can be perfectly predicted, the MSE
metrics do not conform to this rule. Furthermore, because the branch
assignment change stays the same, the
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D)
also does not conform to this rule.

<p>

<a name = 'fig_join_linear_plot_datasets'></a>
<img src = ".figures/join_linear_plot_datasets.png" width = "560" height = "280" />

</p>

<p>

<strong>[**Figure 37**](#fig_join_linear_plot_datasets): Example dataset
before and after perturbation.</strong>

</p>

-----

<p>

<a name = 'fig_join_linear_plot_scores'></a>
<img src = ".figures/join_linear_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 38**](#fig_join_linear_plot_scores): Differences in
scores of 132 datasets before and after perturbation. Red bar gives the
mean.</strong>

</p>

-----

### Rule 20: Linear splitting

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/split_linear.png" width="2in" height="10in" />

\\end{center}

Splitting a linear trajectory into a bifurcation should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Only the MSE metrics do not conform to this rule as the positions of the
cells can be perfectly predicted in the gold standard given the
prediction.

<p>

<a name = 'fig_split_linear_plot_datasets'></a>
<img src = ".figures/split_linear_plot_datasets.png" width = "560" height = "280" />

</p>

<p>

<strong>[**Figure 39**](#fig_split_linear_plot_datasets): Example
dataset before and after perturbation.</strong>

</p>

-----

<p>

<a name = 'fig_split_linear_plot_scores'></a>
<img src = ".figures/split_linear_plot_scores.png" width = "924" height = "280" />

</p>

<p>

<strong>[**Figure 40**](#fig_split_linear_plot_scores): Differences in
scores of 66 datasets before and after perturbation. Red bar gives the
mean.</strong>

</p>

-----

### Rule 21: Change of topology

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/change_topology.png" width="2in" height="10in" />

\\end{center}

Changing the topology of the trajectory should lower the score

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bsame%20topology%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bdifferent%20topology%7D%7D)

Because the positions of the cells can be perfectly predicted, the MSE
metrics do not conform to this rule. Furthermore, because the branch
assignment change stays the same, the
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D)
also does not conform to this rule.

<p>

<a name = 'fig_change_topology_plot_datasets'></a>
<img src = ".figures/change_topology_plot_datasets.png" width = "840" height = "420" />

</p>

<p>

<strong>[**Figure 41**](#fig_change_topology_plot_datasets): The
different trajectory topologies that were used to compare the
metrics.</strong>

</p>

-----

<p>

<a name = 'fig_change_topology_plot_scores'></a>
<img src = ".figures/change_topology_plot_scores.png" width = "1155" height = "735" />

</p>

<p>

<strong>[**Figure 42**](#fig_change_topology_plot_scores): Score values
on different topologies (left).</strong>

</p>

-----

### Rule 22: Cells on milestones vs edges

\\begin{center}
<img src="/home/wouters/thesis/projects/dynverse/dynbenchmark//results/02-metrics/02-metric_conformity/images/cell_gathering.png" width="2in" height="10in" />

\\end{center}

A score should behave similarly both when cells are located on the
milestones (as is the case in real datasets) or on the edges between
milestones (as is the case in synthetic datasets).

A metric conforms to this rule if:
![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bcorr%7D%20%5Cleft\(%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bedges%7D%7D%20,%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bmilestones%7D%7D%20%5Cright\)%20%3E%200.8)

All scores conform to this rule.

<p>

<a name = 'fig_cell_gathering_plot_datasets'></a>
<img src = ".figures/cell_gathering_plot_datasets.png" width = "840" height = "420" />

</p>

<p>

<strong>[**Figure 43**](#fig_cell_gathering_plot_datasets): Example
dataset in which cells are placed on the edges (left) or on the
milestones (right), and with their original positions (top) or shuffled
(bottom).</strong>

</p>

-----

<p>

<a name = 'fig_cell_gathering_plot_scores'></a>
<img src = ".figures/cell_gathering_plot_scores.png" width = "840" height = "630" />

</p>

<p>

<strong>[**Figure 44**](#fig_cell_gathering_plot_scores): Score values
of the same datasets (n = 84) in which cells were put either on the
edges or on the milestones. Shown in the top left is the Spearman rank
correlation.</strong>

</p>

-----
