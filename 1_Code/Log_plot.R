install.packages("ggplot2")
library(ggplot2)

title = "lr=0.0005 + Layer Norm"

Evaluation_Data = X17_54_49H_eGCN_Layer_lr_0_0005_evaluation_log


# MAE 3 라인과 ylime(2,5)
ggplot(data= Evaluation_Data, mapping = aes(x=epoch, y=MAE, group=stage, color=stage)) + geom_line() + ylim(2,5) + geom_line(aes(y=3),color='orange')+ ggtitle(title)

# MAE와 Std의 구간 sclae *0.5 리본 
ggplot(data= Evaluation_Data, mapping = aes(x=epoch, y=MAE, group=stage, color=stage)) + geom_line()   + geom_line(aes(y=3),color='orange')+ ggtitle(title) + geom_ribbon((aes(y=MAE, ymin=MAE-Std*0.5, ymax=MAE + Std*0.5)), alpha=0.05, colour = NA)



loss_Data = X17_54_49H_eGCN_Layer_lr_0_0005_Train_log
# Loss
ggplot(data= loss_Data, mapping = aes(x=epoch, y=loss, group=stage, color=stage)) + geom_line(alpha=0.7) + ggtitle(title) + ylim(0,10)

