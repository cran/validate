% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validator.R
\docType{class}
\name{validator-class}
\alias{validator-class}
\title{Store a set of rich validating rules.}
\description{
Store a set of rich validating rules.
}

\section{Details}{

A validator stores a set of validatin rules. It is a child class of 
\code{\link{expressionset}} and
can be constructed with  \code{\link{validator}}. \code{validator} contains
an extra slot \code{"language"} stating the language in which the validation
rule is expressed. The default, and currently only supported language is
the \code{validate} language implemented by this package.
}

\section{Exported S4 methods for \code{validator}}{

  \itemize{
 \item{Methods inherited from \code{\link{expressionset}}}
 \item{\code{\link{confront}}}
 \item{\code{\link{compare}}}
}
}

\section{See also}{

\itemize{
 \item{\code{\link{expressionset}}}
}
}

\keyword{internal}
