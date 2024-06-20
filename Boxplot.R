library(dplyr)
library(ggplot2)

boxplot<-proteins_of_interest%>%
  ggplot(., aes(x = Proteins, y = log2(Normalized_counts), fill=TLS_Vs_Epithelium))+ 
  ggtitle("Name of the plot")+ #Labelling the desired plot (Title)
  geom_boxplot() +
  theme_bw()
boxplot+
  stat_compare_means(method = "wilcox.test", label = "p.signif")+
  theme(legend.title = element_text(size=14),
        legend.text = element_text(size=14),
        plot.title = element_text(size = 14),axis.title = element_text(size=14),
        axis.text.x=element_text(angle=90, size = 14) ,axis.text.y = element_text(angle=0, size = 14))