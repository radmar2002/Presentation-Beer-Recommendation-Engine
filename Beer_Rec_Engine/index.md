---
title       : Beer Recommendation Engine
subtitle    : 
author      : Marius Radu
job         : Coursera Learner
framework: revealjs
hitheme : sunburst
revealjs:
  theme: moon
  transition: cube
  center: "true"
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<br>
<br>
<br>
<br>

## Beer Recommendation Engine
#### Coursera Project
<small> Created by Marius Radu / [@radmar2002](https://twitter.com/radmar2002) </small>

---.class #id

## What is about?

1. It's a Toy Application

2. It's a 'micro' engine based on beer characteristics similarities; it contains nice functions but it is not cutting-age recommndation technology

3. It ilustrates the usage of some nice R libraries as: "rgl", "igraph" or "stringdist"

4. It might be fun  :)


--- .class #id 

## Sample Output

As outcome you can see the cluster of similar beers with your favorite one.

![width](clusterExample.png)

--- .class #id 

## Sample Code

One of the key functions from the application




```r
library(stringdist)
beerName <- c("Powder Hound Winter Ale",
              "K-9 Cruiser Winter Ale",
              "Jolly Scot Scottish Ale",               
              "Samuel Adams Scotch Ale",
              "Twisted Kilt Scotch Ale",
              "Highland Scottish Ale")
# we use Optimal String Alignment distance to measure names similarity
D <- stringdistmatrix(beerName, beerName, method=c("osa")) 
D <- as.data.frame(D)
rownames(D) <- beerName
# Similiarity matrix between the names of the beers
D
```

```
##                         V1 V2 V3 V4 V5 V6
## Powder Hound Winter Ale  0 11 17 15 16 17
## K-9 Cruiser Winter Ale  11  0 18 17 17 18
## Jolly Scot Scottish Ale 17 18  0 14 13 10
## Samuel Adams Scotch Ale 15 17 14  0 11 13
## Twisted Kilt Scotch Ale 16 17 13 11  0 14
## Highland Scottish Ale   17 18 10 13 14  0
```

--- .class #id 


## Thank you!

- Want to see the application?

<small>[http://radmar.shinyapps.io/RecommendApp/](http://radmar.shinyapps.io/RecommendApp/)</small>

- Want to see the source?

<small>[https://github.com/radmar2002/Beer-Recommendation-Engine](https://github.com/radmar2002/Beer-Recommendation-Engine)</small>

- Want to write me?

<small>[radu_marius_florin@yahoo.com](radu_marius_florin@yahoo.com)</small>


