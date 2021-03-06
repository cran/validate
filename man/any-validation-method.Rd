% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/confrontation.R
\name{any,validation-method}
\alias{any,validation-method}
\title{Test if any validation resulted in TRUE}
\usage{
\S4method{any}{validation}(x, ..., na.rm = FALSE)
}
\arguments{
\item{x}{\code{validation} object (see \code{confront}).}

\item{...}{ignored}

\item{na.rm}{[\code{logical}] If \code{TRUE}, \code{NA} values
are removed before the result is computed.}
}
\description{
Test if any validation resulted in TRUE
}
\examples{
val <- check_that(women, height>60, weight>0)
any(val)
}
\seealso{
Other validation-methods: 
\code{\link{aggregate,validation-method}},
\code{\link{all,validation-method}},
\code{\link{barplot,validation-method}},
\code{\link{check_that}()},
\code{\link{compare}()},
\code{\link{confront}()},
\code{\link{event}()},
\code{\link{names<-,rule,character-method}},
\code{\link{plot,validation-method}},
\code{\link{sort,validation-method}},
\code{\link{summary}()},
\code{\link{validation-class}},
\code{\link{values}()}
}
\concept{validation-methods}
