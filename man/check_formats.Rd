% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format_value.R
\name{check_formats}
\alias{check_formats}
\alias{is_valid_format}
\alias{check_aligns}
\title{Check if a format or alignment is supported}
\usage{
is_valid_format(x, stop_otherwise = FALSE)

check_aligns(algn)
}
\arguments{
\item{x}{(\code{string} or \code{function})\cr format string or an object returned by \code{\link[=sprintf_format]{sprintf_format()}}}

\item{stop_otherwise}{(\code{flag})\cr whether an error should be thrown if \code{x} is not a valid format.}

\item{algn}{(\code{character})\cr a character vector that indicates the requested cell alignments.}
}
\value{
\itemize{
\item \code{is_valid_format} returns \code{TRUE} if \code{x} is \code{NULL}, a supported format string, or a function, and
\code{FALSE} otherwise.
}

\itemize{
\item \code{check_aligns} returns \code{TRUE} if the provided alignments are supported, otherwise, an error is thrown.
}
}
\description{
Utility functions for checking formats and alignments.
}
\note{
If \code{x} is a function, no check is performed to verify that it returns a valid format.
}
\examples{
is_valid_format("xx.x")
is_valid_format("fakeyfake")

check_aligns(c("decimal", "dec_right"))

}
