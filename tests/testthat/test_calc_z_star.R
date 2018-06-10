context("test_calc_z_star")

test_that("calc_z_star works", {
  inp <- calc_z_star(0.95)
  out <- 1.959964
  expect_equal(inp, out)
})
