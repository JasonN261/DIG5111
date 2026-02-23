function [b,a] = MyEQ(Fs, f, dbGain, Q, method)

    Fs = 10000;
    f = 2000;
    dbGain = 6;
    Q = 1;
    
    
    A = 10 * (dbGain/40);
    w0 = 2 * pi*f/Fs;
    alpha = sin(w0)/(2*Q);

switch method

    case "peaking"

    b0 = 1 + alpha*A;
    b1 = -2*cos(w0);
    b2 = 1 - alpha*A;
    a0 = 1 + alpha/A;
    a1 = -2*cos(w0);
    a2 = 1 - alpha/A;

    case "lpf"

    b0 = (1 - cos(w0))/2
    b1 = 1 - cos(w0)
    b2 = (1 - cos(w0))/2
    a0 = 1 + alpha
    a1 = -2*cos(w0)
    a2 = 1 - alpha 
end

    b = [b0,b1,b2]/a0;
    a = [a0,a1,a2]/a0;

    fvtool(b,a)

end