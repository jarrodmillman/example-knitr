options(device=pdf)
source("example.r")

test_that("x and y are set correctly", {
    expect_that(length(x), equals(100))
    expect_that(length(y), equals(100))
})

test_that("too_many_na works correctly", {
   testdf1 = data.frame(1:4, c(NA,1,2,3))
   expect_that(too_many_na(testdf1, 0, 1), equals(1))
   expect_that(too_many_na(testdf1, 0, 2), equals(2))
   expect_that(length(too_many_na(testdf1, 0.6, 1)), equals(0))
   expect_that(too_many_na(), equals(0))
})


