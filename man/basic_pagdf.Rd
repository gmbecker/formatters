% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pagination.R
\name{basic_pagdf}
\alias{basic_pagdf}
\title{Basic/spoof pagination info data frame}
\usage{
basic_pagdf(
  rnames,
  labs = rnames,
  rnums = seq_along(rnames),
  extents = 1L,
  rclass = "DataRow",
  parent_path = NULL,
  paths = lapply(rnames, function(x) c(parent_path, x))
)
}
\arguments{
\item{rnames}{(\code{character})\cr vector of row names.}

\item{labs}{(\code{character})\cr vector of row labels. Defaults to \code{rnames}.}

\item{rnums}{(\code{integer})\cr vector of row numbers. Defaults to \code{seq_along(rnames)}.}

\item{extents}{(\code{integer})\cr number of lines each row requires to print. Defaults to 1 for all rows.}

\item{rclass}{(\code{character})\cr class(es) for the rows. Defaults to \code{"DataRow"}.}

\item{parent_path}{(\code{string})\cr parent path that all rows should be "children of".
Defaults to \code{NULL}, as usually this is not needed. It may be necessary to use \code{"root"},
for some specific scenarios.}

\item{paths}{(\code{list})\cr list of paths to the rows. Defaults to \code{lapply(rnames, function(x) c(parent_path, x))}.}
}
\value{
A \code{data.frame} suitable for use in both the \code{MatrixPrintForm} constructor and the pagination machinery.
}
\description{
Returns a minimal pagination info \code{data.frame} (with no info on siblings, footnotes, etc.).
}
\examples{
basic_pagdf(c("hi", "there"))

}
