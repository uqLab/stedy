function qDot = TBar_MinRealODE(t,q)
% /* This Source Code Form is subject to the terms of the Mozilla Public
% * License, v. 2.0. If a copy of the MPL was not distributed with this
% * file, You can obtain one at http://mozilla.org/MPL/2.0/.
% 
% ODE file for the minimum realization simulation of a TBar,
% conventionally accepted as the ground truth in dynamics circles. 
% 
q1 = q(1);
q2 = q(2);
q3 = q(3);
q4 = q(4);


A = ...
[ 1, 0,            0,            0;
  0, 1,            0,            0;
  0, 0, -(625*pi)/12,            0;
  0, 0,            0, -(625*pi)/12];

% With 0.7 rL K found using r and E
b = ... 
[                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   q3;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   q4;
 -(25*(65654449974913947*sin(q1)*(50*cos(q1)*cos(q2) - 50*sin(q1)*sin(q2) + 25*cos(q1)^2 + 25*cos(q2)^2 + 25*sin(q1)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q1) - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) + 65654460530225580*sin(q1)*(25*cos(q1)^2 + 25*sin(q1)^2 - 25*2^(1/2)*cos(q1) + 25/2)^(1/2) - 65654460530225580*2^(1/2)*cos(q1)*sin(q2)*(25*cos(q1)^2 + 25*sin(q1)^2 - 25*2^(1/2)*cos(q1) + 25/2)^(1/2) - 65654460530225580*2^(1/2)*cos(q2)*sin(q1)*(25*cos(q1)^2 + 25*sin(q1)^2 - 25*2^(1/2)*cos(q1) + 25/2)^(1/2) + 26261784212090232*cos(q1)*sin(q2)*(25*cos(q1)^2 + 25*sin(q1)^2 - 25*2^(1/2)*cos(q1) + 25/2)^(1/2)*(50*cos(q1)*cos(q2) - 50*sin(q1)*sin(q2) + 25*cos(q1)^2 + 25*cos(q2)^2 + 25*sin(q1)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q1) - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) + 26261784212090232*cos(q2)*sin(q1)*(25*cos(q1)^2 + 25*sin(q1)^2 - 25*2^(1/2)*cos(q1) + 25/2)^(1/2)*(50*cos(q1)*cos(q2) - 50*sin(q1)*sin(q2) + 25*cos(q1)^2 + 25*cos(q2)^2 + 25*sin(q1)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q1) - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) - 31889306384591958*2^(1/2)*sin(q1)*(25*cos(q1)^2 + 25*sin(q1)^2 - 25*2^(1/2)*cos(q1) + 25/2)^(1/2)*(50*cos(q1)*cos(q2) - 50*sin(q1)*sin(q2) + 25*cos(q1)^2 + 25*cos(q2)^2 + 25*sin(q1)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q1) - 25*2^(1/2)*cos(q2) + 25/2)^(1/2)))/(422212465065984*(25*cos(q1)^2 - 25*2^(1/2)*cos(q1) + 25*sin(q1)^2 + 25/2)^(1/2)*(25*cos(q1)^2 + 50*cos(q1)*cos(q2) - 25*2^(1/2)*cos(q1) + 25*cos(q2)^2 - 25*2^(1/2)*cos(q2) + 25*sin(q1)^2 - 50*sin(q1)*sin(q2) + 25*sin(q2)^2 + 25/2)^(1/2));
 -(25*(65654449974913947*sin(q2)*(50*cos(q1)*cos(q2) - 50*sin(q1)*sin(q2) + 25*cos(q1)^2 + 25*cos(q2)^2 + 25*sin(q1)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q1) - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) + 65654460530225580*sin(q2)*(25*cos(q2)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) - 65654460530225580*2^(1/2)*cos(q1)*sin(q2)*(25*cos(q2)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) - 65654460530225580*2^(1/2)*cos(q2)*sin(q1)*(25*cos(q2)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) + 26261784212090232*cos(q1)*sin(q2)*(25*cos(q2)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q2) + 25/2)^(1/2)*(50*cos(q1)*cos(q2) - 50*sin(q1)*sin(q2) + 25*cos(q1)^2 + 25*cos(q2)^2 + 25*sin(q1)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q1) - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) + 26261784212090232*cos(q2)*sin(q1)*(25*cos(q2)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q2) + 25/2)^(1/2)*(50*cos(q1)*cos(q2) - 50*sin(q1)*sin(q2) + 25*cos(q1)^2 + 25*cos(q2)^2 + 25*sin(q1)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q1) - 25*2^(1/2)*cos(q2) + 25/2)^(1/2) - 31889306384591958*2^(1/2)*sin(q2)*(25*cos(q2)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q2) + 25/2)^(1/2)*(50*cos(q1)*cos(q2) - 50*sin(q1)*sin(q2) + 25*cos(q1)^2 + 25*cos(q2)^2 + 25*sin(q1)^2 + 25*sin(q2)^2 - 25*2^(1/2)*cos(q1) - 25*2^(1/2)*cos(q2) + 25/2)^(1/2)))/(422212465065984*(25*cos(q2)^2 - 25*2^(1/2)*cos(q2) + 25*sin(q2)^2 + 25/2)^(1/2)*(25*cos(q1)^2 + 50*cos(q1)*cos(q2) - 25*2^(1/2)*cos(q1) + 25*cos(q2)^2 - 25*2^(1/2)*cos(q2) + 25*sin(q1)^2 - 50*sin(q1)*sin(q2) + 25*sin(q2)^2 + 25/2)^(1/2))];

if(rank(A)<4)
    keyboard
end
qDot = [A\b];
end
