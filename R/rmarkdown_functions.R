#' Draft a LCS slide presentation
#' @description Drafts a new LCS rmarkdown slide presentation
#' @param file File name for the draft
#' @examples
#' lcs_draft_slides("mySlides.Rmd")
#' @export
lcs_draft_slides <- function(file) {
  if(dirname(file) == ".") { #If path wasn't provided, place assume the working directory is the base dir and create subdir for markdown file.
    message("Directory not provided. Using working directory.")
    file <- file.path(getwd(), file)
  }

  if(tools::file_ext(file) != "Rmd") { #Fix the capitalization of Rmd
    message("Setting file extension to .Rmd")
    file <- paste0(tools::file_path_sans_ext(file), ".Rmd")
  }

  rmarkdown::draft(file = file,
                   template = "lcs_slides",
                   package = "statshelpR",
                   edit = F)

  file.edit(file.path(tools::file_path_sans_ext(file), basename(file)))
}

