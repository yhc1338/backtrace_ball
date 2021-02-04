# backtrace_ball

Move the ball from the left side to the right side meanwhile some moving barriers are on the road.

The method used in the code is backtrace algorithm in a dynamic process.

It will exist a error when the object pass the third barrier and prepare across the forth one.

I surpose the reason of the issue is that there are some issues in "object=objmove(object,ball,dt,5);" in the main.m.

The forth parameter in the function is to predict the next situation.

I surpose that increase the parameter will solve the issue as it will predicet the situation that the object can not pass the forth barrier.

But this operation will increases the cost of computing greatly, because it will increase the depth of the prediction exponentially.

And I did not verify the assumption.


The second demo

I modify the value of the parameter in the function "object=objmove(object,ball,dt,5)".

Change the value "5" to "10". Of couse, the fact that I can not get the result has been discovered as the cost is increasing.

To solve the issue, I revise the function "backtrace.m". Add a condition in backtrace loop. 

In the current code, the object will move at once when a no worry road will be found once.

It means that it is no neccessary to compute all of the road. It will become fast as soon as possible, which is the reason the the value can be changed from "5" to "10".

Then, change the priority of the moving direction. In the  first demo, the last right road is chosen. On the contrary,as the condition is added, the first one is carried out.

Although it is still slower than the last demo, it can pass the situation that the object pass the third barrier and prepare across the forth one.


The main aim of "readme" is to learn English.
