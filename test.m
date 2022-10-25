% copy and paste this code into your command console:
figure
plot(rand(10,1),rand(10,1),'ko')
% a figure should open up with a nice plot in it
% now run this:
clf
% the figure should be emptied
% now run this:
figure
plot(rand(10,1),rand(10,1),'ko')
% and then this:
cla
% do you see the difference?
