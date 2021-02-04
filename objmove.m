function object=objmove(object,ball,t,step) 
global trace
global d
trace=ones(1,step).*inf;
d=[1 0;0 0;0 1;0 -1;-1 0];
backtrace(object,ball,t,1,step)
object.s=object.s+d(trace(1),:).*object.v*t;
