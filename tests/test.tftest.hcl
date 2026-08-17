run "setup_tests" {
    module {
        source = "./tests/setup"
    }
}

run "create_bucket" {
  command = apply

  variables {
    set_name1 = "${run.setup_tests.prefix1}-test1"
    set_name2 = "${run.setup_tests.prefix2}-test2"
  }

  # Check that the name is correct
  assert {
    condition     = tfe_provider_set.test1.name == "${run.setup_tests.prefix1}-test1"
    error_message = "Invalid name for test1"
  }

  # Check that the name is correct
  assert {
    condition     = tfe_provider_set.test2.name == "${run.setup_tests.prefix2}-test2"
    error_message = "Invalid name for test2"
  }
}