# Linear regression using gradient descent
train = csvread('train.csv');
iteration = 75;

# Sort train from small to large
train = sort(train);

# Initialization 
[m n] = size(train);
X = train(:, 1:n-1);
Y = train(:, n);
theta = rand(n, 1);
J = @(theta) sum((X*theta - Y).^2)/(2*m);
a = 0.001;

# Normalization
X = (X - min(X)) ./ (max(X) - min(X));
X = [ones(m,1) X];

# Setup plotting environment
figure 1
subplot(1,2,1)
hold on
subplot(1,2,2)
plot(X, Y)
hold on

# Gradient descent
for i = 1:iteration
    theta = theta - a*sum((X*theta - Y).*X);
    
    subplot(1,2,1)
    plot(theta, J(theta), "markersize", 20)
    subplot(1,2,2)
    plot(X, X*theta)
    pause(.05);
endfor