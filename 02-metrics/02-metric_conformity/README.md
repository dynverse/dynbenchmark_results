
# Metric conformity

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

### Same score on identity

The score should be approximately the same when comparing the trajectory to itself

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?1%20%5Cleqslant%20%5Cmathit%7Bscore%7D%20%5Cleqslant%200.99)

Metrics which contain some stochasticity (random forest based metrics in particular), usually do not conform to this rule, even though their scores are still consistently high.

<p>
<a name = 'fig_equal_identity_plot_datasets'></a> <img src = ".figures/equal_identity_plot_datasets.png" width = "280" height = "280" />
</p>
<p>
<strong>Figure 1: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_equal_identity_plot_scores'></a> <img src = ".figures/equal_identity_plot_scores.png" width = "420" height = "280" />
</p>
<p>
<strong>Figure 2: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Local cell shuffling

Shuffling the positions of cells within each edge should lower the score. This is equivalent to changing the cellular position locally.

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Metrics which do not look at the cellular positioning, or group the cells within branches or milestones, do not conform to this rule.

<p>
<a name = 'fig_shuffle_cells_edgewise_plot_datasets'></a> <img src = ".figures/shuffle_cells_edgewise_plot_datasets.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 3: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_shuffle_cells_edgewise_plot_scores'></a> <img src = ".figures/shuffle_cells_edgewise_plot_scores.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 4: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Edge shuffling

Shuffling the edges in the milestone network should lower the score. This is equivalent to changing the cellular positions only globally.

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft(%20%5Ctextit%7Bshuffled%20edges%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7Bshuffled%20edges%7D%7D%20%5Cright))

Only metrics which only look at the topology do not conform to this rule.

<p>
<a name = 'fig_shuffle_edges_plot_datasets'></a> <img src = ".figures/shuffle_edges_plot_datasets.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 5: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_shuffle_edges_plot_scores'></a> <img src = ".figures/shuffle_edges_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 6: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Local and global cell shuffling

Shuffling the positions of cells should lower the score. This is equivalent to changing the cellular position both locally and globally.

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft(%20%5Ctextit%7Bshuffled%20cells%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7Bshuffled%20cells%7D%7D%20%5Cright))

Most metrics that look at the position of each cell conform to this rule.

<p>
<a name = 'fig_shuffle_cells_plot_datasets'></a> <img src = ".figures/shuffle_cells_plot_datasets.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 7: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_shuffle_cells_plot_scores'></a> <img src = ".figures/shuffle_cells_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 8: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Changing positions locally and/or globally

Changing the cellular position locally AND globally should lower the score more than any of the two individually.

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_a%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_b%20%5Cland%20%5Cmathit%7Bscore%7D_%7Ba%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bb%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D)

Most metrics that look at the position of each cell conform to this rule.

<p>
<a name = 'fig_combined_local_global_position_change_plot_datasets'></a> <img src = ".figures/combined_local_global_position_change_plot_datasets.png" width = "840" height = "210" />
</p>
<p>
<strong>Figure 9: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_combined_local_global_position_change_plot_scores'></a> <img src = ".figures/combined_local_global_position_change_plot_scores.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 10: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Cell filtering

Removing cells from the trajectory should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft(%20%5Ctextit%7BFiltered%20cells%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BFiltered%20cells%7D%7D%20%5Cright))

Only metrics which look only at the topology do not conform to this rule.

<p>
<a name = 'fig_filter_cells_plot_datasets'></a> <img src = ".figures/filter_cells_plot_datasets.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 11: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_filter_cells_plot_scores'></a> <img src = ".figures/filter_cells_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 12: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Removing divergence regions

Removing divergence regions should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Both ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D) and ![](https://latex.codecogs.com/gif.latex?Edgeflip) fail here because neither the topology nor the branche assignment changes.

<p>
<a name = 'fig_remove_divergence_regions_plot_datasets'></a> <img src = ".figures/remove_divergence_regions_plot_datasets.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 13: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_remove_divergence_regions_plot_scores'></a> <img src = ".figures/remove_divergence_regions_plot_scores.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 14: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Move cells to start milestone

Moving the cells closer to their start milestone should lower the score. Cells were moved closer to the start milestone by doing $^{}

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft(%20%5Ctextit%7BWarp%20magnitude%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BWarp%20magnitude%7D%7D%20%5Cright))

Both ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D) and ![](https://latex.codecogs.com/gif.latex?Edgeflip) fail here because neither the topology nor the branche assignment changes.

<p>
<a name = 'fig_time_warping_start_plot_datasets'></a> <img src = ".figures/time_warping_start_plot_datasets.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 15: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_time_warping_start_plot_scores'></a> <img src = ".figures/time_warping_start_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 16: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Move cells to closest milestone

Moving the cells closer to their nearest milestone should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft(%20%5Ctextit%7BWarp%20magnitude%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BWarp%20magnitude%7D%7D%20%5Cright))

Both ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D) and ![](https://latex.codecogs.com/gif.latex?Edgeflip) fail here because neither the topology nor the branche assignment changes.

<p>
<a name = 'fig_time_warping_parabole_plot_datasets'></a> <img src = ".figures/time_warping_parabole_plot_datasets.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 17: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_time_warping_parabole_plot_scores'></a> <img src = ".figures/time_warping_parabole_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 18: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Length shuffling

Shuffling the lengths of the edges of the milestone network should lower the score.

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Only the correlation scores is consequently decreased when the lengths of the edges change.

<p>
<a name = 'fig_shuffle_lengths_plot_datasets'></a> <img src = ".figures/shuffle_lengths_plot_datasets.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 19: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_shuffle_lengths_plot_scores'></a> <img src = ".figures/shuffle_lengths_plot_scores.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 20: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Cells into small subedges

Moving some cells into short subedges should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft(%20%5Ctextit%7BNumber%20of%20added%20edges%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BNumber%20of%20added%20edges%7D%7D%20%5Cright))

This rule is primarily captured by the scores looking at the topology and clustering quality.

<p>
<a name = 'fig_move_cells_subedges_plot_datasets'></a> <img src = ".figures/move_cells_subedges_plot_datasets.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 21: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_move_cells_subedges_plot_scores'></a> <img src = ".figures/move_cells_subedges_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 22: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### New leaf edges

Adding new edges only connected to one existing milestone should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft(%20%5Ctextit%7BNumber%20of%20edges%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BNumber%20of%20edges%7D%7D%20%5Cright))

As the positions of the cells are not affected, only metrics which investigate the clustering quality and topology conform to this rule.

<p>
<a name = 'fig_add_leaf_edges_plot_datasets'></a> <img src = ".figures/add_leaf_edges_plot_datasets.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 23: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_add_leaf_edges_plot_scores'></a> <img src = ".figures/add_leaf_edges_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 24: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### New connecting edges

Adding new edges between existing milestones should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bmonotonic%7D%20%5Cleft(%20%5Ctextit%7BNumber%20of%20edges%7D,%20%5Coverline%7B%5Cmathit%7Bscore%7D%7D_%7B%5Ctextit%7BNumber%20of%20edges%7D%7D%20%5Cright))

Even though the positions of the cells change, the ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bcor%7D_%7B%5Ctextrm%7Bdist%7D%7D) still conforms to this rule because new edges can create shortcuts which will affect the geodesic distances between cells. Apart from this, metrics which investigate the clustering quality and topology also conform to this rule.

<p>
<a name = 'fig_add_connecting_edges_plot_datasets'></a> <img src = ".figures/add_connecting_edges_plot_datasets.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 25: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_add_connecting_edges_plot_scores'></a> <img src = ".figures/add_connecting_edges_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 26: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Changing topology and cell position

Changing both the topology and the cell positions should lower the score more than any of the two individually

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_a%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_b%20%5Cland%20%5Cmathit%7Bscore%7D_%7Ba%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bb%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D)

Most metrics have problems with this rule as they focus on either the cellular positions or the topology individually. Only the {label\_metric('featureimp\_cor', 'latex')} and the {label\_metric('harm\_mean', 'latex')} conform to this rule.

<p>
<a name = 'fig_combined_position_topology_plot_datasets'></a> <img src = ".figures/combined_position_topology_plot_datasets.png" width = "840" height = "210" />
</p>
<p>
<strong>Figure 27: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_combined_position_topology_plot_scores'></a> <img src = ".figures/combined_position_topology_plot_scores.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 28: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Bifurcation merging

Merging the two branches after a bifurcation point should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

This changes both the cellular ordering and the topology so most metrics are affected.

<p>
<a name = 'fig_merge_bifurcation_plot_datasets'></a> <img src = ".figures/merge_bifurcation_plot_datasets.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 29: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_merge_bifurcation_plot_scores'></a> <img src = ".figures/merge_bifurcation_plot_scores.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 30: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Bifurcation merging and changing cell positions

Merging the two branches of a bifurcation and changing the cells positions should lower the score more than any of the two individually

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_a%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bidentity%7D%20%3E%20%5Cmathit%7Bscore%7D_b%20%5Cland%20%5Cmathit%7Bscore%7D_%7Ba%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D%20%5Cland%20%5Cmathit%7Bscore%7D_%7Bb%7D%20%3E%20%5Cmathit%7Bscore%7D_%7Ba+b%7D)

Only metrics which look uniquely at the topology do not conform to this rule.

<p>
<a name = 'fig_combined_merge_bifurcation_shuffle_cells_plot_datasets'></a> <img src = ".figures/combined_merge_bifurcation_shuffle_cells_plot_datasets.png" width = "840" height = "210" />
</p>
<p>
<strong>Figure 31: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_combined_merge_bifurcation_shuffle_cells_plot_scores'></a> <img src = ".figures/combined_merge_bifurcation_shuffle_cells_plot_scores.png" width = "840" height = "280" />
</p>
<p>
<strong>Figure 32: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Bifurcation concatentation

Concatenating one branch of a bifurcation to the other bifurcation branch should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

This changes both the cellular ordering and the topology so most metrics conform to this rule.

<p>
<a name = 'fig_concatenate_bifurcation_plot_datasets'></a> <img src = ".figures/concatenate_bifurcation_plot_datasets.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 33: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_concatenate_bifurcation_plot_scores'></a> <img src = ".figures/concatenate_bifurcation_plot_scores.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 34: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Cycle breaking

Breaking a cyclic trajectory should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Because the actual positions of the cells nor the branch assignment change, both the MSE metrics and the ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D) do not conform to this rule.

<p>
<a name = 'fig_break_cycle_plot_datasets'></a> <img src = ".figures/break_cycle_plot_datasets.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 35: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_break_cycle_plot_scores'></a> <img src = ".figures/break_cycle_plot_scores.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 36: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Linear joining

Joining the two ends of a linear trajectory should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Because the positions of the cells can be perfectly predicted, the MSE metrics do not conform to this rule. Furthermore, because the branch assignment change stays the same, the ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D) also does not conform to this rule.

<p>
<a name = 'fig_join_linear_plot_datasets'></a> <img src = ".figures/join_linear_plot_datasets.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 37: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_join_linear_plot_scores'></a> <img src = ".figures/join_linear_plot_scores.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 38: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Linear splitting

Splitting a linear trajectory into a bifurcation should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bidentity%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bprediction%7D%7D)

Only the MSE metrics do not conform to this rule as the positions of the cells can be perfectly predicted in the gold standard given the prediction.

<p>
<a name = 'fig_split_linear_plot_datasets'></a> <img src = ".figures/split_linear_plot_datasets.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 39: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_split_linear_plot_scores'></a> <img src = ".figures/split_linear_plot_scores.png" width = "560" height = "280" />
</p>
<p>
<strong>Figure 40: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Change of topology

Changing the topology of the trajectory should lower the score

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bsame%20topology%7D%7D%20%3E%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bdifferent%20topology%7D%7D)

Because the positions of the cells can be perfectly predicted, the MSE metrics do not conform to this rule. Furthermore, because the branch assignment change stays the same, the ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D) also does not conform to this rule.

<p>
<a name = 'fig_change_topology_plot_datasets'></a> <img src = ".figures/change_topology_plot_datasets.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 41: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_change_topology_plot_scores'></a> <img src = ".figures/change_topology_plot_scores.png" width = "840" height = "735" />
</p>
<p>
<strong>Figure 42: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

### Cells on milestones vs edges

A score should behave similarly both when cells are located on the milestones (as is the case in real datasets) or on the edges between milestones (as is the case in synthetic datasets).

A metric conforms to this rule if: ![](https://latex.codecogs.com/gif.latex?%5Cmathit%7Bcorr%7D%20%5Cleft(%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bedges%7D%7D%20,%20%5Cmathit%7Bscore%7D_%7B%5Ctextit%7Bmilestones%7D%7D%20%5Cright)%20%3E%200.9)

All scores conform to this rule.

<p>
<a name = 'fig_cell_gathering_plot_datasets'></a> <img src = ".figures/cell_gathering_plot_datasets.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 43: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------

<p>
<a name = 'fig_cell_gathering_plot_scores'></a> <img src = ".figures/cell_gathering_plot_scores.png" width = "840" height = "420" />
</p>
<p>
<strong>Figure 44: Example dataset(s) for this rule</strong>
</p>

------------------------------------------------------------------------
