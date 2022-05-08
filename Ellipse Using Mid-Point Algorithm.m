%Ellipse Using Mid-Point Algorithm
X0=2;
Y0=3;
a=3600/2; 
b=1000/2;
x=0;
y=b;
p1=(b*b)-(a*a*b)+(a*a/4);
dx=2*b*b*x;
dy=2*a*a*y;
X=[]; 
Y=[];
i=1;
while (dx < dy)
    X(i)=x;
    Y(i)=y;
    if (p1<0)
        x=x+1;
        dx=2*b*b*x;
        p1=p1+dx+b*b;
    else
        x=x+1;
        y=y-1;
        dx=2*b*b*x;
        dy=2*a*a*y;
        p1=p1+dx-dy+b*b;
    end
    i=i+1;
end
p2=b*b*(x+1/2)*(x+1/2)+a*a*(y-1)*(y-1)-a*a*b*b;
while (dx>=dy && y>0)
    X(i) = x;
    Y(i) = y;
    if (p2>0)
        x=x;
        y=y-1;
        dy=2*a*a*y;
        p2=p2-dy+a*a;
    else
        x=x+1;
        y=y-1;
        dy=2*a*a*y;
        dx=2*b*b*x;
        p2=p2+dx-dy+a*a;
    end
    i=i+1;
end
plot(X+X0,Y+Y0);