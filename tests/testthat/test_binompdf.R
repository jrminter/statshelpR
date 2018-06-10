context("test_binompdf")

test_that("binompdf works", {
  inp <- binompdf(5, 13.0/52.0, 0)
  out <- 0.2373047
  expect_equal(inp, out)
  inp <- binompdf(5, 13.0/52.0, 5)
  out <- 0.0009765625
  expect_equal(inp, out)
})
