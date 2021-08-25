<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="2.0">


    <xsl:output omit-xml-declaration="yes" indent="yes" encoding="UTF-8" method="html"/>
    <xsl:strip-space elements="*"/>


    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>

    <!--Make HTML head and navigation bar, "Decypher all" button, and pills/tabs for Therologia's sections-->
    <xsl:template match="tei:TEI">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;
        </xsl:text>

        <html>
            <head>
                <!-- Required meta tags -->
                <meta charset="utf-8"/>
                <meta name="viewport"
                    content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                <!-- Bootstrap CSS -->
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <title>Therologia</title>
                <link rel="stylesheet" href="main.css"/>

                <!-- Google font -->
                <link rel="preconnect" href="https://fonts.googleapis.com"/>
                <link rel="preconnect" href="https://fonts.gstatic.com"/>
                <link
                    href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,400;0,700;1,400&amp;display=swap"
                    rel="stylesheet"/>


                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
                                                </script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
                                                </script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
                                                </script>

                <script src="main.js">
                                                </script>


            </head>
            <body>
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                    <a class="navbar-brand" href="#">Therologia by James Howell</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbar-body" aria-controls="navbar-body" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"/>
                    </button>
                    <div class="collapse navbar-collapse" id="navbar-body">
                        <ul class="navbar-nav mr-auto"/>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link"
                                    href="https://azimmern.github.io/le_petit_prof/about/">About the
                                    Editor</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="https://github.com/azimmern/therologia"
                                    >GitHub</a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <div class="container-fluid p-3" id="buttons">
                    <div class="container py-4 px-2">
                        <!-- HEADING ROW -->
                        <div class="row">
                            <div class="col-12" id="page-header">
                                <div class="btn-group float-right" role="group"
                                    aria-label="Button Group">
                                    <button type="button float-right" class="btn btn-primary"
                                        id="toggle-cypher-button">Decypher all</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--col-1-->
                    <div class="row">

                        <!--                        Make the Tablist of Pills  -->
                        <div class="col-sm-4">

                            <ul class="nav flex-column nav-pills" role="tablist">

                                <li class="nav-item bg-alice-blue">
                                    <a class="nav-link active" href="#panel3733645"
                                        data-toggle="tab">Title Page</a>
                                </li>

                                <li class="nav-item bg-alice-blue">
                                    <a class="nav-link" href="#panel20004647" data-toggle="tab"
                                        >Scope and Substance</a>
                                </li>

                                <li class="nav-item bg-alice-blue">
                                    <a class="nav-link" href="#panel49745562" data-toggle="tab"
                                        >Dedication</a>
                                </li>

                                <li class="nav-item bg-alice-blue">
                                    <a class="nav-link" href="#panel78977376" data-toggle="tab">To
                                        the Reader</a>
                                </li>

                                <li class="nav-item bg-alice-blue">
                                    <a class="nav-link" href="#panel99852470" data-toggle="tab"
                                        >Proem</a>
                                </li>

                                <li class="nav-item bg-alice-blue">
                                    <a class="nav-link" href="#panel23760128" data-toggle="tab">A
                                        Key to Morphandra</a>
                                </li>

                                <hr/>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel93292357" data-toggle="tab"
                                        >Section 1 - Otter</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel10659227" data-toggle="tab"
                                        >Section 2 - Asse</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel57932679" data-toggle="tab"
                                        >Section 3 - Ape</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel74614908" data-toggle="tab"
                                        >Section 4 - Hind</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel28290943" data-toggle="tab"
                                        >Section 5 - Mule</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel73800567" data-toggle="tab"
                                        >Section 6 - Fox</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel2199029" data-toggle="tab"
                                        >Section 7 - Boar</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel27895915" data-toggle="tab"
                                        >Section 8 - Wolf</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel64930735" data-toggle="tab"
                                        >Section 9 - Goat</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel43714029" data-toggle="tab"
                                        >Section 10 - Goose</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#panel45252367" data-toggle="tab"
                                        >Section 11 - Bees</a>
                                </li>
                            </ul>
                        </div>


                        <!-- Make the Individual "div" Sections by linking them to appropriate pill href-->



                        <!--                        First, build the div container-->
                        <div class="col-sm-8">
                            <div class="tab-content" id="tablist">



                                <!--                                Now run a loop on each div in the "front" part of the text, and store it's div-type as a variable to iterate on in a choose-when loop-->
                                <xsl:for-each select="/tei:TEI/tei:text/tei:front/tei:div">

                                    <xsl:variable name="div_type" select="@type"/>
                                    <xsl:choose>

                                        <xsl:when test="matches($div_type, 'title_page')">

                                            <div class="mt-3 ml-2 tab-pane fade show active"
                                                id="panel3733645" role="tabpanel"
                                                aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>
                                        </xsl:when>

                                        <xsl:when test="matches($div_type, 'summary')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel20004647"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>
                                        </xsl:when>

                                        <xsl:when test="matches($div_type, 'dedication')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel49745562"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>
                                        </xsl:when>

                                        <xsl:when test="matches($div_type, 'to_the_reader')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel78977376"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>
                                        </xsl:when>

                                        <xsl:when test="matches($div_type, 'poem')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel99852470"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>
                                        </xsl:when>

                                        <xsl:when test="matches($div_type, 'index')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel23760128"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>
                                        </xsl:when>

                                    </xsl:choose>

                                </xsl:for-each>

                                <hr/>
                                <!--                                Now let's do the same thing for sections/chapters in the text/body, with @n as the differentiating attribute-->



                                <xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:div">

                                    <xsl:variable name="div_number" select="@n"/>
                                    <xsl:choose>

                                        <xsl:when test="matches($div_number, '1')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel93292357"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="matches($div_number, '2')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel10659227"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="matches($div_number, '3')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel57932679"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="matches($div_number, '4')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel74614908"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="matches($div_number, '5')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel28290943"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="matches($div_number, '6')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel73800567"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>


                                        <xsl:when test="matches($div_number, '7')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel2199029"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="matches($div_number, '8')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel27895915"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="matches($div_number, '9')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel64930735"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="contains($div_number, '10')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel43714029"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="contains($div_number, '11')">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel45252367"
                                                role="tabpanel" aria-labelledby="...">

                                                <xsl:apply-templates/>
                                            </div>
                                        </xsl:when>

                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <footer class="bg-primary text-light pt-5 pb-2 px-5">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="mb-1">Dr. Arnaud Zimmern</h2>
                            <p class="mb-5">
                                <small>
                                    <em>
                                        Postdoctoral Fellow,
                                        <br/>
                                            Navari Family Center for Digital Scholarship
                                            <br/>
                                                University of Notre Dame
                                    </em>
                                </small>
                            </p>
                            <p> Acknowledgements </p>
                                <p>
                                    My thanks go to Dr. Dan Johnson, Dr. Sarah Connell, &amp; Dr. Randall Harrison!
                                </p>
                        </div>
                    </div>
                    
                    <hr/>
                        <div class="row mt-4">
                            <div class="col-sm-12">
                                <p>TEI-XML edition provided by the Oxford Text Archive</p>
                            </div>
                        </div>
                </footer>

            </body>

        </html>


    </xsl:template>



    <!--Make HTML class for footnote, non-displaying, with appropriate data-content and other data- attributes for popover-->
    <xsl:template match="tei:note">
        <xsl:variable name="currentNoteType" select="@type"/>


        <xsl:choose>
            <xsl:when test="matches($currentNoteType, 'foot')">
                <span>
                    <xsl:attribute name="class">footnote</xsl:attribute>
                    <xsl:attribute name="id">
                        <xsl:value-of select="@corresp"/>
                    </xsl:attribute>
                    <xsl:attribute name="data-content">
                        <xsl:value-of select="@ana"/>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="@target"/>
                    </xsl:attribute>
                    <xsl:attribute name="data-toggle">popover</xsl:attribute>
                    <xsl:attribute name="data-html">true</xsl:attribute>
                    <xsl:attribute name="data-placement">top</xsl:attribute>
                    <xsl:attribute name="data-animation">true</xsl:attribute>
                    <xsl:attribute name="data-trigger">focus</xsl:attribute>
                    <xsl:attribute name="tabindex">0</xsl:attribute>
                    <xsl:attribute name="data-offset">0, 0</xsl:attribute>
                    <xsl:apply-templates/>
                </span>

            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!--Make HTML class for "sic"-->
    <xsl:template match="tei:title">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>

    <xsl:template match="tei:p">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="tei:l">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="tei:item">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="tei:hi">
        <span class="original_italics">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="tei:q">
        <span>
            <xsl:attribute name="class">w3-panel</xsl:attribute>
        </span>
    </xsl:template>

    <xsl:template match="tei:quote">
        <xsl:variable name="quote_type" select="@corresp"/>

        <xsl:choose>
            <xsl:when test="matches($quote_type, '#proverb')">
                <span>
                    <xsl:attribute name="class">proverb</xsl:attribute>
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:when test="matches($quote_type, '#citation')">
                <span>
                    <xsl:attribute name="class">citation</xsl:attribute>
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:when test="matches($quote_type, '#fable')">
                <span>
                    <xsl:attribute name="class">fable</xsl:attribute>
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:when test="matches($quote_type, '#receipt')">
                <span>
                    <xsl:attribute name="class">receipt</xsl:attribute>
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>

        </xsl:choose>
    </xsl:template>

    <xsl:template match="tei:pb">

        <xsl:variable name="page_number" select="@n"/>
        <xsl:if test="$page_number > 0">
            <br/>
            <span class="page_number">page <xsl:value-of select="@n"/></span>
            <br/>
        </xsl:if>
    </xsl:template>

    <xsl:template match="tei:sic">
        <span>
            <xsl:attribute name="class">sic</xsl:attribute>
            <xsl:apply-templates/>
        </span>

    </xsl:template>

    <!--Make HMTL class for "correction"-->
    <xsl:template match="tei:corr">
        <span>
            <xsl:attribute name="class">correction d-none</xsl:attribute>
            <xsl:apply-templates/>
        </span>

    </xsl:template>

    <!--Make HMTL class for "speech-act"-->
    <xsl:template match="tei:sp">
        <p>
            <xsl:attribute name="class">speech-act</xsl:attribute>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!--Make HTML class for "speaker"-->
    <xsl:template match="tei:speaker">
        <h6>
            <xsl:attribute name="class">speaker</xsl:attribute>
            <xsl:apply-templates/>
            <br/>
        </h6>
    </xsl:template>

    <!--Make HTML class for various types of "head" sections, such as section summaries and alphabetical indices-->
    <xsl:template match="tei:head">
        <xsl:variable name="currentHead" select="@type"/>

        <xsl:choose>
            <xsl:when test="matches($currentHead, 'sub')">

                <span>
                    <xsl:attribute name="class">summary</xsl:attribute>
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:when test="matches($currentHead, 'index')">
                <h6>
                    <xsl:attribute name="class">alphabetical-index</xsl:attribute>
                    <xsl:apply-templates/>
                </h6>
            </xsl:when>

            <xsl:otherwise>

                <br/>
                <h5>
                    <xsl:attribute name="class">section-title</xsl:attribute>
                    <xsl:apply-templates/>
                </h5>
                <br/>
            </xsl:otherwise>
        </xsl:choose>




        <!--Search the placeography (tei:listPlace) and associate  class="cypher" and class="decypher" with cyphered and decyphered placeNames-->
    </xsl:template>
    <xsl:template match="tei:placeName">

        <xsl:variable name="currentPlace" select="@corresp"/>
        <xsl:for-each
            select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">
            <xsl:if test="matches(substring-after($currentPlace, '#'), .)">

                <span>
                    <xsl:attribute name="class">cypher</xsl:attribute>
                    <xsl:value-of select="."/>
                </span>
                <span>
                    <xsl:attribute name="class">decypher d-none</xsl:attribute>
                    <xsl:value-of select="../tei:placeName"/>
                </span>

            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--    Now we're going to match all the tei:persName tags, e.g. a "Cuprinian" or "Cuprinians".
    Then, define a variable "currentPersName" that stores the "corresp" content, e.g. corresp="#Cuprinia", of each tei:persName.
    Then, run a for-each loop for each place(xml:id), e.g. Cuprinia, in the placeography (i.e. listPlace).
    Then test to see if the variable currentPersName (with its # removed) matches the place(xml:id). 
    
    If so, choose:
    When "currentpersNametype" contains "plu" then in highlight write the "tei:note" (the plural forms, "Swedes") in lieu of the original persName (Cuprinians)
    Otherwise, in highlights write the tei:label (the singular form, Swede) in lieu of the original persName (Cuprinian) -->

    <xsl:template match="tei:persName">

        <xsl:variable name="origPersName" select="."/>
        <xsl:variable name="currentPersName" select="@corresp"/>
        <xsl:variable name="currentPersNametype" select="@type"/>

        <!--<xsl:apply-templates/>-->
        <xsl:for-each
            select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">

            <xsl:if test="matches(substring-after($currentPersName, '#'), .)">

                <xsl:choose>
                    <xsl:when test="contains($currentPersNametype, 'plu')">

                        <span>
                            <xsl:attribute name="class">cypher</xsl:attribute>
                            <xsl:value-of select="$origPersName"/>
                            <xsl:apply-templates/>
                        </span>
                        <span>
                            <xsl:attribute name="class">decypher d-none</xsl:attribute>
                            <xsl:value-of select="../tei:trait/tei:note"/>
                        </span>

                    </xsl:when>

                    <xsl:otherwise>

                        <span>
                            <xsl:attribute name="class">cypher</xsl:attribute>
                            <xsl:value-of select="$origPersName"/>
                            <xsl:apply-templates/>
                        </span>
                        <span>
                            <xsl:attribute name="class">decypher d-none</xsl:attribute>
                            <xsl:value-of select="../tei:trait/tei:label"/>
                        </span>
                    </xsl:otherwise>
                </xsl:choose>


            </xsl:if>

        </xsl:for-each>
    </xsl:template>

    <!--Lastly, and similarly, we're going to match all the tei:name tags, e.g. <name type="adj" corresp="#Cuprinia">
        -->

    <xsl:template match="tei:name">

        <xsl:variable name="origName" select="."/>
        <xsl:variable name="currentName" select="@corresp"/>
        <xsl:variable name="currentNametype" select="@type"/>
        <xsl:for-each
            select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">
            <xsl:if test="matches(substring-after($currentName, '#'), .)">

                <xsl:choose>
                    <xsl:when test="contains($currentNametype, 'adj')">
                        <span>
                            <xsl:attribute name="class">cypher</xsl:attribute>
                            <xsl:value-of select="$origName"/>
                        </span>
                        <span>
                            <xsl:attribute name="class">decypher d-none</xsl:attribute>
                            <xsl:value-of select="../tei:trait/tei:desc"/>
                        </span>
                    </xsl:when>
                </xsl:choose>

            </xsl:if>
        </xsl:for-each>

    </xsl:template>




</xsl:stylesheet>
