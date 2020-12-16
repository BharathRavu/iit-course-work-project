# This is to solve two factor anova problem taken from montgomery 5th edition(14.3)
# Statement: The results of an experiment involving a storage battery used in the launching 
# mechanism of a shoulder-fired ground-to-air missile were presented. Three material 
# types can be used to make the battery plates. The objective is to design a battery 
# that is relatively unaffected by the ambient temperature. The output response from 
# the battery is effective life in hours. Three temperature levels are selected and a 
# factorial experiment with four replicates is run.
# the data is stored in a file input.txt

mat.temp.data <- read.table("input.txt",header=TRUE);
attach(mat.temp.data);
results<-lm(Y~Mat+Temp+Mat*Temp,data=mat.temp.data);
anova(results)