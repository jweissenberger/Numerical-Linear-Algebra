%JGWFEV

%% Parameters
A=[-1,1;1,1];
theta=2*pi*rand;
v=[cos(theta),sin(theta)]';
tol=10^(-4);
flag=1;

figure('units','normalized','outerposition',[0 0 1 1])
hold on;

%% Plotting Unit Circle
phi=linspace(0,2*pi,100);
x=cos(phi);
y=sin(phi);

xlabel('$$x$$','interpreter','latex','fontsize',40)
ylabel('$$y$$','interpreter','latex','fontsize',40)
set(gcf,'color','w');
set(gca,'FontSize',36)

 plot(x,y,'k-','LineWidth',2);
     axis([-1.1,1.1,-1.1,1.1]);
     
     axis square;

     lambda=0;
while flag>tol
    
    w=A*v;
    vnew=w/norm(w);
    
    lambdanew=vnew'*A*vnew;
        flag=norm(lambdanew-lambda);
lambda=lambdanew
    v=vnew;
    
   % clf;
    
    plot(vnew(1),vnew(2),'o','MarkerSize',12,'LineWidth',2);
    string=strcat('Error= ',num2str(flag));
    title(string,'interpreter','latex','fontsize',40);

    
    shg;
    pause(.1)
end


