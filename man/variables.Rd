% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rule.R, R/expressionset.R
\name{variables}
\alias{variables}
\alias{variables,rule-method}
\alias{variables,list-method}
\alias{variables,data.frame-method}
\alias{variables,environment-method}
\alias{variables,expressionset-method}
\title{Get variable names}
\usage{
variables(x, ...)

\S4method{variables}{rule}(x, ...)

\S4method{variables}{list}(x, ...)

\S4method{variables}{data.frame}(x, ...)

\S4method{variables}{environment}(x, ...)

\S4method{variables}{expressionset}(x, as = c("vector", "matrix", "list"), dummy = FALSE, ...)
}
\arguments{
\item{x}{An R object}

\item{...}{Arguments to be passed to other methods.}

\item{as}{how to return variables: 
\itemize{
  \item{\code{'vector'}} Return the uniqe vector of variables occurring in \code{x}.
  \item{\code{'matrix'}} Return a boolean matrix, each row representing a rule, each column representing a variable.
  \item{\code{'list'}} Return a named \code{list}, each entry containing a character vector with variable names.
}}

\item{dummy}{Also retrieve transient variables set with the \code{:=} operator.}
}
\description{
Generic function that extracts names of variables ocurring
in R objects.
}
\section{Methods (by class)}{
\itemize{
\item \code{variables(rule)}: Retrieve unique variable names

\item \code{variables(list)}: Alias to \code{names.list}

\item \code{variables(data.frame)}: Alias to \code{names.data.frame}

\item \code{variables(environment)}: Alias to \code{ls}

\item \code{variables(expressionset)}: Variables occuring in \code{x} either as a single list, or per rule.

}}
\examples{

v <- validator(
  root = y := sqrt(x)
 , average = mean(x) > 3
 , sum = x + y == z
)
variables(v)
variables(v,dummy=TRUE)
variables(v,matrix=TRUE)
variables(v,matrix=TRUE,dummy=TRUE)


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
\code{\link{voptions}()}

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
\code{\link{voptions}()}
}
\concept{expressionset-methods}
