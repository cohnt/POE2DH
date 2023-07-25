close all
clear
clc

l1 = 3;
l2 = 3;
m2 = 0.1;
m3 = 0.1;
m4 = 0.1;
m5 = 0.1;
m6 = 0.1;

% Space manipulator kinematics from https://www.researchgate.net/publication/288162059_An_analytic_and_optimal_inverse_kinematic_solution_for_a_7-DOF_space_manipulator

omega = [  0   0   1   1       1           0           0;
           0   1   0   0       0           1           0;
           1   0   0   0       0           0           1];
q = [   0   0   m3  m3-m4   m3-m4+m5    m3-m4+m5    m3-m4+m5;
        0   m2  m2  m2      m2          m2+m6       m2+m6;
        0   0   0   l1      l1+l2       l1+l2       l1+l2];
poe_params = [omega; -cross(omega, q)]

dh_params = POE2DH(poe_params)
