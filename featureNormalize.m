function [X_norm, mu, sigma] = featureNormalize(X)
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu=mean(X,1);        %mean around each column
sigma=std(X,1,1);    %standard deviation around column with factor 1

for i=1:size(X,1),
	for j=1:size(X,2),
		X_norm(i,j)=(X(i,j)-mu(1,j))/sigma(1,j);
	end;
end;
end
