function res = collocation(L, U, x, f, h)
    if varargin < 5
        h = 0.001;
    end
    if varargin < 4
        f = zeros(size(U,1),1);
    end
    if size(L,1) == 0
        error('');
    end
    if size(x,1) == 1
        x = x';
    end
    
    k = size(L,2);
    xi = (min(x)-h*k : h : max(x)+h*k)';
    M = zeros(size(U,1), size(x,1));
    for i = 1:size(U,1)
        Ui = U(i);
        A = difftable(Ui(x), size(L,2)-1);
        M(i,:) = L * (derivative(xi, A, x))';
    end
    
    res = M\f;
end

function res = difftable(x, n)
    k = size(x,1);
    res = zeros(k,n+1);
    res(:,1) = x;
    for i = 2:n+1
        for j = i:k-i+1
            res(j,i) = res(j+1,i-1) - res(j-1,i-1);
        end
    end
end

function res = derivative(xi, A, x, n, h)
    if varargin < 5
        h = 0.001;
    end
    if varargin < 4
        res = zeros(size(x,1),size(A,2));
        res(:,1) = A(:,1);
        for i = 2:size(A,2)
            res(:,i) = derivative(xi, A, x, i-1);
        end
    else
        res = x;
        for i = 1:size(x,1)
            k = find(xi == x(i));
            if size(k,0) == 0
                k = 1;
                while x(i) > xi(k+1) && x(i) < xi(k)
                    k = k + 1;
                end
                res(i) = (A(k,n+1) + (A(k+1,n+1)-A(k,n+1))*(x(i)-xi(k))/h)/(2*h)^n;
            else
                res(i) = A(k,n+1)/(2*h)^n;
            end
        end
    end
end