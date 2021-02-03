clc
clear
dt=0.01;
global border
border=[-5 20 -5 5];
object=create(1,[0,0],6);
ball(1)=create(1,[3,0],[0,3]);
ball(2)=create(1,[6,0],[0,-3]);
ball(3)=create(1,[9,0],[0,3]);
ball(4)=create(1,[12,0],[0,-3]);
while(1)
    ball=ballmove(ball,dt);
    object=objmove(object,ball,dt,5);
    plotball(ball)
    hold on
    plotball(object)
    drawnow
%     pause(0.001)
end