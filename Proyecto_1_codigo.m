% Proyecto 1 - MC 2415
% Integrantes 
% 15-10252 Castellano Pedro
% 15-10725 Inojosa Steven 
% 17-10071 Borges Sinais 

clear; clc;

%% Integración
[t1A,Y1A] = ode45(@Problema_1A,[0 50 ],[-0.1; 0]); % Problema 1 Caso A
[t1B,Y1B] = ode45(@Problema_1B,[0 300],[-0.1; 0]); % Problema 1 Caso B
[t2A,Y2A] = ode45(@Problema_2A,[0 50 ],[-0.1; 0]); % Problema 2 Caso A
[t2B,Y2B] = ode45(@Problema_2B,[0 200],[-0.1; 0]); % Problema 2 Caso B

% Problema 1A
figure(1)
plot(t1A,Y1A(:,1),'-',t1A,Y1A(:,2),'-')
title('Solución ecuación de movimiento Problema 1A');
xlabel('t [s]');
legend('y [m]','v [m/s]')

figure(2)
plot(t1B,Y1B(:,1),'-',t1B,Y1B(:,2),'-')
title('Solución ecuación de movimiento Problema 1B');
xlabel('t [s]');
xlim([50 250])
legend('y [m]','v [m/s]')

% Problema 2A
figure(3)
plot(t2A,Y2A(:,1),'-',t2A,Y2A(:,2),'-')
title('Solución ecuación de movimiento Problema 2A');
xlabel('t [s]');
legend('y [m]','v [m/s]')

% Problema 2B
figure(4)
plot(t2B,Y2B(:,1),'-',t2B,Y2B(:,2),'-')
title('Solución ecuación de movimiento Problema 2B');
xlabel('t [s]');
xlim([50 150])
legend('y [m]','v [m/s]')


%% Funciones 
function dy = Problema_1A(t,Y)
dseda = 0; wn    = 1; F     = 0; m     = 1;
dy = [Y(2); F/m - 2*dseda*wn*Y(2)-wn^2*Y(1)];
end

function dy = Problema_1B(t,Y)
dseda = 0.02; wn = 1; F = 0; m = 1;
dy = [Y(2); F/m - 2*dseda*wn*Y(2)-wn^2*Y(1)];
end

function dy = Problema_2A(t,Y)
dseda = 0; wn = 1; F = 1*sin(10*t); m = 1;
dy = [Y(2); F/m - 2*dseda*wn*Y(2)-wn^2*Y(1)];
end

function dy = Problema_2B(t,Y)
dseda = 0.02; wn = 1; F = 1*sin(10*t); m = 1;
dy = [Y(2); F/m - 2*dseda*wn*Y(2)-wn^2*Y(1)];
end





