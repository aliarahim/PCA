load pcadata.mat
figure(1)
plot(X(:,1),X(:,2),'ob')
axis([0 7 2 8])
[Xmu,mu]=subtractMean(X);
[U,S]=myPCA(Xmu);
n=repmat(mu',1,size(U,2));
l=U+n;
x=[n(1,1),l(1,1)];
y=[n(2,1),l(2,1)];
xx=[n(1,2),l(1,2)];
yy=[n(2,2),l(2,2)];
line(x,y,'Color','red','LineWidth',1.5)
line(xx,yy,'Color','green','LineWidth',1.5)
Z=projectData(Xmu,U,1);
a=(Z(1:3,:))
Xrec=recoverData(Z,U,1,mu);
figure(2)
plot(X(:,1),X(:,2),'ob')
hold on
plot(Xrec(:,1),Xrec(:,2),'*r')
axis([0 7 2 8])
load pcafaces.mat
figure(3)
displayData(X(1:100,:));
[Xmu,mu]=subtractMean(X);
[U,S]=myPCA(Xmu);
Z=projectData(Xmu,U,200);
X_rec=recoverData(Z,U,200,mu);
figure(4)
subplot(1,2,1)
displayData(X(1:100,:));
title('Original faces')
subplot(1,2,2)
displayData(X_rec(1:100,:));
title('Recovered faces')