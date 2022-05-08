%DDA Line Algorithm
x1=2;
y1=6;
x2=16;
y2=19;
dx=x2-x1;
dy=y2-y1;
numsteps=max(abs(dx),abs(dy));
xinc=dx/numsteps;
yinc=dy/numsteps;
X=[];
Y=[];
for i=1:numsteps+1
    X(i)=x1;
    Y(i)=y1;
    x1=x1+xinc;
    y1=y1+yinc;
end
X=round(X);
Y=round(Y);
plot(X,Y);
title('DDA Line Algorithm');
