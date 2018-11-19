function [U,S]=myPCA(Xmu)
t=cov(Xmu);
u=eig(t);
[b c]=eig(t);
[S p]=sort(u,'descend');
y=p';
U=b(:,y);
end