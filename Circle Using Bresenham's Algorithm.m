%Circle Using Bresenham's Algorithm
r=10;
x=0;
y=r;
d=3-2*r;
X=[];
Y=[];
while x<=y
      x=x+1;
      if d<0
         d=d+4*x+6;
      else
         y=y-1;
         d=d+4*(x-y)+10;
      end
      X=[X,x,y,-y,x,-x,-y,y,-x];
      Y=[Y,y,x,x,-y,-y,-x,-x,y];
end
plot(X,Y,'b*');
a=5;
b=5;
r=10;
x=0;
y=r;
d=3-2*r;
X=[];
Y=[];
while x<=y
    x=x+1;
    if d<0
        d=d+4*x+6;
    else
        y=y-1;
        d=d+4*(x-y)+10;
    end
    X=[X,x,y,-y,x,-x,-y,y,-x];
    Y=[Y,y,x,x,-y,-y,-x,-x,y];
end
plot(X+a,Y+b,'b*');
axis([-(a+r+3) (a+r+3) -(b+r+3) (b+r+3)])

