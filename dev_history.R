usethis::use_build_ignore("dev_history.R")

usethis::use_gpl_license()

usethis::use_git()

usethis::use_github_action_check_standard()

usethis::use_vignette()
usethis::use_r("doc_my_dataset.R")

usethis::use_data_raw("my_dataset")

attachment::att_amend_desc()
devtools::check()
devtools::build()
head(my_dataset)
