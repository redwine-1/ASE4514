% Step 1: Read the data from CSV files
data_upper = readmatrix('experiment2_upper.csv');
data_lower = readmatrix('experiment2_lower.csv');

cp_upper = data_upper(:,6);
cp_lower = data_lower(:, 6);

x_c_upper = data_upper(:, 4);
x_c_lower = data_lower(:, 4);

figure;
hold on;
plot(x_c_upper, cp_upper, '-o', 'DisplayName', 'Upper Surface');
plot(x_c_lower, cp_lower, '-o', 'DisplayName', 'Lower Surface');
xlabel('$X/C$','Interpreter', 'latex');
ylabel('$C_P$', 'Interpreter','latex');
title('Pressure Distribution around NACA 0012 Airfoil');
legend;
grid on;
hold off;