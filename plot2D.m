function plot2D(T_history, Nx, Ny)

figure;

%plot intitial 

subplot(1,3,1);
imagesc(T_history(:,:,1));
colorbar
title('initial'); 

%plot mid 

subplot(1,3,2);
imagesc(T_history(:,:,round(end/2)));
colorbar 
title('middle');

%plot end 
subplot(1,3,3);
imagesc(T_history(:,:,end));
colorbar
title('Final');

sgtitle('2D heat diffusion'); 

%save 
if ~exist('results','dir')
    mkdir('results');
end 
saveas(gcf, 'results/heatmap.png');

end 