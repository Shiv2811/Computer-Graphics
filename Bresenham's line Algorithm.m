%Bresenham's line Algorithm
x1=2;
y1=6;
x2=13;
y2=17;
dx=x2-x1;
dy=y2-y1;
P=2*dy-dx;
A=[];
B=[];
for i=1:dx+1
    A(i)=x1;
    B(i)=y1;
    if P<0
        P=P+2*dy;
    else
        P=P+2*dy-2*dx;
        y1=y1+1;
    end
    x1=x1+1;
end
plot(A,B,'b');
title('Bresenham Line Algorithm');