function[X] = myFFT_139(x,N)
    L = length(x);
    %preprocessing input
    if N < L
        %truncate x
        x = x(1:N);
    end

    if N > L
        % zero padding for N -L 
        x = [x zeros(N- L)]; 
    end
    X = zeros(1,N); % row vector

    % reorder input 
    x = bitrevorder(x);
    Half=1;
    stages = log2(N);
    %loop over stages
    for s=1:stages
        group_size = 2^s;
        %loop over group of butterflies
        for group= 0:(group_size):(N-1)
            %loop over butterfly
            for n=0:(Half-1)
                index =n+group+1;
                k = 2^(stages-s);
                bin =[x(index),x(index + Half)];
                w = exp((-1i)*(2*pi)*k *n/N);
                bout = butterfly(bin,w); 
                % indexing starts from 1
                x(index) = bout(1);
                x(index + Half) = bout(2);
                
            end
        end
    Half=2*Half;    
    end
X = x;
end

function[bout] = butterfly(bin,twiddle)
    A= bin(1) + twiddle *bin(2);
    B = bin(1) - twiddle * bin(2);
    bout = [A,B];
end


