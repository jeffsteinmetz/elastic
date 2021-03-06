\name{es_search}
\alias{es_search}
\title{Full text search of any CouchDB databases using Elasticsearch.}
\usage{
es_search(conn, index = NULL, type = NULL, raw = FALSE, verbose = TRUE,
  callopts = list(), ...)
}
\arguments{
  \item{conn}{Connection object describing base url, port,
  and any authentication details.}

  \item{index}{Index}

  \item{type}{Document type}

  \item{raw}{If TRUE (default), data is parsed to list. If
  FALSE, then raw JSON.}

  \item{callopts}{Curl args passed on to httr::POST.}

  \item{verbose}{If TRUE (default) the url call used
  printed to console.}

  \item{...}{Further args passed on to elastic search HTTP
  API as parameters.}
}
\description{
Full text search of any CouchDB databases using
Elasticsearch.
}
\details{
There are a lot of terms you can use for Elasticsearch. See
here
\url{http://www.elasticsearch.org/guide/reference/query-dsl/}
for the documentation.
}
\examples{
\dontrun{
init <- es_connect()
es_search(init, index="twitter")
es_search(init, index="twitter", type="tweet")
es_search(init, index="twitter", type="mention")
es_search(init, index="twitter", type="tweet", q="what")
es_search(init, index="twitter", type="tweet", sort="message")

# Get raw data
es_search(init, index="twitter", type="tweet", raw=TRUE)
}
}

