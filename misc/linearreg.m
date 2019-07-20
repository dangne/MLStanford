train = sort(csvread('train.csv'));
test = sort(csvread('test.csv'));
iteration = 100;

[m n] = size(train);
[m_test n_test] = size(test);

# Initialization
X = train(:, 1:n-1);
Y = train(:, n);
X_test = test(:, 1:n_test-1);
Y_test = test(:, n_test);
theta = rand(n, 1);
alpha = 0.75;

# Normalization
X = (X - min(X)) ./ (max(X) - min(X));
X_test = (X_test - min(X_test)) ./ (max(X_test) - min(X_test));
X = [ones(m, 1), X];
X_test = [ones(m_test, 1), X_test];

# Loss function plot
subplot(1,3,1)
plot(theta, (X*theta - Y)'*(X*theta - Y)/(2*m))
hold on

# Training plot
subplot(1,3,2)
plot(X(:, 2), Y)
hold on

# Test plot
subplot(1,3,3)
plot(X_test(:, 2), Y_test)
hold on

for i = 1:iteration
    theta = theta - alpha*X'*(X*theta - Y)/m;
    subplot(1,3,1)
    plot(theta, (X*theta - Y)'*(X*theta - Y)/(2*m), 'markersize', 15)
    subplot(1,3,2)
    plot(X(:, 2), X*theta)
    pause(0.01)
endfor

# Plot final result to test data
subplot(1,3,3)
plot(X(:, 2), X*theta)