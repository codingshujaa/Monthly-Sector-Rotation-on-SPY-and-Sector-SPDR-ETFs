report_path <- "deliverables/sector rotation project.qmd"

status <- system2(
  "quarto",
  c("render", report_path, "--to", "html")
)

if (!identical(status, 0L)) {
  stop("Render failed.")
}

cat("Render finished for:", report_path, "\n")
