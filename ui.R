######## sanita 3 in uno



shinyUI(navbarPage(" Prestazioni sanitarie 2012 ",
                   
                   
                   tabPanel("About",
                            includeMarkdown("data/sani_about.md")
                                         ),
                   
                   tabPanel("Sintesi",
                            sidebarPanel(
                                checkboxInput('logs', 'log_scala'),
                                checkboxInput('privati', 'solo privati'),
                                hr(),
                                selectInput('xs', 'Asse X', choices = c("tot_quantita","n_osservazioni"), width ="70%"),
                                selectInput('ys', 'Asse Y', choices = c("Azienda"="azienda","Disciplina"="nbranca"), width ="70%")   
                            ),
                            
                            mainPanel(
                                plotOutput('sintesi_plot')
                            )),
                   tabPanel("Disciplina",
                            sidebarPanel(
                                checkboxInput('logd', 'Log_scala'),
                                hr(),
                                selectInput('xd', 'Grandezza', choices = c("tot_quantita","n_osservazioni"), width ="70%"),
                                
                                selectInput("yd", "Scegli una disciplina:", 
                                            choices = S2_branca, width ="100%")
                            ),
                            mainPanel(
                                plotOutput("branche_plot", width = "100%", height = "520px")
                            )),
                   
                   
                   tabPanel("Azienda",
                            sidebarPanel(
                                checkboxInput('loga', 'Log_scala'),
                                hr(),
                                
                                selectInput('xa', 'Grandezza', choices = c("tot_quantita","n_osservazioni"), width ="70%"),
                                
                                selectInput("ya", "Scegli un'azienda:", 
                                            choices = S2_azienda, width ="70%")
                            ),
                            mainPanel(
                                plotOutput("aziende_plot",width = "100%", height = "450px")
                            )
                   )
                   )
                                       )

