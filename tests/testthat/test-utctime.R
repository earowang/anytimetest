context("test-utctime")

y <- as.POSIXct("2018-10-01 00", tz = "UTC")
z <- as.POSIXct("2018-10-01 01:00", tz = "UTC")

test_that("utctime boost", {
  expect_identical(anytime::utctime("2018-10", tz = "UTC"), y)
  expect_identical(anytime::utctime("2018-10-01", tz = "UTC"), y)
  expect_identical(anytime::utctime("2018-10-01 00", tz = "UTC"), y)
  expect_identical(anytime::utctime("2018-10-01 00:00", tz = "UTC"), y)
  expect_identical(anytime::utctime("2018-10-01 00:00:00", tz = "UTC"), y)
})

test_that("utctime boost2", {
  expect_identical(anytime::utctime("2018-10-01 01", tz = "UTC"), z)
  expect_identical(anytime::utctime("2018-10-01 01:00", tz = "UTC"), z)
  expect_identical(anytime::utctime("2018-10-01 01:00:00", tz = "UTC"), z)
})

test_that("utctime r", {
  expect_identical(anytime::utctime("2018-10-01", tz = "UTC", useR = TRUE), y)
  expect_identical(anytime::utctime("2018-10-01 00", tz = "UTC", useR = TRUE), y)
  expect_identical(anytime::utctime("2018-10-01 00:00", tz = "UTC", useR = TRUE), y)
  expect_identical(anytime::utctime("2018-10-01 00:00:00", tz = "UTC", useR = TRUE), y)
})
