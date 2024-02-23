# Définition de la fonction
f <- function(x, y) {
  return(x^2 + cos(x+y)+(y^2+1/(1+x^2)^(1/2)))
}
# Création d'une grille de valeurs pour x et y
x <- seq(-100, 100, length.out = 1000)
y <- seq(-100, 100, length.out = 1000)
grid <- expand.grid(x = x, y = y)
#minimum et le maximum de la fonction
max <- max(f(x,y))
min <- min(f(x,y))
print(paste("Maximum de f(x):", max))
print(paste("Minimum de f(x):", min))
# Calcule de la dérivée partielle par rapport à x
df_dx <- function(x, y) {
  h <- 0.00001
  return((f(x + h, y) - f(x, y)) / h)
}
# Calcule de la dérivée partielle par rapport à y
df_dy <- function(x, y) {
  h <- 0.00001
  return((f(x, y + h) - f(x, y)) / h)
}
#affectation de la 3éme dimension
z <- outer(x, y, df_dx)  
t <- outer(x, y, df_dy) 
r <- outer(x, y, f)
# pour la fonction f
persp(x, y, r, theta = 30, phi = 30, expand = 0.5, col = "blue", xlab = "x", ylab = "y", zlab = "f(x, y)", main = "représentation de f")
# pour la dérivée x
persp(x, y, z, theta = 30, phi = 30, expand = 0.5, col = "red", xlab = "x", ylab = "y", zlab = "df/dx", main = "représentation de df/dx")
# pour la dérivée y
persp(x, y, t, theta = 30, phi = 30, expand = 0.5, col = "green", xlab = "x", ylab = "y", zlab = "df/dy", main = "représentation de df/dy")
