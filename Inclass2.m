%% Inclass assignment 2
%test edit
% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers
for ii = 1:20
    % Adam Howard answer:
    d = (ii-1)/2;
    x = floor(d);
    if d == x
        disp(num2str(ii))
    end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

% Adam Howard answer:
x = [1:20]';
d = 1;
while d < 20;
    disp( x(d,:))
    d = d+2; 
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

% Adam Howard answer:
x = [1:2:20]';
disp([num2str(x)])

%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 
for ii = 1:100
    z(ii) = ii*ii;
    disp(z(ii))
end
% Adam Howard answer:
x = 1:100;
x2 = x .* x;
x2';

%b. 
z = 0;
for ii = 1:100
    z = z + ii
end

% Adam Howard answer:
x = 1:100;
q = sum(x)

%c.
xx = rand(50,2);

for ii = 1:50
z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2)
end

'end'
% Adam Howard answer:

k = sqrt ( (xx(:,1).^2) + (xx(:,2).^2))


% d. what is the formula in c computing?

%Adam Howard answer: The equation in part 2c is calculating the solution to
%the Pythagorean Theorem for 50 random triangles. 

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

%Adam Howard answer:
x = 0:0.1:(4*pi);

sinx = [sin(x)]';
cosx = [cos(x)]';

plot (x,sinx,'r--',x,cosx,'b-')


%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

%Adam Howard Answer:
x = 0:0.1:(4*pi);

sinx = [sin(x)]';
cosx = [cos(x)]';

plot (x,sinx,'r--')
hold on
plot (x,cosx,'b-')


%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);

%plot the data in the xy plane.

scatter ((xy_dat(:,1)),(xy_dat(:,2)))

%% break here to separate figures.
%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);

% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command

%Adam Howard answer:
xy_dat = rand(100,2);
scatter ((xy_dat(:,1)),(xy_dat(:,2)),75,fluor,'filled')

