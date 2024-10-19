% Step 1: Read the data from CSV files
angle0 = readmatrix('experiment3_0.csv');
angle22_5 = readmatrix('experiment3_22.5.csv');

% Step 2: Extract relevant columns
angle_for_0 = angle0(:, 1);
angles_for_22_5 = angle22_5(:, 1);

cl_for_0 = angle0(:, 5);
cl_for_22_5 = angle22_5(:, 5);

cd_for_0 = angle0(:, 6);
cd_for_22_5 = angle22_5(:, 6);

cm_for_0 = angle0(:, 7);
cm_for_22_5 = angle22_5(:, 7);

clbycd_for_0 = angle0(:, 8);
clbycd_for_22_5 = angle22_5(:, 8);

% Step 3: Plot Lift Coefficient Comparison (C_L)
figure;
hold on;
plot(angle_for_0, cl_for_0, '-o', 'DisplayName', 'Flap angle 0°');
plot(angles_for_22_5, cl_for_22_5, '-o', 'DisplayName', 'Flap angle 22.5°');
xlabel('Incidence Angle (Degrees)');
ylabel('$C_L$', 'Interpreter','latex');
title('Lift Coefficient Comparison');
legend;
grid on;
hold off;

% Step 4: Plot Drag Coefficient Comparison (C_D)
figure;
hold on;
plot(angle_for_0, cd_for_0, '-o', 'DisplayName', 'Flap angle 0°');
plot(angles_for_22_5, cd_for_22_5, '-o', 'DisplayName', 'Flap angle 22.5°');
xlabel('Incidence Angle (Degrees)');
ylabel('$C_D$', 'Interpreter','latex');
title('Drag Coefficient Comparison');
legend;
grid on;
hold off;

% Step 5: Plot Moment Coefficient Comparison (C_M)
figure;
hold on;
plot(angle_for_0, cm_for_0, '-o', 'DisplayName', 'Flap angle 0°');
plot(angles_for_22_5, cm_for_22_5, '-o', 'DisplayName', 'Flap angle 22.5°');
xlabel('Incidence Angle (Degrees)');
ylabel('$C_M$', 'Interpreter','latex');
title('Moment Coefficient Comparison');
legend;
grid on;
hold off;

% Step 6: Plot Lift-to-Drag Ratio Comparison (C_L/C_D)
figure;
hold on;
plot(angle_for_0, clbycd_for_0, '-o', 'DisplayName', 'Flap angle 0°');
plot(angles_for_22_5, clbycd_for_22_5, '-o', 'DisplayName', 'Flap angle 22.5°');
xlabel('Incidence Angle (Degrees)');
ylabel('$C_L/C_D$', 'Interpreter','latex');
title('Lift-to-Drag Ratio Comparison');
legend;
grid on;
hold off;
