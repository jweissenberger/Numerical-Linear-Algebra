%Rayleigh3d



%% Parameters
A=zeros(3,3);
A(1,:)=[2,1,1];
A(2,:)=[1,3,1];
A(3,:)=[1,1,4];


figure('units','normalized','outerposition',[0 0 1 1])
hold on;

%% Plotting Unit Sphere
theta=linspace(0,2*pi,40);
phi=linspace(0,pi,40);
[TH,PHI]=meshgrid(theta,phi);

X=cos(TH).*sin(PHI);
Y=sin(TH).*sin(PHI);
Z=cos(PHI);

surf(X,Y,Z);

xlabel('$$x$$','interpreter','latex','fontsize',40)
ylabel('$$y$$','interpreter','latex','fontsize',40)
zlabel('$$z$$','interpreter','latex','fontsize',40)
set(gcf,'color','w');
set(gca,'FontSize',36);
view(3);
axis([-1.1,1.1,-1.1,1.1,-1.1,1.1]);
%shading interp;

for i=1:10;
%% Initial parameters
theta=2*pi*rand;
phi=pi*rand;

v=[cos(theta)*sin(phi),sin(theta)*sin(phi),cos(theta)]';
tol=10^(-4);
flag=1;


%% Power Iteration!!!
     lambda=0;
while flag>tol
    
    w=A*v;
    vnew=w/norm(w);
    
    lambdanew=vnew'*A*vnew;
        flag=norm(lambdanew-lambda);
lambda=lambdanew
    v=vnew;
    
   % clf;
    
    plot3(vnew(1),vnew(2),vnew(3),'.','MarkerSize',40,'LineWidth',2);
    string=strcat('Error= ',num2str(flag));
    title(string,'interpreter','latex','fontsize',40);

    alpha 0.5;
    shg;
    pause(.1)
end

end

