function backtrace(object,ball,t,step,p)
global trace
global d
if step==p
    return
end
for i=1:5
    if sum(trace(1:end-1))==inf
        object.s=object.s+d(i,:).*object.v*t;
        ball=ballmove(ball,t);
        if estimate(object,ball,t)==0
            trace(step)=i;
            backtrace(object,ball,t,step+1,p);
            object.s=object.s-d(i,:).*object.v*t;
        end
    end
end
