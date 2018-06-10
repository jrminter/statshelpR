context("test_binomcdf")

test_that("binomcdf works", {
  inp <- binomcdf(5, 13.0/52.0, 1)
  out <- 0.6328125
  expect_equal(inp, out)
  inp <- binomcdf(5, 13.0/52.0, 0)
  out <-  0.2373047
  expect_equal(inp, out)
})
