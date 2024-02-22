function xx = medfilt2_nd(y)
x=medfilt2(y,[2*T+1,2*T+1]);
c=(y==0)|(y==255);
xx=c.*x+(1-c).*y;
end

