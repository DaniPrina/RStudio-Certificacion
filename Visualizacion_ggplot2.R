#######################################################
### Exploración visual de datos con ggplot2 parte 2 ###
#######################################################

# Antes que nada, arranquemos cargando la librería:

library(ggplot2)

# Vamos a usar la misma base con la que venimos trabajando.

nobel_winners2 <- readr::read_csv("https://raw.githubusercontent.com/DaniPrina/RStudio-Certificacion/master/nobel_winners2")

#Podemos hechar un vistazo para recordarla.

View(nobel_winners2)

# Propongo realizar un análisis exploratorio visual sobre el cupo
# femenino en los premios nobel. ¿Cuántas mujeres ganaron el nobel?
# ¿Cuántos hombres? ¿Cuántas organizaciones?

# Quiero lograr un gráfico de barras que haga un conteo de la 
# cantidad de mujeres, hombres y organizaciones que ganaron
# premios nobel. Vamos a trabajar, entonces, con la variable "gender".

# Por dónde arrancamos? 
# Repasemos:

ggplot(data = nobel_winners2) +
  geom_bar(mapping = aes(x = gender))

# Ya tenemos un gráfico de barras básico. Vamos a agregarle
# color. Si quiero un color para cada género:

ggplot(data = nobel_winners2) +
  geom_bar(mapping = aes(gender, color = gender) )

# Ups! "color" solo me colorea los bordes. Probemos con fill (relleno):

ggplot(data = nobel_winners2) +
  geom_bar(mapping = aes(x = gender, fill = gender))

# Notaron que el argumento "fill" va dentro del aes( )? ¿Qué
# pasa si lo pongo afuera? En otra ocasión, pueden probar con
# distintos geoms. Ahora, observemos los resultados: tenemos 
# una masiva prevalencia de hombres, superando los 750 nobeles, 
# contra unas pocas mujeres y, aún menos, organizaciones. 

# Repasemos lo aprendido

####### 1ER EVALUACIÓN FORMATIVA #########


#########################################

# Entonces, para poner color a un gráfico de barras:
# ggplot(data = Data) + geom(mapping = aes(x = x, color = x))

# ¿Qué pasa si a esto le quiero sumar otra variable?
# Por ejemplo, si quisiera hacer lo mismo, pero obtener un
# gráfico por categoría? Una buena estrategia es dividir
# por facetas con facet_wrap:

ggplot(data = nobel_winners2) + 
  geom_bar(mapping = aes(x = gender, fill = gender)) + 
  facet_wrap(~ category)

# Así vemos seis gráficos, uno para cada categoría, mostrando
# la cantidad de premios por género u organización.
# Acá podemos ver que en economía, física y química es donde menos
# cantidad de mujeres hay y que solo hay organizaciones en nobel
# de la paz.

# En suma, repasemos para incorporar lo aprendido: 

# - Para hacer un gráfico de barras con una variable (x, por ejemplo), podemos usar, de forma genérica:

# ggplot(data = Datos) +
#   geom_bar(mapping = aes(x = x))

# - Si quiero separar las categorías de mi variable x por color:

# ggplot(data = Datos) + 
#   geom_bar(mapping = aes(x = x, fill = x))

# - Si quiero incorporar una variable más, una opción es facetar: 

# ggplot(Datos) + 
#   geom_bar(aes(x = x, fill = x)) + 
#   facet_wrap(~ y )


######### 2da Evaluación formativa ############


###############################################




