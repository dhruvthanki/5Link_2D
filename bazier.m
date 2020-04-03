function y = bezier(s,M,a)
y = 0;
for k = 0:M
    coff = factorial(M)/( factorial(k)*factorial(M-k) );
    b = a(k+1)*coff*(s.^k).*((1-s).^(M-k));
    y = y + b;
end