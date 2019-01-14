# Percentile operator

##### Description
`percentile` operator returns the percentile of a set of data points.

##### Usage

Input projection|.
---|---
`y-axis`        | numeric, input data, per cell

Input parameters|.
---|---
`percentile` | numeric, the percentile to use, default is 0.01, 1% percentile

Output relations|.
---|---
`percentile`    | numeric, percentile of the input data

##### Details
The operator takes all the values of a cell and returns the precentile value. The computation is done per cell. There is one value returned for each of the input cell.

#### References


##### See Also

[product_operator](https://github.com/tercen/max_operator), [sum_operator](https://github.com/tercen/min_operator)


#### Examples
