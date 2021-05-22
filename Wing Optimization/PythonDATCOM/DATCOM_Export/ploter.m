%%% load data %%%
% taper 0.25 %
load('data_25.mat')
x25  = data_taper_25{1};
y25  = data_taper_25{2};
cl25 = data_taper_25{3};
cd25 = data_taper_25{4};
figure1 = figure();
mesh(x25, y25, (cl25./cd25)');
xlabel('AR');
ylabel('Sweep');
zlabel('L/D');
print(figure1, '25d.png', '-dpng','-r400');
figure2 = figure();
contour(x25, y25, (cl25./cd25)');
xlabel('AR');
ylabel('Sweep');
print(figure2, '25c.png', '-dpng','-r400');
% taper 0.28 %
load('data_28.mat')
x28  = data_taper_28{1};
y28  = data_taper_28{2};
cl28 = data_taper_28{3};
cd28 = data_taper_28{4};
figure3 = figure();
mesh(x28, y28, (cl28./cd28)');
xlabel('AR');
ylabel('Sweep');
zlabel('L/D');
print(figure3, '28d.png', '-dpng','-r400');
figure4 = figure();
contour(x28, y28, (cl28./cd28)');
xlabel('AR');
ylabel('Sweep');
print(figure4, '28c.png', '-dpng','-r400');
% taper 0.30 %
load('data_30.mat')
x30  = data_taper_30{1};
y30  = data_taper_30{2};
cl30 = data_taper_30{3};
cd30 = data_taper_30{4};
figure5 = figure();
mesh(x30, y30, (cl30./cd30)');
xlabel('AR');
ylabel('Sweep');
zlabel('L/D');
print(figure5, '30d.png', '-dpng','-r400');
figure6 = figure();
contour(x30, y30, (cl30./cd30)');
xlabel('AR');
ylabel('Sweep');
print(figure6, '30c.png', '-dpng','-r400');