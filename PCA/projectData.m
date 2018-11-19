function Z=projectData(Xmu,U,K)
qw=U(:,1:K);
Z=Xmu*qw;
end