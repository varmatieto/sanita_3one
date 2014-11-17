######## sanita 3 in uno


shinyServer(

    function(input, output) {
        output$sintesi_plot <- reactivePlot(function() {
            
            dataset <- S2_azbrtp
            if (input$privati)   dataset <-dataset[dataset$tipo=="Priv",]
            
            xx<-input$xs
            if (input$logs)   xx<-paste("log (", xx ,")")
            toString(xx)
            
            p <- ggplot(dataset, aes_string(x= input$ys, y= xx, fill = "tipo")) +  
                geom_bar(stat="identity") +  coord_flip() +
                scale_y_continuous(labels = comma)
            
            if (input$ys=="nbranca")
                p<-p + scale_x_discrete(labels = mybranche)
            if (input$ys=="azienda")
                p<-p + scale_x_discrete(labels = myaziende)
            
            
            print(p)
            
        }, height=550)
        
        output$aziende_plot <- renderPlot({
          
          xx<-input$xa
          if (input$loga)   xx<-paste("log (", xx ,")")
          toString(xx)
          
          
          yy=input$ya
          mytitle= paste( "Prestazione per azienda =", 
                          names (S2_azienda [S2_azienda== yy]))
            
            ggplot(subset(S2_azbrtp, nazienda ==yy), 
                   aes_string(x="nbranca", y= xx , col="tipo")) + 
                geom_point(shape=19, size = 5) +  coord_flip() + 
                ggtitle(mytitle) + 
                scale_colour_manual(name = "tipo", values = myColors) +
                scale_x_discrete(labels = mybranche) +
                scale_y_continuous(labels = comma)
            
        }, height=550)
        
        output$branche_plot <- renderPlot({
            
            xx<-input$xd
            if (input$logd)   xx<-paste("log (", xx ,")")
            toString(xx)
            
            
            yy=input$yd
            mytitle= paste( "Prestazioni per disciplina=", 
                            names (S2_branca [S2_branca== yy]))
            
            ggplot(subset(S2_azbrtp, nbranca ==yy), 
                   aes_string(x="azienda", y=xx , col="tipo")) +  
                geom_point(shape=19, size = 5) +  coord_flip() + 
                ggtitle(mytitle) + 
                scale_colour_manual(name = "tipo",values = myColors) +
                scale_y_continuous(labels = comma)
            
        }, height=550)
    }
)