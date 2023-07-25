close all
clear
clc

H_base = eye(4);
H_tool = eye(4);

D1 = 0.2755;
D2 = 0.2050;
D3 = 0.2050;
D4 = 0.2073;
D5 = 0.1038;
D6 = 0.1038;
D7 = 0.1600;
e2 = 0.0098;

% Jaco kinematics from https://www.researchgate.net/publication/346468202_Forward_Kinematic_Analysis_of_JACO_2_Robotic_Arm_Towards_Implementing_a_Grapes_Harvesting_Robot

%DH_jaco_std = [theta, d, alpha, a]
DH_jaco_std =   [   0   -D1     pi/2    0;
                    0   0       pi/2    0;
                    0   -D2-D3  pi/2    0;
                    0   -e2     pi/2    0;
                    0   -D4-D5  pi/2    0;
                    0   0       pi/2    0;
                    0   -D6-D7  pi      0];

POE_jaco = DH2POE(DH_jaco_std,H_base,H_tool,'RRRRRRR','std')
