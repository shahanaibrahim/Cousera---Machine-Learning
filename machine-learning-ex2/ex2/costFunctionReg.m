function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
l=length(theta);

z = X*theta;
g=sigmoid(z);
p=-1*y.*log(g);
n=-1*(1-y).*log(1-g);
thetamod = theta;
thetamod(1)=0;
r=lambda*sum((thetamod.^2),1);
J = sum((p.+n),1)/m+r/(2*m);
grad = ((X'*(sigmoid(z)-y))+thetamod.*lambda)./m;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
