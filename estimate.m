function flag=estimate(object,ball,t)
global border
p=5;
flag=0;
ball1=ballmove(ball,t);
l=length(ball);
s=ones(1,l)*inf;
for i=1:l
    s(i)=norm(object.s-ball1(i).s,2);
    if s(i)<(object.r+ball1(i).r)+0.1*ball1(i).r
        flag=1;
    end
end
if (object.s(2)-object.r-border(3)<0||object.s(2)+object.r-border(4)>0)
    flag=1;
end
end