
# Testing trajectory inference methods

<a name = 'table_methodtestingtable'></a>

| method\_id           | real/developing-dendritic-cells\_schlitzer | real/fibroblast-reprogramming\_treutlein | specific\_example  | toy/bifurcating    | toy/linear         |
| :------------------- | :----------------------------------------- | :--------------------------------------- | :----------------- | :----------------- | :----------------- |
| angle                | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✖ low\_correlation | ✔ no\_error        |
| calista              | ✖ time\_limit                              | ✖ time\_limit                            | ✖ low\_correlation | ✖ low\_correlation | ✖ low\_correlation |
| cellrouter           | ✖ low\_correlation                         | ✖ low\_correlation                       | ✔ no\_error        | ✖ low\_correlation | ✖ low\_correlation |
| celltrails           | ✔ no\_error                                | ✖ method\_error                          | ✖ low\_correlation | ✖ method\_error    | ✖ method\_error    |
| celltree\_gibbs      | ✖ time\_limit                              | ✖ time\_limit                            | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| celltree\_maptpx     | ✖ low\_correlation                         | ✖ time\_limit                            | ✖ low\_correlation | ✖ low\_correlation | ✖ low\_correlation |
| celltree\_vem        | ✖ low\_correlation                         | ✖ low\_correlation                       | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| comp1                | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| dpt                  | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| elpicycle            | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✖ low\_correlation | ✔ no\_error        |
| elpigraph            | ✖ low\_correlation                         | ✔ no\_error                              | ✖ low\_correlation | ✔ no\_error        | ✔ no\_error        |
| elpilinear           | ✔ no\_error                                | ✖ low\_correlation                       | ✔ no\_error        | ✖ low\_correlation | ✖ low\_correlation |
| embeddr              | ✔ no\_error                                | ✔ no\_error                              | ✖ low\_correlation | ✔ no\_error        | ✔ no\_error        |
| error                | ✖ method\_error                            | ✖ method\_error                          | ✖ method\_error    | ✖ method\_error    | ✖ method\_error    |
| fateid               | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| forks                | ✖ method\_error                            | ✖ low\_correlation                       | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| gpfates              | ✖ low\_correlation                         | ✖ low\_correlation                       | ✔ no\_error        | ✔ no\_error        | ✖ low\_correlation |
| grandprix            | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| identity             | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| matcher              | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| merlot               | ✖ method\_error                            | ✖ method\_error                          | ✖ low\_correlation | ✖ method\_error    | ✖ method\_error    |
| mfa                  | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| monocle\_ddrtree     | ✔ no\_error                                | ✖ low\_correlation                       | ✔ no\_error        | ✖ method\_error    | ✖ method\_error    |
| monocle\_ica         | ✔ no\_error                                | ✖ low\_correlation                       | ✖ low\_correlation | ✖ method\_error    | ✖ method\_error    |
| mpath                | ✖ low\_correlation                         | ✖ low\_correlation                       | ✖ low\_correlation | ✖ low\_correlation | ✖ low\_correlation |
| ouija                | ✖ time\_limit                              | ✖ time\_limit                            | ✖ low\_correlation | ✔ no\_error        | ✔ no\_error        |
| ouijaflow            | ✔ no\_error                                | ✖ method\_error                          | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| paga                 | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| pcreode              | ✔ no\_error                                | ✖ low\_correlation                       | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| periodpc             | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✖ low\_correlation | ✔ no\_error        |
| phenopath            | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| projected\_dpt       | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✖ low\_correlation |
| projected\_gng       | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| projected\_monocle   | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✖ method\_error    | ✖ method\_error    |
| projected\_paga      | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✖ low\_correlation | ✖ low\_correlation |
| projected\_slingshot | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| projected\_tscan     | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| pseudogp             | ✖ time\_limit                              | ✖ time\_limit                            | ✔ no\_error        | ✔ no\_error        | ✖ low\_correlation |
| raceid\_stemid       | ✖ low\_correlation                         | ✔ no\_error                              | ✖ low\_correlation | ✔ no\_error        | ✔ no\_error        |
| random               | ✖ low\_correlation                         | ✖ low\_correlation                       | ✖ low\_correlation | ✖ low\_correlation | ✖ low\_correlation |
| recat                | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✖ low\_correlation | ✔ no\_error        |
| scimitar             | ✖ memory\_limit                            | ✖ time\_limit                            | ✔ no\_error        | ✖ low\_correlation | ✔ no\_error        |
| scorpius             | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| scoup                | ✖ method\_error                            | ✖ time\_limit                            | ✔ no\_error        | ✖ low\_correlation | ✔ no\_error        |
| scuba                | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| shuffle              | ✖ low\_correlation                         | ✖ low\_correlation                       | ✖ low\_correlation | ✖ low\_correlation | ✖ low\_correlation |
| sincell              | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✖ low\_correlation | ✔ no\_error        |
| slice                | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| slicer               | ✖ low\_correlation                         | ✖ low\_correlation                       | ✖ low\_correlation | ✖ low\_correlation | ✖ low\_correlation |
| slingshot            | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| stemnet              | ✔ no\_error                                | ✖ low\_correlation                       | ✔ no\_error        | ✔ no\_error        | ✖ low\_correlation |
| topslam              | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✖ low\_correlation | ✔ no\_error        |
| tscan                | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| urd                  | ✖ low\_correlation                         | ✔ no\_error                              | ✖ low\_correlation | ✖ method\_error    | ✖ method\_error    |
| wanderlust           | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| waterfall            | ✔ no\_error                                | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |
| wishbone             | ✖ low\_correlation                         | ✔ no\_error                              | ✔ no\_error        | ✔ no\_error        | ✔ no\_error        |

**Table 1: Status table for the different TI methods.**
