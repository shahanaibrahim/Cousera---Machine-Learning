function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

M=X(find(y==1),[1,2]);
N=X(find(y==0),[1,2]);

plot(M(:,1),M(:,2),'linestyle','none','marker','+','color','b','linewidth',2,'markersize',8);
hold on;
plot(N(:,1),N(:,2),'linestyle','none','marker','o','color','y','linewidth',2,'markersize',8);







% =========================================================================



hold off;

end
