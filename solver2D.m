function T_history = solver2D(T, Nx, Ny, Nt, dx, dy, dt, alpha)

T_history = zeros(Nx, Ny, Nt);

for N = 1:Nt 
    T_old = T; 
    for i = 2:Nx-1
        for j = 2:Ny-1

              T(i,j) = T_old(i,j) + alpha*dt * ( ...
                (T_old(i+1,j) - 2*T_old(i,j) + T_old(i-1,j))/dx^2 + ...
                (T_old(i,j+1) - 2*T_old(i,j) + T_old(i,j-1))/dy^2 );
       
        end
    end

    %boundary conditions 
    T(:,1) = 100 ; 
    T(:,Ny) = 25;
    T(1,:) = T(2,:);
    T(Nx,:) = T(Nx-1, :);

    T_history(:,:,N) = T; 
end

end



