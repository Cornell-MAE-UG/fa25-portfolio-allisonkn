% 0. Define parameters
% Clevis:
L = 0.0374;       % [m]
h = 0.09;         % [m]
d = 0.0374;       % [m]
t = 0.00475;        % [m]
rho = 2680;       % [kg/m^3]
r_Q_B = [0, 0, 0];
theta = pi/4;
	
% Propeller:
r_prop = 0.280; 	% [m]
m_prop = 0.048;	    % [kg]
t_prop = 0.02; 	    % [m]

% Motor:
m_motor = 0.323; 	% [kg]
r_motor = 0.036;	% [m]
t_motor = 0.0315;	% [m]

	
% 1. Get the moment of inertia tensors for prop, motor, and clevis

% Prop MOI:
I_prop_G_B = diag([0 0.00231 0]); 	% Zoe's calcs; taken from SolidWorks

% distance from prop center of mass to origin
ell = h+t_motor+t_prop/2;

% w.r.t. Q
I_prop_Q_B = I_prop_G_B + m_prop*diag([ell^2, 0, ell^2]);


% Motor MOI w.r.t. Q: 

% Inertia about disk center; spin axis is b2.
I_disk_G_B = diag([m_motor*(3*r_motor^2 + t_motor^2)/12, ...
                  m_motor*r_motor^2/2, ...
                  m_motor*(3*r_motor^2 + t_motor^2)/12]);

% Vector FROM Q TO disk center, expressed in B [m].
r_Q_to_disk_B = [0; h+t_motor/2; 0];

% Disk contribution to inertia about Q.
I_disk_Q_B = I_disk_G_B + m_motor * ...
    ((r_Q_to_disk_B.' * r_Q_to_disk_B)*eye(3) ...
     - r_Q_to_disk_B*r_Q_to_disk_B.');

% Clevis MOI w.r.t. G: 

function [I_Q_B, I_G_B, r_G_B, m] = uBracketMOI(h,d,L,t,rho,r_Q_B)
% =========================================================================
% U-bracket inertia in body frame B
%
%   b1 = span L
%   b2 = height h, along flange extension
%   b3 = depth d
%
% Geometry: three rectangular solids with uniform thickness t
%   Mounting face: L x t x d
%   Two flanges:  t x (h-t) x d
%
% Inputs:
%   h,d,L,t : dimensions [m]
%   rho     : material density [kg/m^3]
%   r_Q_B   : position of Q relative to the origin [b1;b2;b3], [m]
%
% Origin:
%   Center of mounting face's outer surface.
%   Mounting face occupies 0 <= b2 <= t.
%   Flanges extend toward positive b2, ending at b2 = h.
%
% Outputs:
%   I_Q_B : inertia tensor about Q [kg*m^2]
%   I_G_B : inertia tensor about bracket centroid G [kg*m^2]
%   r_G_B : centroid position relative to origin [m]
%   m     : total bracket mass [kg]
% =========================================================================

    if nargin < 6
        r_Q_B = zeros(3,1);
    end

    validateattributes(h, {'numeric'}, ...
        {'scalar','real','finite','positive'});
    validateattributes(d, {'numeric'}, ...
        {'scalar','real','finite','positive'});
    validateattributes(L, {'numeric'}, ...
        {'scalar','real','finite','positive'});
    validateattributes(t, {'numeric'}, ...
        {'scalar','real','finite','positive'});
    validateattributes(rho, {'numeric'}, ...
        {'scalar','real','finite','positive'});
    validateattributes(r_Q_B, {'numeric'}, ...
        {'vector','numel',3,'real','finite'});

    assert(h > t, 'Height h must exceed thickness t.');
    assert(L > 2*t, 'Span L must exceed twice the thickness.');

    r_Q_B = r_Q_B(:);

    % Plate dimensions ordered along [b1, b2, b3].
    % Using h-t avoids overlap with the mounting face.
    dims = [L, t,   d;
            t, h-t, d;
            t, h-t, d];

    % Each column is one plate's centroid: [b1; b2; b3].
    centers = [0,   (L-t)/2, -(L-t)/2;
               t/2, (h+t)/2,  (h+t)/2;
               0,         0,         0];

    % Masses and bracket centroid.
    masses = rho * prod(dims,2);
    m = sum(masses);
    r_G_B = centers * masses / m;

    I_Q_B = zeros(3);
    I_G_B = zeros(3);

    for k = 1:3
        a = dims(k,1);   % Size along b1
        b = dims(k,2);   % Size along b2
        c = dims(k,3);   % Size along b3
        mk = masses(k);

        % Inertia about the individual plate's centroid.
        I_plate_B = (mk/12) * diag([b^2 + c^2, ...
                                    a^2 + c^2, ...
                                    a^2 + b^2]);

        % Parallel-axis shift to Q.
        r = centers(:,k) - r_Q_B;
        I_Q_B = I_Q_B + I_plate_B ...
              + mk*((r.'*r)*eye(3) - r*r.');

        % Parallel-axis shift to bracket centroid G.
        r = centers(:,k) - r_G_B;
        I_G_B = I_G_B + I_plate_B ...
              + mk*((r.'*r)*eye(3) - r*r.');
    end
end

[I_bracket_Q_B, I_bracket_G_B, r_bracket_G_B, m_bracket] = ...
    uBracketMOI(h,d,L,t,rho,r_Q_B);

disp('Bracket inertia about Q [kg*m^2]:');
disp(I_bracket_Q_B);

% Vector from Q to bracket centroid for your dynamics equation.
r_Q_to_bracket_G_B = r_bracket_G_B - r_Q_B;
% total moment of inertia
I_Q_B = I_bracket_Q_B + I_disk_Q_B + I_prop_Q_B;


% 2. Get angular velocities for the bracket, motor, and prop

roll_omega = 0.7;		% [rad/s], given by logs
pitch_omega = pi + 0.35;	% [rad/s], given by max. servo speed plus pitch of plane
yaw_omega = 2.1; 		% [rad/s], given by logs

omega_bracket = [pitch_omega; roll_omega*cos(theta) + yaw_omega*sin(theta); sin(theta)*roll_omega + yaw_omega*cos(theta)];
omega_motor = omega_bracket;
omega_prop = [pitch_omega; 850 + roll_omega*cos(theta) + yaw_omega*sin(theta); sin(theta)*roll_omega + yaw_omega*cos(theta)];
%% note that for the b3 axis, the result accounts for the fact that the plane could be rolling in a negative direction and this would add to the yaw in the b3 axis when multiplied by -1

% 3. Get angular momentums for the bracket, motor, prop, and total

h_prop_Q = I_prop_Q_B * omega_prop;

h_bracket_Q = I_bracket_Q_B * omega_bracket;

h_motor_Q = I_disk_Q_B * omega_motor;

h_total_Q = h_prop_Q + h_bracket_Q + h_motor_Q;

% 4. Get angular accelerations for the bracket, motor, prop 
roll_alpha = 2.9;		% [rad/s^2], given by logs
pitch_alpha = pi + 4.9;	% [rad/s^2], given by max. servo acceleration (est.) plus pitch of plane
yaw_alpha = 1.6; 		% [rad/s^2], given by logs

alpha_bracket = [pitch_alpha; roll_alpha*cos(theta) + yaw_alpha*sin(theta); sin(theta)*roll_alpha + yaw_alpha*cos(theta)];
alpha_motor = alpha_bracket;
alpha_prop = [pitch_alpha; roll_alpha*cos(theta) + yaw_alpha*sin(theta); sin(theta)*roll_alpha + yaw_alpha*cos(theta)];

% 5. Get the torque for the bracket, motor, prop individually
T_motor = I_disk_Q_B*alpha_motor;
T_bracket = I_bracket_Q_B*alpha_bracket;
T_prop = I_prop_Q_B*alpha_prop;
	
disp("T-total");
T_total = T_motor + T_bracket + T_prop

% 6. Inertial terms
% Total mass:
m_G = m_motor + m_bracket + m_prop;

% calculate center of mass of system along the b2 axis
cm_b2 = (m_bracket*r_Q_to_bracket_G_B + m_motor*(ell) + m_prop*(h + t_motor + t_prop/2))/m_G;
disp("Cm_b2");
disp(cm_b2);
% vector that points from G (total center of mass) to Q (which is antiparallel to b2 axis)
r_QG_B = [0; cm_b2(2,1); 0];

r = r_QG_B;

r_QG_cross_B = [  0, -r(3),  r(2);
                     r(3),    0, -r(1);
                    -r(2), r(1),    0];

a_QO_B = [0; 11.8*cos(theta)^2; -11.8*cos(theta)*sin(theta)];

% 7. Solve
omega_BI_B = omega_bracket;  % [rad/s], this is the rotation of the b-frame with respect to the I-frame which is stationary on the ground. this includes the motion of the plane

omega_cross_B = [0,             -omega_BI_B(3),  omega_BI_B(2);
                 omega_BI_B(3),  0,             -omega_BI_B(1);
                -omega_BI_B(2),  omega_BI_B(1),  0];

M_Q_B = T_total + omega_cross_B*h_total_Q - m_G*r_QG_cross_B*a_QO_B

%% 8. Transfer moment from Q to P

% Position of P relative to Q, expressed in B
r_QP_B = [0; h; 0];

% Net external force on the system
% Must be calculated from center-of-mass acceleration
F_net_B = m_G * a_QO_B;

% Transfer moment from Q to P
M_P_B = M_Q_B - cross(r_QP_B, F_net_B);

disp('Moment about P [N*m]:');
disp(M_P_B);













