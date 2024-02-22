function xx = medfilt2_nd(y)
T=1;
y = double(y);
x=medfilt2(y,[3 3]);
c=(y==0)|(y==255);
xx=c.*x+(1-c).*y;
end

