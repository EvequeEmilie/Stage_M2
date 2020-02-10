################################################################################
# ANALYZE THE DITRIBUTION OF FUNCTIONAL GENES AND FUNCTIONAL POTENTIAL         # 
#  OF FISH MICROBIAL COMMUNITIES                                               # 
#                                                                              # 
# ------------------------------------------------------------------------------
# arthur.escalas@gmail.com
# ------------------------------------------------------------------------------
#                                                                              #
#	SCRIPT TO CLEAN AND NORMALIZE DATA FOR DOWNSTREAM ANALYSES                   #
#	                                                                             # 
################################################################################


################################################################################
#                                                                              #
#  LOAD DATA                                                                   #
#                                                                              #
################################################################################

# Load raw data : GEOCHIHP
geochip = read.csv(paste0 ("data/", "labels_geochip.csv"), row.names = 1)
# Load table_match_levels_data of script 01
tmp <- read.csv(fille = paste0(dir_res_01, "table_match_funct_levels.csv"), row.names = 1)

################################################################################


################################################################################
#                           EXEMPLE LOOP                                       #
#                                                                              #
################################################################################
# 1 at 10
for(i in 1:10){
  print(i)
}

#
for (i in c( > 10)) print(i)
x = ifelse(x>10, , )


################################################################################
#                                                                              #
#                         FILTER DATA LESS PROBES                              #
#                                                                              #
################################################################################
# Removal of genes with less than 10 probes 
filter10 <- filter(tmp, n > 10)
group10 <- group_by(filter10, funct_category, n) %>% summarise(calcul_mean = mean(n))

#-------------------------------------------------------------------------------

# Removal of genes with less than 15 probes 
filter15 <- filter(tmp, n > 15)

#-------------------------------------------------------------------------------

# Removal of genes with less than 20 probes 
filter20 <- filter(tmp, n > 20)

#-------------------------------------------------------------------------------

# Removal of genes with less than 25 probes 
filter25 <- filter(tmp, n > 25)

#-------------------------------------------------------------------------------

# Removal of genes with less than 30 probes 
filter30 <- filter(tmp, n > 30)

#-------------------------------------------------------------------------------

# Removal of genes with less than 35 probes 
filter35 <- filter(tmp, n > 35)

#-------------------------------------------------------------------------------

# Removal of genes with less than 40 probes 
filter40 <- filter(tmp, n > 40)

###################################################################################




###################################################################################
#                                                                                 #
#                             RESUM_TABLE_FILTER                                  #
#                                                                                 #
###################################################################################
# Create a base-matrix
matrice <- matrix(data = 1:32, nrow=4, ncol=8, byrow = T)
matrice
# Create a vector
levels.category <- c(12,12,12,12,12,12,12,12)
levels.porcess <- c(121,101,95,94,90,88,84,81) 
levels.trait <- c(420,283,260,253,239,229,213,202)
sum.n <- c(67628,67019,66730,66611,66292,66019,65498,65080)

# Group all data in the same vector 
resultat_matrice_filtre <- matrix(c(levels.category, levels.porcess, levels.trait, sum.n), nrow = 4, ncol =8, byrow = T)

# Names rows and columns
rownames(resultat_matrice_filtre) <- c("levels.category", "levels.process", "levels.trait", "sum.n")
colnames(resultat_matrice_filtre) <- c("f0","f10","f15","f20","f25","f30","f35","f40")
# Show the result
resultat_matrice_filtre

####################################################################################



