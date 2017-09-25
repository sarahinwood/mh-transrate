library(data.table)
library(ggplot2)

transrate.contigs <- fread('output/Trinity/contigs.csv')
plot.data <- melt(transrate.contigs, id.vars = "contig_name", measure.vars = c("sCnuc", "sCcov", "sCord", "sCseg")) 

ggplot(plot.data, aes(x=value))+facet_wrap(~variable)+geom_freqpoly(binwidth=0.01)+scale_y_log10()
