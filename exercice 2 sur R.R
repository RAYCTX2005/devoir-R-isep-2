#1 création d'une base de donnée avec au moins 5 variable 
base_de_donnée <- data.frame(
  nom=c("COULIBALY","JEANNE","SALAM","SAMBA","CELINA","NIASS","RAYAN"),
  numéro=c(1,2,3,4,5,6,7),
  sexe=factor(c("Femme","Femme","Homme","Homme","Femme","Homme","Homme")),
  note=c(19,17,15,14,13,12,16),
  mention=factor(c("très bien","très bien","bien"," bien","assez bien","assez bien","très bien")),
  distante_école=factor(c("6-7","1-2","2-3","5-6","1-2","2-3","2-3"))
)
#2 création d'une matrice avec la base de donnée et changement de nom des ligne et colonne
matrice_de_donnée <-as.matrix(base_de_donnée)
colnames(matrice_de_donnée) <- c("NOM","NUMERO","SEXE","NOTE","MENTION","DISTANCE_ECOLE")
matrice_de_donnée[1,] <- c("coulibaly",1,"femme","19","Très biens","6-7")

#3 stat descriptive 
 summary(base_de_donnée)

#4 graphiques
 library(ggplot2)
 
 # Création un histogramme pour les notes
 ggplot(data = base_de_donnée, aes(x = note)) +
   geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
   labs(title = "Distribution des Notes",
        x = "Note",
        y = "Fréquence")
 # Création d'un camembert pour la répartition des mentions
 ggplot(data = base_de_donnée, aes(x = "", fill = mention)) +
   geom_bar(width = 1) +
   coord_polar(theta = "y") +
   labs(title = "Répartition des Mentions",
        fill = "Mention")
 
 

      