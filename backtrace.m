function backtrace(object,ball,t,step,p)
global trace
global d
if step==p
    return
end
for i=1:5
    object.s=object.s+d(i,:).*object.v*t;
    ball=ballmove(ball,t);
    if estimate(object,ball,t)==0
        trace(step)=i;
        backtrace(object,ball,t,step+1,p);
        object.s=object.s-d(i,:).*object.v*t;
    end
end

% object1=object;
% object1.s=object.s+[1,0].*object.v*t;
% flag=estimate(object1,ball,t,p);
% if flag==1
%     object1.s=object.s+[0,-1].*object.v*t;
%     flag=estimate(object1,ball,t,p);
% end
% if flag==1
%     object1.s=object.s+[0,1].*object.v*t;
%     flag=estimate(object1,ball,t,p);
% end
% if flag==1
%     object1.s=object.s;
%     flag=estimate(object1,ball,t,p);
% end
% if flag==1
%     object1.s=object.s+[-1,0].*object.v*t;
%     flag=estimate(object1,ball,t,p);
% end
%
% % if d==0
% %     object.s=object.s;
% % end
% % if d==1&&(object(i).s(2)-object(i).r-border(3)<0||object(i).s(2)+object(i).r-border(4)>0)
% %     object.s=object.s+[0,1].*object.v*t;
% % end
% % if d==2&&(object(i).s(2)-object(i).r-border(3)<0||object(i).s(2)+object(i).r-border(4)>0)
% %     object.s=object.s+[0,-1].*object.v*t;
% % end
% % if d==3
% %     object.s=object.s+[-1,0].*object.v*t;
% % end
% % if d==4
% %     object.s=object.s+[1,0].*object.v*t;
% % end
%
%
%