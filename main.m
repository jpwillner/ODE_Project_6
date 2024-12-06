%% Part 1A

% Define the given parameters
sigma = 10;
beta = 8 / 3;
rho = 28;

% Solve the Lorenz system - Solve with the given initial conditions
[x, y, z] = my_lorenz(rho, sigma, beta);

% Create a figure and adjust its size
figure('Units', 'normalized', 'OuterPosition', [0 0 1 1]); % Full-screen figure

% Plot the results as a triple stacked plot
subplot(3, 1, 1); % Top plot
plot(x, 'r', 'LineWidth', 1.5);
xlabel('Time Step', 'FontSize', 12);
ylabel('x', 'FontSize', 12);
title('Lorenz System: x vs Time', 'FontSize', 14);
grid on;

subplot(3, 1, 2); % Middle plot
plot(y, 'g', 'LineWidth', 1.5);
xlabel('Time Step', 'FontSize', 12);
ylabel('y', 'FontSize', 12);
title('Lorenz System: y vs Time', 'FontSize', 14);
grid on;

subplot(3, 1, 3); % Bottom plot
plot(z, 'b', 'LineWidth', 1.5);
xlabel('Time Step', 'FontSize', 12);
ylabel('z', 'FontSize', 12);
title('Lorenz System: z vs Time', 'FontSize', 14);
grid on;

% Adjust spacing between subplots
set(gcf, 'Color', 'w'); % Set background color to white
subplot(3, 1, 1);
pos1 = get(gca, 'Position');
set(gca, 'Position', [pos1(1), pos1(2) + 0.05, pos1(3), pos1(4) + 0.05]); % Adjust position

subplot(3, 1, 2);
pos2 = get(gca, 'Position');
set(gca, 'Position', [pos2(1), pos2(2), pos2(3), pos2(4) + 0.05]);

subplot(3, 1, 3);
pos3 = get(gca, 'Position');
set(gca, 'Position', [pos3(1), pos3(2) - 0.05, pos3(3), pos3(4) + 0.05]);



%% Part 1b

% Create a 3D plot
figure('Units', 'normalized', 'OuterPosition', [0 0 1 1]); % Full-screen figure
plot3(x, y, z, 'LineWidth', 1.5);
grid on;

% Add labels and title
xlabel('x', 'FontSize', 12);
ylabel('y', 'FontSize', 12);
zlabel('z', 'FontSize', 12);
title('Lorenz System: 3D Trajectory', 'FontSize', 14);

% Set the viewpoint
view(3); % Default 3D view

% Improve appearance
set(gca, 'FontSize', 12);
set(gcf, 'Color', 'w'); % Set background color to white


%% Part 2 q2
clear all
close all
clc

% Let's look at a fuck ton of bifn points now for some reason

% Create a function to make all the plots

% Look at when r = 0
r = 0;
simga = 10;
beta = 8 / 3;

[x, y, z] = my_lorenz(r, simga, beta);

plot_system_data(x, y, z);

% Look when r = 1
r = 1;

[x, y, z] = my_lorenz(r, simga, beta);

plot_system_data(x, y, z);


% Look when r = 24.74

r = 24;

[x, y, z] = my_lorenz(r, simga, beta);

plot_system_data(x, y, z);


% Look when r = 30

r = 30;

[x, y, z] = my_lorenz(r, simga, beta);

plot_system_data(x, y, z);


%% Question  3
clear all 
clc 
close all
% Define Parameters
sigma = 10;
beta = 8 / 3;
rho = 28; % Example parameter for chaotic behavior

[x, y, z] = my_lorenz(rho, sigma, beta);

% Find Local Maxima
[peaks, locs] = findpeaks(z);

% Lorenz map: z_n vs z_(n+1)
z_n = peaks(1:end-1);       % Current peak
z_n1 = peaks(2:end);        % Next peak

% Plot the Lorenz Map
figure;

% Scatter plot for z_n vs. z_n+1
scatter(z_n, z_n1, 25, 'filled');
grid on;

% Add labels and title
xlabel('z_n', 'FontSize', 12);
ylabel('z_{n+1}', 'FontSize', 12);
title('Lorenz Map', 'FontSize', 14);

% Improve appearance
set(gca, 'FontSize', 12);
set(gcf, 'Color', 'w');

   

