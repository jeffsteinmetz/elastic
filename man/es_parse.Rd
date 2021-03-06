\name{es_parse}
\alias{es_parse}
\alias{es_parse.elastic_get}
\alias{es_parse.elastic_mget}
\alias{es_parse.elastic_search}
\title{Parse raw data from es_get, es_mget, or es_search.}
\usage{
es_parse(input, parsetype, verbose)

\method{es_parse}{elastic_get}(input, parsetype = "list", verbose = FALSE)

\method{es_parse}{elastic_mget}(input, parsetype = "list", verbose = FALSE)

\method{es_parse}{elastic_search}(input, parsetype = "list",
  verbose = FALSE)
}
\arguments{
  \item{input}{Output from solr_facet}

  \item{parsetype}{One of 'list' or 'df' (data.frame). Only
  list possible for now.}

  \item{verbose}{Print messages or not (default: FALSE).}
}
\description{
Parse raw data from es_get, es_mget, or es_search.
}
\details{
This is the parser used internally in es_get, es_mget, and
es_search, but if you output raw data from es_* functions
using raw=TRUE, then you can use this function to parse
that data (a es_* S3 object) after the fact to a list of
data.frame's for easier consumption.
}

