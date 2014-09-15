## @knitr p1

n = 100
x = 1:n
y = x + runif(n)

## @knitr p2

plot(x, y)
plot(x, log(y))

## @knitr p3

too_many_na = function(df, threshold, axis) {
    na_prop  = apply(is.na(df), axis, mean)
    indices = unname(which(na_prop > threshold))
    return(indices)
}


## @knitr session
print(sessionInfo(), locale=FALSE)
