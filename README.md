# backtrace_ball

Move the ball from the left side to the right side meanwhile some moving barriers are on the road.

The method used in the code is backtrace algorithm in a dynamic process.

It will exist a error when the object pass the third barrier and prepare across the forth one.

I surpose the reason of the issue is that there are some issues in "object=objmove(object,ball,dt,5);" in the main.m.

The forth parameter in the function is to predict the next situation.

I surpose that increase the parameter will solve the issue as it will predicet the situation that the object will not pass the forth barrier.

But this operation increases the depth of the prediction exponentially, because it will increate the depth of the prediction by geometrically multiplying.

And I did not verify the assumption.
