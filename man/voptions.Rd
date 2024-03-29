% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse.R, R/expressionset.R
\name{voptions}
\alias{voptions}
\alias{voptions,ANY-method}
\alias{validate_options}
\alias{reset}
\alias{reset,ANY-method}
\alias{voptions,expressionset-method}
\alias{reset,expressionset-method}
\title{Set or get options globally or per object.}
\usage{
voptions(x = NULL, ...)

\S4method{voptions}{ANY}(x = NULL, ...)

validate_options(...)

reset(x = NULL)

\S4method{reset}{ANY}(x = NULL)

\S4method{voptions}{expressionset}(x = NULL, ...)

\S4method{reset}{expressionset}(x = NULL)
}
\arguments{
\item{x}{(optional) an object inheriting from \code{expressionset} such as \code{\link{validator}} or \code{\link{indicator}}.}

\item{...}{Name of an option (character) to retrieve options or \code{option = value} pairs to set options.}
}
\value{
When requesting option settings: a \code{list}. When setting options,
  the whole options list is returned silently.
}
\description{
There are three ways to specify options for this package.
\itemize{
\item{Globally. Setting \code{voptions(option1=value1,option2=value2,...)}
  sets global options.}
\item{Per object. Setting \code{voptions(x=<object>, option1=value1,...)},
  causes all relevant functions that use that object (e.g. 
  \code{\link{confront}}) to use those local settings.}
\item{At execution time. Relevant functions (e.g. \code{\link{confront}}) take
  optional arguments allowing one
   to define options to be used during the current function call}
 }
}
\section{Options for the validate package}{

Currently the following options are supported.

\itemize{
 \item{\code{na.value} (\code{NA},\code{TRUE},\code{FALSE}; \code{NA}) Value
 to return when a validating statement results in \code{NA}.}
 \item{\code{raise} (\code{"none"},\code{"error"},\code{"all"};
 \code{"none"}) Control if the \code{\link{confront}} methods catch or raise
 exceptions.
 The 'all' setting is useful when debugging validation scripts.}
 \item{\code{lin.eq.eps} ('numeric'; 1e-8) The precision used when evaluating
 linear equalities. To be used to control for machine rounding.}
 \item{\code{"reset"} Reset to factory settings.}
}
}

\examples{

# set an option, local to a validator object:
v <- validator(x + y > z)
voptions(v,raise='all')
# check that local option was set:
voptions(v,'raise')
# check that global options have not changed:
voptions('raise')
}
\seealso{
Other expressionset-methods: 
\code{\link{as.data.frame}()},
\code{\link{as.data.frame,expressionset-method}},
\code{\link{created}()},
\code{\link{description}()},
\code{\link{label}()},
\code{\link{meta}()},
\code{\link{names<-,rule,character-method}},
\code{\link{origin}()},
\code{\link{plot,validator-method}},
\code{\link{summary}()},
\code{\link{variables}()}

Other expressionset-methods: 
\code{\link{as.data.frame}()},
\code{\link{as.data.frame,expressionset-method}},
\code{\link{created}()},
\code{\link{description}()},
\code{\link{label}()},
\code{\link{meta}()},
\code{\link{names<-,rule,character-method}},
\code{\link{origin}()},
\code{\link{plot,validator-method}},
\code{\link{summary}()},
\code{\link{variables}()}
}
\concept{expressionset-methods}
