% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docnames.R
\name{docnames}
\alias{docnames}
\alias{docnames<-}
\title{Get or set document names}
\usage{
docnames(x)

docnames(x) <- value
}
\arguments{
\item{x}{the object with docnames}

\item{value}{a character vector of the same length as \code{x}}
}
\value{
\code{docnames} returns a character vector of the document names

\code{docnames <-} assigns new values to the document names of an object.
}
\description{
Get or set the document names of a \link{corpus}, \link{tokens}, or \link{dfm} object.
}
\examples{
# get and set doument names to a corpus
mycorp <- data_corpus_inaugural
docnames(mycorp) <- char_tolower(docnames(mycorp))

# get and set doument names to a tokens
mytoks <- tokens(data_corpus_inaugural)
docnames(mytoks) <- char_tolower(docnames(mytoks))

# get and set doument names to a dfm
mydfm <- dfm(data_corpus_inaugural[1:5])
docnames(mydfm) <- char_tolower(docnames(mydfm))

# reassign the document names of the inaugural speech corpus
docnames(data_corpus_inaugural) <- paste("Speech", 1:ndoc(data_corpus_inaugural), sep="")

}
\seealso{
\code{\link{featnames}}
}
\keyword{corpus}
\keyword{dfm}
