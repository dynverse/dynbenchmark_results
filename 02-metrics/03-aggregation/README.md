
# Score aggregation

To rank the methods, we need to aggregate on two levels: across
**datasets** and across specific/application metrics to calculate an
**overall metric**.

## Aggregating over datasets

When combining different datasets, it is important that the biases in
the datasets does not influence the overall score. In our study, we
define three such biases, although there are potentially many more:

  - **Difficulty of the datasets**: Some datasets are more difficult
    than others. This can have various reasons, such as the complexity
    of the topology, the amount of biological and technical noise, or
    the dimensions of the data. It is important that a small increase in
    performance on a more difficult dataset has an equal impact on the
    final score as a large increase in performance on easier datasets.
  - **Dataset sources**: It is much easier to generate synthetic
    datasets than real datasets, and this bias is reflected in our set
    of datasets. However, given their higher biological relevance, real
    datasets should be given at least equal importance than synthetic
    datasets.
  - **Trajectory types**: There are many more linear and disconnected
    real datasets, and only a limited number of tree or graph datasets.
    This imbalance is there because historically most datasets have been
    linear datasets, and because it is easy to create disconnected
    datasets by combining different datasets. However, this imbalance in
    trajectory types does not necessarily reflect the general importance
    of that trajectory type.

We designed an aggregation scheme which tries to prevent these biases
from influencing the ranking of the methods.

The difficulty of a dataset can easily have an impact on how much weight
the dataset gets in an overall ranking. We illustrate this with a simple
example in [**Figure S1**](#fig_normalisation_reasoning). One method
consistently performs well on both the easy and the difficult datasets.
But because the differences are small in the difficult datasets, the
mean would not give this method a high score. Meanwhile, a variable
method which does not perform well on the difficult dataset gets the
highest score, because it scored so high on the easier dataset.

To avoid this bias, we normalise the scores of each dataset by first
scaling and centering to
![](https://latex.codecogs.com/gif.latex?%5Cmu%20=%200) and
![](https://latex.codecogs.com/gif.latex?%5Csigma%20=%201), and then
moving the score values back to
![](https://latex.codecogs.com/gif.latex?%5B0,%201%5D) by applying the
unit normal density distribution function. This results in scores which
are comparable across different datasets ([**Figure
S1**](#fig_normalisation_reasoning)). In contrast to other possible
normalisation techniques, this will still retain some information on the
relative difference between the scores, which would have been lost when
using the ranks for normalisation. An example of this normalisation,
which will also be used in the subsequent aggregation steps, can be seen
in [**Figure S2**](#fig_normalisation_example).

<p>

<a name = 'fig_normalisation_reasoning'></a>
<img src = "normalisation_reasoning.png" width = "490" height = "280" />

</p>

<p>

<strong>[**Figure S1**](#fig_normalisation_reasoning): An illustration
of how the difficulty of a dataset can influence the overall
ranking.</strong> A decent method, which consistently ranks high on an
easy and difficult dataset, does not get a high score when averaging. On
the other hand, a method which ranks high on the easy dataset, but very
low on the difficult dataset does get a high score on average. After
normalising the scores (right), this problem dissapears.

</p>

-----

<p>

<a name = 'fig_normalisation_example'></a>
<img src = "normalisation_example.png" width = "840" height = "350" />

</p>

<p>

<strong>[**Figure S2**](#fig_normalisation_example): An example of the
normalisation procedure.</strong> Shown are some results of a
benchmarking procedure, where every row contains the scores of a
particular method (red shading) on a particular dataset (blue shading),
with a trajectory type (green shading) and dataset source (orange
shading). In this example, we first split the datasets

</p>

-----

After normalisation, we aggregate step by step the scores from different
datasets. We first aggregate the datasets with the same dataset source
and trajectory type using an arithmetic mean of their scores [**Figure
S3a**](#fig_aggregation_example). Next, the scores are averaged over
different dataset sources, using a arithmetic mean which was weighted
based on how much the synthetic and silver scores correlated with the
real gold scores [**Figure S3b**](#fig_aggregation_example). Finally,
the scores are aggregated over the different trajectory types again
using a arithmetic mean [**Figure S3c**](#fig_aggregation_example).

<p>

<a name = 'fig_aggregation_example'></a>
<img src = "aggregation_example.png" width = "840" height = "1400" />

</p>

<p>

<strong>[**Figure S3**](#fig_aggregation_example): An example of the
aggregation procedure.</strong> In consecutive steps we aggregated
across (a) different datasets with the same source and trajectory type,
(b) different dataset sources with the same trajectory type (weighted
for the correlation of the dataset source with the real gold dataset
source) and (c) all trajectory types.

</p>

-----

## Overall metrics

Undoubtedly, a single optimal overall metric does not exist for
trajectories, as different users may have different priorities:

  - A user may be primarily interested in defining the correct topology,
    and only use the cellular ordering when the topology is correct
  - A user may be less interested in how the cells are ordered within a
    branch, but primarily in which cells are in which branches
  - A user may already know the topology, and may be primarily
    interested in finding good features related to a particular
    branching point
  - …

Each of these scenarios would require a combinations of *specific* and
*application* metrics with different weights. To provide an “overall”
ranking of the metrics, which is impartial for the scenarios described
above, we therefore chose a metric which weighs every aspect of the
trajectory equally:

  - Its **ordering**, using the cor<sub>dist</sub>
  - Its **branch assignment**, using the F1<sub>branches</sub>
  - Its **topology**, using the HIM
  - The accuracy of **differentially expressed features**, using the
    wcor<sub>features</sub>

Next, we considered three different ways of averaging different scores:
the arithmetic mean, geometric mean and harmonic mean. Each of these
types of mean have different use cases. The harmonic mean is most
appropriate when the scores would all have a common denominator (as is
the case for the
![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRecovery%7D) and
![](https://latex.codecogs.com/gif.latex?%5Ctextrm%7BRelevance%7D)
described earlier). The arithmetic mean would be most appropriate when
all the metrics have the same range. For our use case, the geometric
mean is the most appropriate, because it is low if one of the values is
low. For example, this means that if a method is not good at inferring
the correct topology, it will get a low overall score, even if it
performs better at all other scores. This ensures that a high score will
only be reached if a prediction has a good ordering, branch assignment,
topology, and set of differentially expressed features.

The final overall score ([**Figure S4**](#fig_averaging_example)) for a
method was thus defined
as:

![](https://latex.codecogs.com/gif.latex?%5Ctextit%7BOverall%7D%20=%20%5Cmathit%7Bmean%7D_%7B%5Ctextit%7Bgeometric%7D%7D%20=%20%5Csqrt%5B4%5D%7B%5Cmathit%7Bcor%7D_%7B%5Ctextrm%7Bdist%7D%7D%20%5Ctimes%20%5Ctextrm%7BHIM%7D%20%5Ctimes%20%5Cmathit%7Bwcor%7D_%7B%5Ctextrm%7Bfeatures%7D%7D%20%5Ctimes%20%5Cmathit%7BF1%7D_%7B%5Ctextit%7Bbranches%7D%7D%7D)

<p>

<a name = 'fig_averaging_example'></a>
<img src = "averaging_example.png" width = "840" height = "350" />

</p>

<p>

<strong>[**Figure S4**](#fig_averaging_example): An example of the
averaging procedure.</strong> For each method, we calculated the
geometric mean between its normalised and aggregated scores

</p>

-----

We do however want to stress that different use cases will require a
different overall score to order the methods. Such a context-dependent
ranking of all methods is provided through the dynguidelines app
([guidelines.dynverse.org](guidelines.dynverse.org)).
