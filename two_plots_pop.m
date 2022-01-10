function two_plots_pop(exp_data,plot_props)
% the color and the shape of each line 
line1 =char(plot_props(1));
line2 =char(plot_props(2));
hold on
subplot(2,1,1)
plot(exp_data.Adata(:,1), exp_data.Adata(:,2), line1)
hold on
plot(exp_data.Bdata(:,1), exp_data.Bdata(:,2), line2)
hold on
subplot(2,1,2)
plot(exp_data.bothData(:,1), exp_data.bothData(:,2), line1)
hold on
plot(exp_data.bothData(:,1), exp_data.bothData(:,3), line2)
hold on
end

