function res = DiffusionTesting(x, t, l, alpha, phi, u, f, n)
    if nargin < 8 || n <= 0 
        n = 1000;
    end
    if nargin < 7
        f = @(X,T)0;
    end
    if nargin < 6
        u = [0 0];
    end
    if nargin < 5
        phi = @(X)0;
    end
    
    if strcmp(class(phi), 'function_handle') ~= 1
        phi = @(X)phi;
    end
    if u(1) ~= 0 || u(2) ~= 0
        phi1 = phi;
        phi = @(X) (phi1(X) - (u(1)*((l-X)/l) + u(2)*X/l));
    end
    
	val = zeros(size(x));
    for i = 1:n
        Cn = integral(@(x)(phi(x).*sin(i*pi*x/l)), 0, l) * 2/l;
        val = val + Cn .* exp(-t*alpha*(i*pi/l)^2) .* sin(i*pi*x/l);
    end

    res = val + (u(1)*((l-x)/l) + u(2)*x/l);
    figure
    plot(x,res);
    title(['Calculation results at t = ' num2str(t)]);
    xlabel('Length (x)');
    ylabel('Heat (u)');
end

