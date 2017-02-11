clc;
close all;
N = 600;
h = 0.001;
time = 0:h:(N-h);
x1 = runge_kutta_ps4(0.51066, N, h);
x2 = runge_kutta_ps4(0.51067, N, h);

plot(time,x1(1,:))
xlabel('Dimensionless Time');
ylabel('Omega');
title('Dimensionless Time vs Omega');
figure
plot(time,x1(2,:))
xlabel('Dimensionless Time');
ylabel('Eta');
title('Dimensionless Time vs Eta');
figure
plot(time,x1(3,:))
xlabel('Dimensionless Time');
ylabel('Zeta');
title('Dimensionless Time vs Zeta');
figure
plot(x1(1,:),x1(2,:))
xlabel('\omega');
ylabel('\eta');
title('Omega vs Eta');
figure
plot(x1(1,:),x1(3,:))
xlabel('Omega');
ylabel('Zeta');
title('Omega vs Zeta');
figure
plot(x1(2,:),x1(3,:))
hold on
plot(x2(2,:),x2(3,:), '-o')
xlabel('Eta');
ylabel('Zeta');
title('Eta vs Zeta');
