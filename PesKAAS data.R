#Peskas basic graph showing 3 top taxa caught between 2018-2023

require(ggplot)
require(tidyverse)
require(wesanderson)
require(hrbrthemes)
hrbrthemes::import_roboto_condensed()  
as_factor(Peskas_Futuru, levels = "Year")


#Load data
Peskas_Futuru <- read.csv(file.choose()) 
names(Peskas_Futuru)

Peskas_Futuru %>% 
  ggplot(aes(x = Taxa, y=Catch_t, color=as.factor(Year))) +
  geom_boxplot()+
  facet_grid(Municipality~.)+
  labs(y = "Annual catch (tonnes)", x="", title="Top three fish taxa recorded by PesKAAS from 2018 to 2023")+
  theme(axis.text.x=element_text(angle=90,vjust=0.3),strip.text.y = element_text(angle = 0))+
  guides(color = guide_legend(title = "Year"))

Peskas_Futuru$Municipality <- factor(Peskas_Futuru$Municipality, levels = c("Covalima","Ainaro","Manufahi"))
                                     