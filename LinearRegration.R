model<-lm(AT~Waist,data=wc.at)
summary(model)
ac=data.frame(Waist=c(70,80,200))
wc=predict(model,newdata=ac)
wc
