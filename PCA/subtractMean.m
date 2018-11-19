function [Xmu,mu]=subtractMean(X)
mu=mean(X);
meanrep=repmat(mu,size(X,1),1);
Xmu=X-meanrep;
end