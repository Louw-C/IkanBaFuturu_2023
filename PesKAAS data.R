#Peskas basic graph showing 3 top taxa caught between 2018-2023

require(ggplot2)
require(tidyverse)
require(wesanderson)
require(hrbrthemes)
hrbrthemes::import_roboto_condensed()  
as_factor(Peskas_Futuru, levels = "Year")


#Load data
Peskas_Futuru <- read.csv(file.choose()) 
names(Peskas_Futuru)

Peskas_Futuru %>% 
  ggplot(aes(x = catch_name_en, y=landing_weight_kg, color=(region))) +
  geom_boxplot()+
  labs(y = "Catch (kg)", x="", title="Average annual catch from 2018 to 2023")+
  theme(axis.text.x=element_text(angle=90,vjust=0.3),strip.text.y = element_text(angle = 0))+
  guides(color = guide_legend(title = "Year"))

Peskas_Futuru$region <- factor(Peskas_Futuru$region, levels = c("Covalima","Ainaro","Manufahi", "Viqueque"))
                                     