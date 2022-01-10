function [] = anotaciaYoPlot(exp_data)
subplot(2,1,1)
ti=['data file :',exp_data.title]
title(ti)
xlabel(exp_data.timeTitle);
ylabel('separate systems');
legend([exp_data.ATitle,exp_data.BTitle])
subplot(2,1,2)
xlabel(exp_data.timeTitle);
ylabel('shared system');
legend([exp_data.ATitle,exp_data.BTitle])
end

