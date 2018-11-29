context("test-utctime")

y <- as.POSIXct("2018-10-01 00", tz = "UTC")

test_that("utctime2", {
  expect_identical(anytime::utctime("2018-10", tz = "UTC"), y)
  expect_identical(anytime::utctime("2018-10-01", tz = "UTC"), y)
  expect_identical(anytime::utctime("2018-10-01 00", tz = "UTC"), y)
  expect_identical(anytime::utctime("2018-10-01 00:00", tz = "UTC"), y)
  expect_identical(anytime::utctime("2018-10-01 00:00:00", tz = "UTC"), y)
})
