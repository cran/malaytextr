% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stem.R
\docType{data}
\name{stem_malay}
\alias{stem_malay}
\title{Stemming Malay words}
\format{
An object of class \code{function} of length 1.
}
\usage{
stem_malay(word,
  dictionary,
  col_feature1,
  col_dict1,
  col_dict2,
  Word)
}
\arguments{
\item{word}{A data frame, or a character vector}

\item{dictionary}{A data frame with a column of words to be stemmed and a column of root words}

\item{col_feature1}{Column that contains words to be stemmed from \code{word}}

\item{col_dict1}{Column that will be used to match with \code{col_feature1} from \code{word}}

\item{col_dict2}{Column that contains the root words from \code{dictionary}}

\item{Word}{Depreciated. Please use \code{word} instead}
}
\value{
Returns a data frame with the following properties:
\itemize{
\item \verb{Col Word}: Renamed input from \code{word}
\item \verb{Root Word}: An additional column which contains the word(s) after being stemmed.
}
}
\description{
Malaytextr function to stem Malay words
}
\details{
\code{stem_malay()} is an approach to find the Malay words in a dictionary
and then proceed to remove "extra suffix" as explained by Khan et al. (2017), and then "prefix" and lastly, "suffix".
}
\examples{

#Specifying a character vector &
#use a dictionary from malaytextr package

stem_malay(word = "banyaknya", dictionary = malayrootwords)



#A data frame,
#Use a dictionary from malaytextr package,
#With a dataframe, you will need to specify the column to be stemmed

x <- data.frame(text = c("banyaknya","sangat","terkedu", "pengetahuan"))

stem_malay(word = x, dictionary = malayrootwords, col_feature1 = "text")

}
\references{
Khan, Rehman Ullah, Fitri Suraya Mohamad, Muh Inam UlHaq, Shahren Ahmad Zadi Adruce, Philip Nuli Anding, Sajjad Nawaz Khan, and Abdulrazak Yahya Saleh Al-Hababi. 2017. "Malay Language Stemmer."
}
\keyword{datasets}
