
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
