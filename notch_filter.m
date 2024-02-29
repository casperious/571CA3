function xx = notch_filter(y,R)
%NOTCH_FILTER Summary of this function goes here
%   Detailed explanation goes here
[M,N]=size(y);
Y=fftshift(fft2(y));
H=ones(256);
eps=2;
%[dx,dy]=meshgrid(1:N,1:M);
%d=abs(sqrt((dx-M/2).^2+(dy-N/2).^2)-R);

%H=H-(d<eps);
for i=1:M
    for j=1:N
        d=abs(sqrt((i-M/2)^2+(j-N/2)^2)-R);
        if d<eps
            H(i,j)=0;
        end
    end
end
XX=Y.*H;
xx=abs(ifft2(XX));
end

