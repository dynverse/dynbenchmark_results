
# Quick testing of methods using small datasets

We test the methods on:

  - A specific example dataset specifically created for this method. The
    code to generate this dataset is included in the repository of each
    method, for example:
    <https://github.com/dynverse/ti_scorpius/blob/master/example.R>.
    This dataset is also used in the continuous integration of the
    method, for example: <https://travis-ci.org/dynverse/ti_paga>.
  - Two real and two synthetic datasets, which all clearly contain a
    trajectory on a dimensionality reduction.

Only methods which do not fail on at least one dataset will be used in
subsequent evaluations.

<p>

<a name = 'fig_method_testing_figure'></a>
<img src = ".figures/method_testing_figure.png" width = "420" height = "1400" />

</p>

<p>

<strong>[**Figure 1**](#fig_method_testing_figure): Execution status of
each of the TI methods on a small set of real and toy datasets.</strong>

</p>

-----
