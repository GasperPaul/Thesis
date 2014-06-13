function [res] = SimulateHeatEq(alpha, x, u0, u, t_end, tau, N, options)
    if nargin < 8
        options = 0;
    end
    if nargin < 7
        N = 50; % количество пространственных узлов
    end
    if nargin < 6
        tau = t_end/100; % шаг сетки по времени
    end
    T0 = u0;       % начальная температура
    Tl = u(1);     % температура на границе, x=0
    Tr = u(2);     % температура на границе, x=L
    h  = x/(N-1);  % шаг сетки по пространственной координате
    
    if strcmp(class(alpha), 'function_handle') ~= 1
        phi = @(X)aplha;
    end
    res = zeros(N, t_end/tau);
    T = zeros(N, 1);
    a = zeros(N, 1);
    b = zeros(N, 1);
    % поле температуры в начальный момент времени
    for i=1:N
       T(i) = T0(h*i); 
    end
    % интегрирование нестационарного уравнения теплопроводности
    time = 0;k=1;
    while time < t_end
        time = time + tau;
        % определение начальных прогоночных коэффициентов 
        % на основе левого граничного условия
        a(1) = 0;
        b(1) = Tl;
        % определение остальных прогоночных коэффициентов 
        for i = 2:N-1
            % a(i), b(i) - прогоночные коэффициенты
            tmp = (2 - a(i-1)) * tau + 1/alpha(time) * h^2;
            a(i) = tau/tmp;
            b(i) = (tau * b(i-1) + 1/alpha(time) * h^2 * T(i))/tmp;
        end
        % определение значения температуры на правой границе
        T(N) = Tr;
        % определение неизвестного поля температуры
        for i = N-1:-1:1
          T(i) = a(i) * T(i+1) + b(i);  
        end
        res(:,k) = T; 
        k = k+1;
    end
    
    % рисование графика
     figure
     if options
        plot(h * (0:N-1),T);
        title(['Simulation results at t = ' num2str(t_end)]);
        xlabel('Length (x)');
        ylabel('Heat (u)');
     else
         surface(tau * (0:size(res,2)-1), h * (0:N-1),  res);
         title('Simulation results');
         xlabel('Time (t)');
         ylabel('Length (x)');
         zlabel('Heat (u)');
         view(3);
     end
end