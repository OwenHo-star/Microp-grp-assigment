cost = input ('Enter the cost of the first itrm: ');
total_cost = 0;

while cost>0
    total_cost = total_cost+cost
    cost = input ('enter the cost agian:');
end

%% question 6

s= input('enter a number s: ');
r = input('enter a number r: ');

if s==0
    d=r;
else
    while r~=0
        if r<s
            d=s;
            s=r;
            r=d;
        end
        r=r-s;
    end
    d=s;
end
disp(d)

%% question 9

close all;

t = [0 20 40 56 68 80 84 96 104 110];
v = [0 20 20 38 80 80 100 100 125 125];

t1 = 0:110;
new_v1 = interp1(t,v,t1,'spline');
new_v2 = interp1(t,v,t1,'pchip');

figure
subplot(2,1,1)
plot(t,v,'-k','DisplayName','originaldata')
hold on
plot(t1,new_v1,'-*r','DisplayName','spline')
xlim([0 120])
ylim([0 150])
xlabel('time')
ylabel('velocity')
legend('location','northeast')

subplot(2,1,2)
plot(t,v,'-k','DisplayName','originaldata')
hold on
plot(t1,new_v2,'-*r','DisplayName','pchip')
xlim([0 120])
ylim([0 150])
xlabel('time')
ylabel('velocity')
legend('location','northeast')

%% question 10
close all;

f = [1 3];
g = [1 0 2];
x = -10:10;

y_f = polyval(f,x);
y_g = polyval(g,x);

figure
plot(x,y_f,'-r','DisplayName','f(x)')
hold on
plot(x,y_g,'-k','DisplayName','g(x)')
xlim([-12 12])
ylim([-5 12])
xlabel('x')
ylabel('y')
legend('Location','southeast')

%% question 2

% y = (5*x.^2)+(2*x)+4
y = [5 2 4];
x = 0:0.1:10;

new_y = polyval(y,x);

figure
plot(x,new_y)
xlim([0 10])
ylim([0 600])
xlabel('x-axis')
ylabel('y-axis')
title('y=5x^2 + 2x + 4')
grid on

%% question 4
Z=[1.2 33.6; 1200 33600];

fprintf('X is %6.2f meters or %8.3f mm\n',4.5,4500,Z)

%% question 9

close all;
FR = [0 9.7 15.6 21.3 31.7 35.2 38.4 42.9];
Pd = [0 0.28 0.52 0.99 1.69 2.31 2.78 3.21];

x = 0:42.9;

figure
for i =1:4
    subplot(2,2,i)
    method={'nearest','linear','spline','pchip'};
    new_Pd= interp1(FR,Pd,x,method{i});
    plot(FR,Pd,'--*b')
    hold on
    plot(x,new_Pd,'-k')
    p={'Nearest Interpolation','Linear Interpolation','Spline Interpolation','Pchip Interpolation'};
    xlim([0 40])
    ylim([0 4])
    xlabel('Flow Rate (liter/sec)')
    ylabel('Pressure (kPa)')
    title(p{i})
    grid on
end

%% question 1
x = -10:0.1:10;

f = x.^3+7*x-20;
g = 10*x.^2-5*x+15;

figure
plot(x,f,'-.d k','DisplayName','f(x)')
hold on 
plot(x,g,'-^g','DisplayName','g(x)')
xlim([-10 10])
ylim([-1500 1500])
xlabel('x')
ylabel('y')
title('multiple plot of f(x) and g(x)')
legend('Location','northeast')

grid on

%% question 5
t1 = 0:1;
t2 = 1:0.1:6;

y1 = t1;
y2 = 1./t2;

figure
plot(t1,y1,'-k')
hold on
plot(t2,y2,'-k')

xlim([0 6])
ylim([0 1])
xlabel('Time(s)')
ylabel('y Function')
title('Function Plotting')

%% question 6
age = 20:60;
HRmax = 207-age.*0.7;
disp('Age(years old) HRmax(bmp)')
fprintf('%.2f  %.2f\n',[age;HRmax])

figure
plot(age,HRmax)
xlabel('Age')
ylabel('HRmax')
xlim([20 60])

%% question 5

q1 = 50;
x = [0 q1 q2 q3 100]
y = [0 0.25 0.5 0.75 1]









