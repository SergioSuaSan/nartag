<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">

<head>
    <title>Nartag</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
    <div class="bg-dark fw-semibold">
        <header>
            <!-- place navbar here -->
            <div class="container py-3">
                <nav class="navbar navbar-expand-md navbar-dark bg-light bg-opacity-10 rounded-3">
                    <div class="container">
                        <a class="navbar-brand" href="https://nartag.com/"><img src="img/logo-site.png" alt=""/></a>
                        <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse text-white-50" id="collapsibleNavId">
                            |
                            <ul class="navbar-nav me-auto mt-2 mt-lg-0">

                                <li class="nav-item">
                                    <a class="nav-link" href="#">Explorar</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Novelas
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Discord</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Donar</a>
                                </li>

                            </ul>
                        </div>
                        <form class="d-flex my-2 my-lg-0 ">
                            <button class="btn btn-dark  m-2 my-sm-0 fw-semibold" type="submit">
                                Iniciar sesion
                            </button>
                            <button class="btn btn-danger m-2 my-sm-0 fw-semibold" type="submit">
                                Registrarse
                            </button>
                        </form>
                    </div>
                </nav>
                <div class="div mt-3 position-relative">
                    <input class="form-control border-0 bg-dark-subtle p-3" type="text" placeholder="Buscar..." />
                    <i class="fa fa-search text-white position-absolute end-0 top-50 translate-middle-y me-3"
                        aria-hidden="true"></i>

                </div>
            </div>

        </header>
        <main>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <button class="btn btn-danger mb-3"> <i class="fa fa-arrow-left"
                                aria-hidden="true"></i></button>
                        <p class="ms-3 text-white d-inline">Actualizaciones</p>
                        <div class="row">
						<xsl:for-each select="manguas/mangua">
							 <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="card border-0 rounded-4 bg-transparent">
                                    <div class="div position-relative">
                                        <a href="{FotosyTituloURL}">  <img class="card-img-top rounded-4"
                                            src="{Fotos}" alt="Title" /></a>
                                        <p class="position-absolute top-0 end-0 m-3 py-1 px-2 bg-dark rounded-3"><i
                                                class="fa fa-star text-warning" aria-hidden="true"> <span
                                                    class="text-white fw-semibold"><xsl:value-of select="Rating"/></span></i></p>
                                        <div
                                            class="position-absolute bottom-0 mb-4 ms-1 row  w-100 text-center justify-content-between ">
                                            <div class="col">
                                            <xsl:choose>
                                                <xsl:when test="EstiloDeManguaTexto = 'Shōnen'">
                                                <a href="https://nartag.com/biblioteca?demography=shonen"
                                                    class="text-decoration-none btn btn-warning fw-semibold text-white"><xsl:value-of select="EstiloDeManguaTexto"/></a>
                                                </xsl:when>
                                                <xsl:when test="EstiloDeManguaTexto = 'Seinen'">
                                                <a href="https://nartag.com/biblioteca?demography=shonen"
                                                    class="text-decoration-none btn btn-danger fw-semibold text-white"><xsl:value-of select="EstiloDeManguaTexto"/></a>
                                                </xsl:when>
                                                <xsl:when test="EstiloDeManguaTexto = 'Shōjo'">
                                                <a href="https://nartag.com/biblioteca?demography=shonen"
                                                    class="text-decoration-none btn bg-danger-subtle  fw-semibold text-white"><xsl:value-of select="EstiloDeManguaTexto"/></a>
                                                </xsl:when>
                                                <xsl:when test="EstiloDeManguaTexto = 'Josei'">
                                                <a href="https://nartag.com/biblioteca?demography=shonen"
                                                    class="text-decoration-none btn btn-info fw-semibold text-white"><xsl:value-of select="EstiloDeManguaTexto"/></a>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                <a href="https://nartag.com/biblioteca?demography=shonen"
                                                    class="text-decoration-none btn btn-danger fw-semibold text-white"><xsl:value-of select="EstiloDeManguaTexto"/></a>              
                                                </xsl:otherwise>
                                            </xsl:choose>
                                            </div>
                                            <div class="col">
                                                <a href="https://nartag.com/biblioteca?demography=shonen"
                                                    class="text-decoration-none btn btn-dark fw-semibold text-white"><xsl:value-of select="TipoDeManguaTexto"/></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body text-white">
                                        <a href="{FotosyTituloURL}" class="text-decoration-none text-white"> <h5 class="card-title"> <xsl:value-of select="Titulo"/></h5></a>
                                        <div class="div">
                                            <a href="{Capitulo1URL}"
                                                class="btn btn-outline-light w-100 rounded-5 p-0 mb-3"> <xsl:value-of select="Capitulo1TextoCapitulo"/>
                                                <br /> <small><xsl:value-of select="Capitulo1TextoFecha"/></small></a>
                                            <xsl:choose>
                                                <xsl:when test="Capitulo2TextoCapitulo != ''">
                                                <a href="{Capitulo2URL}"
                                                class="btn btn-outline-light w-100 rounded-5 p-0"> <xsl:value-of select="Capitulo2TextoCapitulo"/><br />
                                                <small><xsl:value-of select="Capitulo2TextoFecha"/></small></a>
                                                
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                </div>

                            </div>
						</xsl:for-each>
                           
                        </div>
                    </div>
                    <div class="col-xl-1 col-lg-12 bg-light bg-opacity-10 rounded-4 text-xl-center">
                        <button class="btn btn-dark py-3 px-4 m-2 fw-semibold">
                            +
                        </button>
                    </div>
                </div>
            </div>

        </main>
        <footer>
            <!-- place footer here -->
            <h6 class="p-4 m-0 text-white-50 text-center"> &copy; 2023 - Nartag</h6>
        </footer>
        <!-- Bootstrap JavaScript Libraries -->
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>

</xsl:template>
</xsl:stylesheet>