# -----------------------------------------------------------------------
# --- Blogdown R-Ladies Quer�taro
# --- 15 - 08 - 2020
# --- Basado on https://bookdown.org/yihui/blogdown/
# -----------------------------------------------------------------------

# ---------- Paso 1: instalar blogdown y hugo --------------------------

#1.1. Instala el paquete de blogdown desde CRAN o inst�lalo desde GitHub

# Instalar blogdown desde CRAN

install.packages('blogdown')

# Instalar blogdown desde GitHub

if (!requireNamespace("devtools")) install.packages('devtools')

devtools::install_github('rstudio/blogdown')

#1.2. Abrir blogdown

library(blogdown)

#1.3 : Instalar Hugo

blogdown::install_hugo()

#O, actualizarlo si es necesario

blogdown::update_hugo()

# Obtener documentaci�n de blogdown

?blogdown

# ---------- Fin del paso 1 -------------------------------------------

# ---------- Paso 2: Elegir la plantilla de hugo -----------------------

#Para descargar una plantilla de hugo, debes ejecutar la funci�n 
# blogdown::new_site() en un directorio vac�o. Toma un poco
#de tiempo para explorar las plantillas antes de descargar una. 

#  descargar lithium, la plantilla por defecto, ejecutando 
# la funci�n blogdown::new_site() 
# en la consola de su nuevo proyecto

# Tema 1: lithium (default)

# Demo: https://themes.gohugo.io/theme/hugo-lithium-theme/
# Hugo: https://themes.gohugo.io/hugo-lithium-theme/
# GitHub: https://github.com/jrutheiser/hugo-lithium-theme

blogdown::new_site() #lithium 

# Opci�n 2: descargar una de las plantillas recomendadas por 
# los autores de la documentaci�n del paquete. Estas plantillas 
# son ideales para principiantes y son totalmente compatibles con blogdown.

# Necesitas averiguar el nombre de usuario de GitHub y 
# el nombre del repositorio de la plantilla que te guste e introducirlos 
#como el argumento 'theme' de la funci�n blogdown::new_site(theme = 'user/repository'). 

# Para ahorrarle tiempo, he enumerado algunos temas recomendados 
# a continuaci�n con su demo, su GitHub, y su documentaci�n de hugo. 

# Theme 2: ghostwriter 

# Demo: https://themes.gohugo.io/theme/ghostwriter/
# Hugo: https://themes.gohugo.io/ghostwriter/
# GitHub: https://github.com/jbub/ghostwriter

blogdown::new_site(theme ='jbub/ghostwriter') 

# Theme 3: academic

# Demo: https://themes.gohugo.io/theme/academic/
# Hugo: https://themes.gohugo.io/academic/
# Github: https://github.com/gcushen/hugo-academic
 
blogdown::new_site(theme ='gcushen/hugo-academic')

# Theme 4: tranquilpeak

# Demo: https://themes.gohugo.io/theme/hugo-tranquilpeak-theme/
# Hugo: https://themes.gohugo.io/hugo-tranquilpeak-theme/
# GitHub: https://github.com/kakawait/hugo-tranquilpeak-theme

blogdown::new_site(theme ='kakawait/hugo-tranquilpeak-theme')

# Theme 5: creative portfolio

# Demo: https://themes.gohugo.io/theme/hugo-creative-portfolio-theme/portfolio/
# Hugo: https://themes.gohugo.io/hugo-creative-portfolio-theme/
# GitHub: https://github.com/kishaningithub/hugo-creative-portfolio-theme

blogdown::new_site(theme ='kishaningithub/hugo-creative-portfolio-theme')

# Theme 6: castanet

# Demo: https://themes.gohugo.io/theme/castanet/
# Hugo: https://themes.gohugo.io/castanet/
# GitHub: https://github.com/mattstratton/castanet

blogdown::new_site(theme ='mattstratton/castanet')

# Los otros temas sugeridos son "Xmin", "simple a", and "universal"

# Opci�n 3: elige tu tema favorito de Hugo en la galer�a 
# Hugo galer�a :https://themes.gohugo.io/ .

# Sea cauteloso al elegir un tema: 
# - comprueba la documentaci�n L�AME proporcionada en GitHub
# - comprueba la documentaci�n de la plantilla de Hugo y prep�rate para sumergirte
# - �tienes alg�n conocimiento de HTML, JavaScript o CSS? #
# - cuanto m�s complicada sea la plantilla, menos "cambiable" ser� en el futuro

# --------------- Fin del paso 2 ------------------------------------------

# --------------- Paso 3: Descargar la plantilla de Hugo ------------------

# Ahora que has elegido tu plantilla, est�s listo para descargarla.
# Aseg�rate de trabajar en un nuevo directorio vac�o 
# (�los archivos como .Rproj est�n bien!).
# Por ejemplo, puedes crear un nuevo proyecto llamado 'MyWebsite' y ejecutar 
# la funci�n desde la consola. 

# --------------- Fin del paso 3 ------------------------------------------

# --------- Paso 4 : Crea tu primer post ----------------------------

# --------- 4.1. Crear un nuevo archivo  R Markdown -------------------------

#??? en cuenta que siempre debes crear tus mensajes en la carpeta /content/,
# en el subdirectorio apropiado. En el caso de la plantilla lithium, 
# crearlos en el directorio /content/post.
# Los directorios /static/ y /public/ se llenar�n autom�ticamente 
# con los archivos correctos cada vez que guardas el progreso hecho en /content/. 

# 4.1.1 Crear una nueva entrada con la funci�n de blogdown

# Para crear una nueva entrada, puedes usar el addin dedicado o 
# ejecutar la funci�n 'blogdown::new_post()'. 
# �Qu� pasa si intentas ejecutarla sin especificar ning�n argumento? 

blogdown::new_post (title = 'my first post')

# Compruebe los diferentes argumentos de la funci�n

?blogdown::new_post

# Comprueba la extensi�n del archivo y tu nombre: deben coincidir 
# con lo que has configurado previamente en tu archivo .Rprofile. 

# 4.1.2. Crear una nueva entrada con un nombre de autor diferente,
#unas cuantas etiquetas, y una extensi�n de la reducci�n

blogdown::new_post (title = 'my second post',
                    author = 'Arnaud Paligot', 
                    tags = c("gamification","mooc"),
                    ext = ".md")

# 4.1.3. Actualizar los metadatos con el addin. �Qu� se puede cambiar y qu� no? 

# --------- 4.2. Escribe tu primer post con R Markdown ------

# Para una r�pida presentaci�n de la sintaxis de la R Markdown, compruebe , comprueba
# Help > Markdown Quick Reference or Help > Cheatsheets > R Markdown

# Ver R markdown cheat sheet

## Crear un post con 
# - un # encabezado
# - una lista
# - texto en **negrita** e *italico*
# - un [enlace](enlace aqu�)
# - texto simple

## O
# 1. r c�digo (formula)
# 2. r c�digo (resultado)
# 3. un gr�fico

# �No te olvides de guardar tu progreso! 

# -------- 4.3. A�ade una imagen a tu mensaje -------------------------

# La forma m�s f�cil y recomendada de a�adir im�genes a tus mensajes es 
# usar el addin dedicado. �Por qu�? Te ahorrar� la molestia de identificar 
# el subdirectorio /static/ correcto y nombrar tu archivo correctamente. 
# Adelante, intenta a�adir una imagen a tu mensaje. 

# -------- 4.4. Ocultar una entrada del blog ---------------------------------------

# Una forma f�cil de ocultar un borrador es cambiar su extensi�n temporalmente.
# Por ejemplo, cambiar un archivo .Rmd a un archivo .Rmkd. 

# -------- 4.5. Previsualice su sitio web en su navegador ---------

# Para obtener una vista previa de su sitio web, puede utilizar 
# el addin dedicado o ejecutar la funci�n 'blogdown::serve_site()' en la consola

blogdown::serve_site()

# --------------- Fin del paso 5 -----------------------------------

# --------- Paso 6: Actualizar el archivo config.TOML -------------------

# Este archivo contiene la estructura de su sitio web y es el primero en ser le�do. 
# No cambies nada de lo que no est�s seguro y en caso de dudas, comprueba
# la documentaci�n general de Hugo y la documentaci�n espec�fica del README 
# que puedes encontrar en el repositorio GitHub de tu plantilla. 

# A continuaci�n hay algunos elementos simples que puedes adaptar en tu archivo config.toml.
# Estos ejemplos est�n basados en la plantilla lithium.

# 6.1. Cambia el t�tulo y la descripci�n de tu sitio web

# 6.2. Cambia las direcciones de sus cuentas de medios sociales

# 6.3 (Opcional) Agregar una nueva secci�n de Medios Sociales

# 6.4. (Opcional) Ocultar una secci�n

# 6.5. (Opcional) Cambiar el logo del sitio web


# baseurl = "/"
# languageCode = "en-us"
# title = "A Hugo website" #Cambie el t�tulo de tu p�gina web aqu�
# theme = "hugo-lithium"
# googleAnalytics = ""
# disqusShortname = ""
# ignoreFiles = ["\\.Rmd$", "\\.Rmarkdown$", "_files$", "_cache$"] 

# [permalinks]
# post = "/:year/:month/:day/:slug/"

# [[menu.main]]
# name = "About"
# url = "/about/"
# [[menu.main]]
# name = "GitHub" 
# url = "https://github.com/rstudio/blogdown" #reemplazar el enlace 
# [[menu.main]]
# name = "Twitter" #suggestion: modify "Twitter" by "LinkedIn"
# url = "https://twitter.com/rstudio" reemplazar el enlace 
#[[menu.main]]
#name = "LinkedIn" #suggestion: add "LinkedIn" section
#url = "https://twitter.com/rstudio" #reemplazar el enlace 

# [params]
# description = "A website built through Hugo and blogdown." #cambiar la descripci�n

# --------------- Fin del paso 6 ------------------------------

# -------------- Ver los pasos 7,8,9 en las diapositivas ---------------

# --------- Paso 10: Actualizar la url de su p�gina web ----------

# 1. Actualizar la url base de su archivo config.toml

baseurl = "https://mywebsite.rbind.io/"

# 2. Crea un archivo _redirects en la carpeta /static/ 
# y redirecciona tus subdominios predeterminados Netlify y http 
# a tu dominio principal

http://random.netlify.com/* https://mywebsite.rbind.io/:splat 301!
  
http://mywebsite.rbind.io/*  https://mywebsite.rbind.io/:splat 301!
  
# --------------- Fin del paso 10 -----------------------------
  
