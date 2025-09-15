% time vector
t = 0:0.01:2*pi;

f=2;

amplitude=1;

y=amplitude*sin(2*pi*f*t);
y_noisy=y+0.2*randn(size(t));

figure;

plot(t,y,'b','LineWidth',2);
hold on;
plot(t,y_noisy,'r--','LineWidth',1.5);

xlabel('Time(s)');
ylabel('Amplitude');
title('Sine Wave Generator & Visualizer');
legend('Original','Noisy');
grid on;

y_filtered= movmean(y_noisy,5);
plot(t,y_filtered,'g','LineWidth',2);
legend('Original','Noisy','Filtered');

saveas(gcf,'SineWavePlot.png');