function values = runge_kutta_ps4(w_zero, N, h)
x1 = w_zero;
y1 = -0.60407;
z1 = 0.93;
x = zeros(3, N/h);
x(1,1) = x1;
x(2,1) = y1;
x(3,1) = z1;

for i = 2:(N/h-1)
    k1 = differential_equation_ps4(x(1, i-1), x(2, i-1), x(3, i-1));
    k2 = differential_equation_ps4(k1(1)*(h/2)+x(1, i-1), k1(2)*(h/2)+x(2, i-1), k1(3)*(h/2)+x(3, i-1));
    k3 = differential_equation_ps4(k2(1)*(h/2)+x(1, i-1), k2(2)*(h/2)+x(2, i-1), k2(3)*(h/2)+x(3, i-1));
    k4 = differential_equation_ps4(k3(1)*(h)+x(1, i-1), k3(2)*(h)+x(2, i-1), k3(3)*(h)+x(3, i-1));
    slope1 = k1(1) + 2*k2(1)+2*k3(1)+k4(1);
    slope2 = k1(2) + 2*k2(2)+2*k3(2)+k4(2);
    slope3 = k1(3) + 2*k2(3)+2*k3(3)+k4(3);
    x(1,i) = x(1, i-1)+(h/6)*(slope1);
    x(2,i) = x(2, i-1)+(h/6)*(slope2);
    x(3,i) = x(3, i-1)+(h/6)*(slope3);
end
values = x;