function ball=ballmove(ball,t)
global border
l=length(ball);
for i=1:l
    ball(i).s=ball(i).s+ball(i).v*t;
     % judge whether collision the border
    if ball(i).s(2)-ball(i).r-border(3)<0||ball(i).s(2)+ball(i).r-border(4)>0
        ball(i).s=ball(i).s-ball(i).v*t;
        ball(i).v=-ball(i).v;
    end
end
