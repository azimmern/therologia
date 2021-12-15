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
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>


        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <meta charset="utf-8"/>
                <meta name="viewport"
                    content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                <meta name="keywords"
                    content="arnaud zimmern, phd, postdoctoral, fellow, english, literature, howell, james, james howell, therologia, parly of beasts, restoration, misanthropy, animals, fables, language, jean de la fontaine, early modern medicine"/>
                <meta property="og:site_name" content="Therologia"/>
                <meta property="og:title" content="Therologia"/>
                <link rel="stylesheet"
                    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                    crossorigin="anonymous"/>
                <title>Therologia</title>
                <link rel="stylesheet" href="main.css"/>
                <link rel="stylesheet"
                    href="https://fonts.googleapis.com/css?family=Open+Sans|IM+Fell+English"/>
                <link rel="icon" href="favicon.ico"/>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"/>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
                                                            </script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
                                                            </script>
                <script src="https://hypothes.is/embed.js"/>
                <script src="main.js"/>
            </head>
            <body>

                <!--                NAVBAR -->
                <nav class="navbar navbar-expand-lg">

                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                fill="currentColor" class="bi bi-map" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
                                    d="M15.817.113A.5.5 0 0 1 16 .5v14a.5.5 0 0 1-.402.49l-5 1a.502.502 0 0 1-.196 0L5.5 15.01l-4.902.98A.5.5 0 0 1 0 15.5v-14a.5.5 0 0 1 .402-.49l5-1a.5.5 0 0 1 .196 0L10.5.99l4.902-.98a.5.5 0 0 1 .415.103zM10 1.91l-4-.8v12.98l4 .8V1.91zm1 12.98 4-.8V1.11l-4 .8v12.98zm-6-.8V1.11l-4 .8v12.98l4-.8z"
                                />
                            </svg>
                        </span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li>
                                <a href="#home">home</a>
                            </li>
                            <li>
                                <a href="#text">text</a>
                            </li>
                            <li>
                                <a href="#about">about</a>
                            </li>
                            <li>
                                <a href="#contact">contact</a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <!-- HOME -->
                <section id="home">
                    <div class="home flex-column">
                        <div>
                            <h1>Therologia</h1>
                            <h2>or the Parly of Beasts</h2>
                            <br/>
                            <h5> by James Howell</h5>

                            <br/>
                            <br/>
                            <br/>
                            <br/>

                            <p> scroll down to read</p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
                                    d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"
                                />
                            </svg>
                        </div>
                    </div>
                </section>

                <section id="text">
                    <div class="buffer"/>
                    <div class="row">
                        <div class="col-sm-2 sticky-top">
                            <ul class="nav flex-column nav-pills" role="tablist" id="toc">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#panel3733645"
                                        data-toggle="tab">Title Page</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#panel20004647" data-toggle="tab"
                                        >Scope and Substance</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#panel49745562" data-toggle="tab"
                                        >Dedication</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#panel78977376" data-toggle="tab">To
                                        the Reader</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#panel99852470" data-toggle="tab"
                                        >Proem</a>
                                </li>
                                <li class="nav-item">
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
                        
                        <div class="col-sm-1 sticky-top">
                            
                                <a role="button" id="back-to-top" class="btn">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                        fill="currentColor" class="bi bi-arrow-up-circle"
                                        viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"
                                        />
                                    </svg>
                                </a>
                            
                        </div>
                        
                        <div class="col-sm-5">
                            <div class="tab-content" id="tablist">

                                <!-- Now run a loop on each div in the "front" part of the text, 
                                    and store it's div-type as a variable to iterate on in a choose-when loop-->
                                <xsl:for-each select="/tei:TEI/tei:text/tei:front/tei:div">
                                    <xsl:variable name="div_type" select="@type"/>
                                    <xsl:choose>

                                        <xsl:when test="matches($div_type, 'title_page')">

                                            <div
                                                class="mt-3 ml-2 tab-pane fade show active title-page"
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

                                <!--Now let's do the same thing for sections/chapters in the text/body, with @n as the differentiating attribute-->



                                <xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:div">

                                    <xsl:variable name="div_number" select="@n"/>
                                    <xsl:choose>
                                        <xsl:when test="$div_number = '1'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel93292357"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '2'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel10659227"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '3'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel57932679"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '4'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel74614908"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '5'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel28290943"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '6'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel73800567"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>


                                        <xsl:when test="$div_number = '7'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel2199029"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '8'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel27895915"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '9'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel64930735"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '10'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel43714029"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>

                                        </xsl:when>

                                        <xsl:when test="$div_number = '11'">
                                            <div class="mt-3 ml-2 tab-pane fade" id="panel45252367"
                                                role="tabpanel" aria-labelledby="...">
                                                <xsl:apply-templates/>
                                            </div>
                                        </xsl:when>

                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>

                        <div class="col-sm-4 sticky-top h-100" id="footnotelist">

                            <div class="row">
                                <div class="col-12">
                                    <div class="btn-group float-left pt-5" role="group"
                                        aria-label="Button Group">
                                        <button type="button"
                                            class="btn btn-primary toggle-cypher-button"
                                            id="toggle-cypher-button">decode all </button>
                                    </div>


                                    <ul class="list-group list-group-flush">
                                        
                                        <li class="footnote list-group-item d-none" name="sample_footnote">
                                            <div type="button"
                                                class="footnote-close float-left">x</div>
                                            <h5>Sample footnote title</h5>
                                            <p>Notes will look something like this.</p>
                                            <h5>The name of the annotator goes here.</h5>
                                        </li>

                                        <xsl:for-each select="/tei:TEI/tei:text/tei:note">
                                            <xsl:variable name="currentNoteType" select="@type"/>
                                            <xsl:variable name="currentNoteAuthor" select="@resp"/>
                                            <xsl:variable name="id" select="@xml:id"/>

                                            <xsl:choose>
                                                <xsl:when
                                                  test="matches($currentNoteType, 'editorial')">
                                                  <li class="footnote list-group-item d-none">
                                                  <xsl:attribute name="id">
                                                  <xsl:value-of select="$id"/>
                                                  </xsl:attribute>
                                                  <div type="button"
                                                  class="footnote-close">x</div>

                                                  <h5 class="d-inline-block">
                                                  <xsl:value-of select="$id"/>
                                                  </h5>
                                                  <p>
                                                  <xsl:value-of select="."/>
                                                  </p>

                                                  <xsl:for-each
                                                  select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name">
                                                  <xsl:choose>
                                                  <xsl:when
                                                  test="matches($currentNoteAuthor, ./@xml:id)">
                                                  <h5>by <xsl:value-of select="."/></h5>
                                                  </xsl:when>
                                                  </xsl:choose>
                                                  </xsl:for-each>

                                                  </li>
                                                </xsl:when>
                                            </xsl:choose>
                                        </xsl:for-each>
                                    </ul>
                                </div>




                            </div>


                        </div>
                    </div>
                    <div class="buffer"/>
                </section>

                <!-- ABOUT -->
                <section id="about">

                    <div class="about flex-column">

                        <div class="row bg-opaque">
                            <div class="col-sm-6">
                                <h3>About the Text</h3>
                                <br/>
                                <p>If James Howell had to wager that one of his works would go
                                    on to be of value to futurity, he would certainly not have gone
                                    with his <em>Therologia</em>. His magnum opus, the <em>Familiar
                                        Letters</em>, would have been a safer bet. Be that as it
                                    may, <em>Therologia</em> remains a small jewel of wicked whimsy.
                                    Formed in the fires of England's Civil War, it speaks with
                                    relevance and sure-footedness in response to the optimisms and
                                    pessimisms of its day. Read in hindsight, it is a text full of
                                    gimlet-eyed foresight in an era many have labelled the
                                    Anthropocene and others, more cynically, will call the
                                    Misanthropocene. Howell's tale of Pererius, the wandering
                                    philosophical Ulysses seeking to restore humans back to their
                                    proper shape and stature, is full of mischief for anyone who
                                    wishes to see humanity as headed solely in one damned direction.
                                    On the island of Morphandra, one never knows with whom
                                    to side: the humanist in search of humanity or the misanthropes taking
                                    refuge in the innocence of animality. Along the way, Howell
                                    offers readers a valuable omnium-gatherum of political and
                                    economic history, natural philosophy, theology, and medicine
                                    akin to better-known works like Robert Burton's <em>Anatomy of
                                        Melancholy</em> or Thomas Browne's <em>Pseudodoxia
                                        Epidemica</em>. He does so, however, with a characteristic
                                    flair for languages, etymologies, puns, and neologisms that grew
                                    out of his extensive travels. In this tale of humans giving up
                                    on humanity, it is hard not to see Howell as responding to the
                                    world-weary with a babble of new tongues, a world of
                                    reinvented names. His is not so much a discourse of "hope for
                                    humanity" as a desire to refresh human discourse itself. In this
                                    edition, his feigned words have been decoded, his neologisms
                                    and neo-proverbs underlined, and his many puns and references
                                    made explicit, not merely to ease the path for first-time readers,
                                    but to help all readers stop and appreciate Howell's recreational (or
                                    rather re-creational) linguistics. I hope you enjoy.</p>
                            </div>
                            <div class="vl"/>
                            <div class="col-sm-6">
                                <h3>About the Editor</h3>
                                <br/>
                                <p><bold>Arnaud Zimmern</bold> is a postdoctoral fellow at the
                                    Navari Family Center for Digital Scholarship at the University
                                    of Notre Dame, where he specializes in digital cultural
                                    preservation with a focus on early modern works of literature,
                                    medicine, mathematics, and religion.<br/><br/> His work appears
                                    in <em>English Literary History,</em>
                                    <em>Memoria di Shakespeare</em>, <em>The John Donne
                                    Journal</em>, and <em>James Joyce Quarterly</em>.<br/><br/> Few endeavours are as
                                    rewarding as making newly available, with a little bit of spit,
                                    polish, and shine, a long-neglected work that deserves better
                                    reception. Arnaud is fortunate and grateful to have had time at
                                    the Navari Family Center for Digital Scholarship to give
                                        Howell's<em>Therologia</em> a deserved chance at reappraisal
                                    and magnify its qualities after a long winter in the
                                    shadows.</p>
                            <hr/>
                                <h3>About the Editing</h3>
                                <br/>
                                <p>Minimally encoded XML of the text was provided by the Oxford Text Archive, on top of which other interactive features were built in TEI-XML, Bootstrap, and JQuery. <br/>For instance, clicking on any blue-highlighted codename such as this one <span class="cypher" ref="#Tumontia">Tumontia</span> will reveal its decyphered analogue: <span class="decpyher d-none">Spain</span>. <br/>Click on the blue text again to hide the decoding. Use the Decode All/Hide All button to facilitate your reading and searching. Clicking on underlined text will open an associated scholarly note in the margin, while dotted underlining indicates a proverb or quote, usually one of Howell's invention or adaptation.</p>
                                <br/> 
                            </div>
                            
                            
                        </div>
                    </div>
                </section>

                <!-- ABOUT -->
                <section id="contact">
                    <footer class="bg-primary text-light pt-5 pb-2 px-5">


                        <div class="row">
                            <div class="col-sm-4" id="contact-info">
                                <h3>Get in touch</h3>
                                <a href="azimmern@nd.edu">azimmern@nd.edu</a>
                                <br/>
                                <a href="https://cds.nd.edu">Navari Family Center for Digital
                                    Scholarship</a>
                                <br/>
                                <hr/>

                                <p>Made with GitHub &amp; Bootstrap 4</p>
                            </div>

                            <div class="col-sm-4" id="acknowledgements">
                                <h3> Acknowledgements </h3>
                                <p> Special thanks to: <br/>
                                    <a href="https://directory.library.nd.edu/directory/employees/djohns27"
                                        > Dr. Dan Johnson,</a>
                                    <br/>
                                    <a href="https://cssh.northeastern.edu/person/sarah-connell/"
                                        >Dr. Sarah Connell,</a>
                                    <br/>
                                    <a href="https://randalseanharrison.com/">&amp; Dr. Randal Sean
                                        Harrison</a>
                                </p>
                                <hr/>
                                <p>TEI-XML edition provided by: <br/>
                                    <a href="https://ota.bodleian.ox.ac.uk/repository/xmlui/">the
                                        Oxford Text Archive</a></p>
                            </div>


                            <div class="col-sm-4" id="download-buttons">
                                <!-- GITHUB REPO LINK -->
                                <a href="https://github.com/azimmern/therologia"><button type="button" class="btn btn-primary px-3"><svg
                                        xmlns="http://www.w3.org/2000/svg" width="50" height="50"
                                        fill="currentColor" class="bi bi-github" viewBox="0 0 16 16">
                                        <path
                                            d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"
                                        />
                                    </svg> | fork on GitHub</button></a>


                                <a download="XML-XSLT_V2.0/main_v.2.0.xml"><button type="button" class="btn btn-primary px-3" href="main.xml"
                                    download=""><svg
                                        xmlns="http://www.w3.org/2000/svg" width="50" height="50"
                                        fill="currentColor" class="bi bi-arrow-down-square-fill"
                                        viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v5.793l2.146-2.147a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 1 1 .708-.708L7.5 10.293V4.5a.5.5 0 0 1 1 0z"
                                        />
                                    </svg> | download XML</button></a>

                            </div>
                        </div>
                    </footer>
                </section>
            </body>
        </html>
    </xsl:template>


    <!--Make HTML class for footnote_btn-->
    <xsl:template match="tei:ref">
        <xsl:variable name="currentNoteType" select="@type"/>
        <xsl:choose>
            <xsl:when test="matches($currentNoteType, 'editorial')">
                <span>
                    <xsl:attribute name="class">footnote_btn</xsl:attribute>
                    <xsl:attribute name="data-id">
                        <xsl:value-of select="@target"/>
                    </xsl:attribute>
                    <xsl:apply-templates/>
                </span>

            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <!--    Give h3 headers to titles-->
    <xsl:template match="tei:title">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>

    <!--    Give "stage" classes to mark off who the speakers of dialogue are   -->
    <xsl:template match="tei:stage">
        <span>
            <xsl:attribute name="class">stage</xsl:attribute>
        </span>
    </xsl:template>
    <!--    After every </p> tag, add a line-break for clarity     -->
    <xsl:template match="tei:p">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    <!--    After every line, add a line-break    -->
    <xsl:template match="tei:l">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    <!--    After every item, add a line-break    -->
    <xsl:template match="tei:item">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    <!--    for every italic emphasis <hi> inherited from the Oxford Text Archive transcription, add a span designating "original_italics"    -->
    <xsl:template match="tei:hi">
        <span class="original_italics">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <!--    For every <q>, add a class "q"; this can come in handy for later styling in css   -->
    <xsl:template match="tei:q">
        <span>
            <xsl:attribute name="class">q</xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--    We have several "types" of quotes (proverbs, citations, fables, receipts, and scripture);
        here's a way to make sure they're all delineated in HTML as spans with classes that can be styled in css later-->
    <xsl:template match="tei:quote">
        <xsl:variable name="quote_type" select="@type"/>

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

            <xsl:when test="matches($quote_type, '#scripture')">
                <span>
                    <xsl:attribute name="class">scripture</xsl:attribute>
                    <xsl:apply-templates/>
                </span>
            </xsl:when>

            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>

        </xsl:choose>
    </xsl:template>

    <!--    Turn page-breaks <pb> into page numbers with line-breaks        -->
    <xsl:template match="tei:pb">
        <xsl:variable name="page_number" select="@n"/>
        <xsl:if test="$page_number > 0">
            <br/>
            <span class="page_number">page <xsl:value-of select="@n"/></span>
            <br/>
        </xsl:if>
    </xsl:template>
    <!--    Make a class for "sic"        -->
    <xsl:template match="tei:sic">
        <span>
            <xsl:attribute name="class">sic</xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--Make class for "correction"-->
    <xsl:template match="tei:corr">
        <span>
            <xsl:attribute name="class">correction d-none</xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--Make  class for "speech-act"-->
    <xsl:template match="tei:sp">
        <p>
            <xsl:attribute name="class">speech-act</xsl:attribute>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!--Make  class for "speaker"-->
    <xsl:template match="tei:speaker">
        <h6>
            <xsl:attribute name="class">speaker</xsl:attribute>
            <xsl:apply-templates/>
            <br/>
        </h6>
    </xsl:template>

    <!--Make  class for various types of "head" sections, such as section summaries and alphabetical indices-->
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
    </xsl:template>

    <!--Now search the placeography (tei:listPlace) and associate  class="cypher" and class="decypher" 
        with cyphered and decyphered placeNames-->

    <xsl:template match="tei:placeName">

        <xsl:variable name="currentplaceName" select="."/>
        <xsl:variable name="currentRef" select="@ref"/>
        <xsl:for-each
            select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">
            <xsl:if test="matches(substring-after($currentRef, '#'), .)">

                <span>
                    <xsl:attribute name="class">cypher</xsl:attribute>
                    <xsl:value-of select="$currentplaceName"/>
                </span>
                <span>
                    <xsl:attribute name="class">decypher d-none</xsl:attribute>
                    <xsl:value-of select="../tei:placeName"/>
                </span>

            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!-- Do the same for the tei:names-->

    <xsl:template match="tei:name[@type = 'cypher']">
        <xsl:variable name="currentName" select="."/>
        <xsl:variable name="currentPlace" select="@ref"/>
        <xsl:for-each
            select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">
            <xsl:if test="matches(substring-after($currentPlace, '#'), .)">

                <span>
                    <xsl:attribute name="class">cypher</xsl:attribute>
                    <xsl:value-of select="$currentName"/>
                </span>
                <span>
                    <xsl:attribute name="class">decypher d-none</xsl:attribute>
                    <xsl:value-of select="../tei:note/tei:w[@type = 'adjectival']"/>

                </span>

            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <!--    Now we're going to match all the tei:persName tags, e.g. a "Cuprinian" or "Cuprinians".
    Then, define a variable "currentPersName" that stores the "ref" content, e.g. ref="#Cuprinia".
    Then, run a for-each loop for each place(xml:id), e.g. Cuprinia, in the placeography (i.e. listPlace).
    Then test to see if the variable currentPersName (with its # removed) matches the place(xml:id). 
    
    If so, choose:
    When "currentpersNametype" contains "plu" then in highlight write the "tei:note" (the plural forms, "Swedes") in lieu of the original persName (Cuprinians)
    Otherwise, in highlights write the tei:label (the singular form, Swede) in lieu of the original persName (Cuprinian) -->

    <xsl:template match="tei:persName">

        <xsl:variable name="origPersName" select="."/>
        <xsl:variable name="currentRef" select="@ref"/>
        <xsl:variable name="currentSubtype" select="@subtype"/>

        <xsl:for-each
            select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:settingDesc/tei:listPlace/tei:place/@xml:id">

            <xsl:variable name="pluralPersName" select="../tei:note/tei:w[@subtype = 'plural']"/>
            <xsl:variable name="singularPersName" select="../tei:note/tei:w[@subtype = 'singular']"/>

            <xsl:if test="matches(substring-after($currentRef, '#'), .)">

                <xsl:choose>
                    <xsl:when test="contains($currentSubtype, 'plu')">

                        <span>
                            <xsl:attribute name="class">cypher</xsl:attribute>
                            <xsl:value-of select="$origPersName"/>
                            <xsl:apply-templates/>
                        </span>
                        <span>
                            <xsl:attribute name="class">decypher d-none</xsl:attribute>
                            <xsl:value-of select="$pluralPersName"/>
                        </span>

                    </xsl:when>

                    <xsl:when test="contains($currentSubtype, 'sing')">

                        <span>
                            <xsl:attribute name="class">cypher</xsl:attribute>
                            <xsl:value-of select="$origPersName"/>
                            <xsl:apply-templates/>
                        </span>
                        <span>
                            <xsl:attribute name="class">decypher d-none</xsl:attribute>
                            <xsl:value-of select="$singularPersName"/>
                        </span>
                    </xsl:when>
                </xsl:choose>


            </xsl:if>

        </xsl:for-each>

        <xsl:if test="not($currentRef) and not($currentSubtype)">
            <xsl:apply-templates/>
        </xsl:if>
    </xsl:template>



</xsl:stylesheet>
