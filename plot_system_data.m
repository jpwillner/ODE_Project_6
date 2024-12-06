function [] = plot_system_data(x, y, z)
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
    % Use `tight_layout` or modify subplot margins without clipping titles
    sgtitle('Lorenz System: Time Series', 'FontSize', 16, 'FontWeight', 'bold'); % Add overall title
    set(gcf, 'Color', 'w'); % Set background color to white

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
end
