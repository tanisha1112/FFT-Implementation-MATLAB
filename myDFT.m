function[X] = myDFT(x,N)
    L = length(x);
    if N > L
        % zero padding for N -L 
        x = [x zeros(N- L)]; 
    end

    X = zeros(1,N); % row vector
    for k=0:N-1
        for n = 0:N-1
            X(k+1) = X(k+1) + x(n+1)*exp(-1j*pi/2*n*k); % matlab starts from 1
        end
    end
end
