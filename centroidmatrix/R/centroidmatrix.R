#' centroidmatrix
#' This function allows you to generate a matrix of centroids from a non-Euclidean distance matrix using the betadisper function in vegan.
#' @param factorname The name of a treatment factor file containing the treatment factors and other sources of variation and a grouping variable for calculation of centroids in the columns and observations in rows
#' @param speciesname The name of species file which has species in columns and observations in rows in the same order as in the factorname file and of the same length
#' @param groupvarname The name of the grouping variable in the factorname file for which centroids are calculated
#' @param distancetype The type of distance or dissimilarity matrix to be calculated from the species file using the vegdist function in vegan Default is "bray"
#' @export
#' @examples
#' centroidmatrix()

centroidmatrix <- function(factorname, speciesname, groupvarname, distancetype){
	groupvar <- factor(groupvarname)
	braydist <- vegdist(speciesname, method = distancetype)
	betadisperout <- betadisper(braydist, groupvar, type = 'centroid')
	braycent <- betadispout$centroids
	
	return(braycent) 
	
}