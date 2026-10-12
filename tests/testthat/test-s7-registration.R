test_that("project constructors accept optional FIM properties", {
  project <- PFIMProject(name = "example")
  expect_null(project@fim)

  evaluation <- Evaluation(name = "example")
  expect_s7_class(evaluation@fim, PopulationFim)
  expect_s7_class(Evaluation(name = "example", fim = Fim())@fim, Fim)
})
