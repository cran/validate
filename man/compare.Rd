% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compare.R
\name{compare}
\alias{compare}
\alias{compare,validator-method}
\alias{compare,indicator-method}
\title{Compare similar data sets}
\usage{
compare(x, ...)

\S4method{compare}{validator}(x, ..., .list = list(), how = c("to_first", "sequential"))

\S4method{compare}{indicator}(x, ..., .list = NULL)
}
\arguments{
\item{x}{An R object}

\item{...}{data frames, comma separated. Names become column names in
the output.}

\item{.list}{Optional list of data sets, will be concatenated with \code{...}.}

\item{how}{how to compare}
}
\value{
For \code{validator}: An array where each column represents 
one dataset. 
The rows count the following attributes:
\itemize{
\item{Number of validations performed}
\item{Number of validations that evaluate to \code{NA} (unverifiable)}
\item{Number of validations that evaluate to a logical (verifiable)}
\item{Number of validations that evaluate to \code{TRUE}}
\item{Number of validations that evaluate to \code{FALSE}}
\item{Number of extra validations that evaluate to \code{NA} (new unverifiable)}
\item{Number of validations that still evaluate to \code{NA} (still unverifialble)}
\item{Number of validations that still evaluate to \code{TRUE}}
\item{Number of extra validations that evaluate to \code{TRUE} }
\item{Number of validations that still evaluate to \code{FALSE}}
\item{Number of extra validations that evaluate to \code{FALSE}}
}

For \code{indicator}: A list with the following components:
\itemize{
\item{\code{numeric}: An array collecting results of scalar indicator (e.g. \code{mean(x)}).}
\item{\code{nonnumeric}: An array collecting results of nonnumeric scalar indicators (e.g. names(which.max(table(x))))}
\item{\code{array}: A list of arrays, collecting results of vector-indicators (e.g. x/mean(x))}
}
}
\description{
Compare versions of a data set by comparing their performance against a
set of rules or other quality indicators. This function takes two or
more data sets and compares the perfomance of data set \eqn{2,3,\ldots}
against that of the first data set (default) or to the previous one
(by setting \code{how='sequential'}).
}
\section{Comparing datasets by performance against validator objects}{


Suppose we have a current and a previous version of a data set. Both
can be inspected by \code{\link{confront}}ing them with a rule set.
The status changes in rule violations can be partitioned as shown in the 
following figure.
\if{html}{\figure{rulesplit.png}{options: width=80\% alt="cellwise splitting"}}
\if{latex}{\figure{rulesplit.pdf}{options: width=13cm}}
This function computes the partition for two or more
datasets, comparing the current set to the first (default) or to the 
previous (by setting \code{compare='sequential'}).
}

\examples{
data(retailers)

rules <- validator(turnover >=0, staff>=0, other.rev>=0)

# start with raw data
step0 <- retailers

# impute turnovers
step1 <- step0
step1$turnover[is.na(step1$turnover)] <- mean(step1$turnover,na.rm=TRUE)

# flip sign of negative revenues
step2 <- step1
step2$other.rev <- abs(step2$other.rev)
  
# create an overview of differences, comparing to the previous step
compare(rules, raw = step0, imputed = step1, flipped = step2, how="sequential")

# create an overview of differences compared to raw data
out <- compare(rules, raw = step0, imputed = step1, flipped = step2)
out

# graphical overview
plot(out)
barplot(out)

# transform data to data.frame (easy for use with ggplot)
as.data.frame(out)


}
\references{
The figure is reproduced from MPJ van der Loo and E. De Jonge (2018)
\emph{Statistical Data Cleaning with applications in R} (John Wiley & Sons).
}
\seealso{
Other validation-methods: 
\code{\link{aggregate,validation-method}},
\code{\link{all,validation-method}},
\code{\link{any,validation-method}},
\code{\link{barplot,validation-method}},
\code{\link{check_that}()},
\code{\link{confront}()},
\code{\link{event}()},
\code{\link{names<-,rule,character-method}},
\code{\link{plot,validation-method}},
\code{\link{sort,validation-method}},
\code{\link{summary}()},
\code{\link{validation-class}},
\code{\link{values}()}

Other comparing: 
\code{\link{as.data.frame,cellComparison-method}},
\code{\link{as.data.frame,validatorComparison-method}},
\code{\link{barplot,cellComparison-method}},
\code{\link{barplot,validatorComparison-method}},
\code{\link{cells}()},
\code{\link{match_cells}()},
\code{\link{plot,cellComparison-method}},
\code{\link{plot,validatorComparison-method}}
}
\concept{comparing}
\concept{validation-methods}
