l1 = 13; % Length of Link 1
l2 = 13; % Length of Link 2

x = 4; % End-Effector Postion Coordinates (Set By User, X-Direction)
y = 10; % End-Effector Postion Coordinates (Set By User, Y-Direction)
n = (x^2+y^2-l1^2-l2^2)/(2*l1*l2); % Shorthand form for an equation

t2_1 = atan(sqrt(1-n)/n); % Theta 2 Equation Positive Form
t2_2 = atan((-1*sqrt(1-n))/n); % Theta 2 Equation Negative Form

t1_1 = atan(y/x)-atan((l2*sin(t2_1))/(l1+l2*cos(t2_1))); % Theta 1 Equation Positve / Positive Example
t1_2 = atan(y/x)-atan((l2*sin(t2_1))/(l1+l2*cos(t2_2))); % Theta 1 Equation Positve / Negative Example
t1_3 = atan(y/x)-atan((l2*sin(t2_2))/(l1+l2*cos(t2_1))); % Theta 1 Equation Negative / Positive Example
t1_4 = atan(y/x)-atan((l2*sin(t2_2))/(l1+l2*cos(t2_2))); % Theta 1 Equation Negative / Negative Example

theta_2_final = (t2_2+t2_1)/2 % Average of the Theta 2 Equations
theta_1_final = (t1_4+t1_3+t1_2+t1_1)/4 % Average of the Theta 1 Equations