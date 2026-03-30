clc; clear ; close all ;

%domain 
lx = 1 ;
ly = 1 ; 
Nx = 50 ;
Ny = 50 ; 

dx = lx/(Nx-1);
dy = ly/(Ny -1); 


%time
dt = 0.05 ; 
Nt = 500000 ;

%properties 
alpha = 1e-4; 

%initial conditions 
T = 25* ones(Nx,Ny);

%boundary conditions 
T(:,1)=100 ; 

%solve 
T_history = solver2D( T, Nx, Ny, Nt, dx, dy, dt, alpha);

%plot
plot2D(T_history, Nx, Ny);