% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compare.R
\name{barplot,validatorComparison-method}
\alias{barplot,validatorComparison-method}
\title{Barplot of validatorComparison object}
\usage{
\S4method{barplot}{validatorComparison}(
  height,
  las = 1,
  cex.axis = 0.8,
  cex.legend = cex.axis,
  wrap = TRUE,
  ...
)
}
\arguments{
\item{height}{object of class \code{validatorComparison}}

\item{las}{[\code{numeric}] in \code{{0,1,2,3}} determining axis label rotation}

\item{cex.axis}{[\code{numeric}] Magnification with respect to the current
setting of \code{cex} for axis annotation.}

\item{cex.legend}{[\code{numeric}] Magnification with respect to the current
setting of \code{cex} for legend annotation and title.}

\item{wrap}{[\code{logical}] Toggle wrapping of x-axis labels when their width
exceeds the width of the column.}

\item{...}{Graphical parameters passed to \code{\link[graphics]{barplot.default}}.}
}
\description{
The performance of versions of a data set with regard to rule-based quality
requirements can be compared using using \code{\link{compare}}. The result is a
\code{validatorComparison} object. This method creates a stacked bar plot of
the results.  See also \code{\link{plot,validatorComparison-method}} for a line
chart.
}
\note{
Before plotting, underscores (\code{_}) and dots (\code{.}) in x-axis labels
are replaced with spaces.
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
\seealso{
Other comparing: 
\code{\link{as.data.frame,cellComparison-method}},
\code{\link{as.data.frame,validatorComparison-method}},
\code{\link{barplot,cellComparison-method}},
\code{\link{cells}()},
\code{\link{compare}()},
\code{\link{match_cells}()},
\code{\link{plot,cellComparison-method}},
\code{\link{plot,validatorComparison-method}}
}
\concept{comparing}
