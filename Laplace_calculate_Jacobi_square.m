[V]=Initialise_V_Jacobi_square;
loops=1;
[V_new,delta_V_new]=Update_V_Jacobi_square(V);
while(delta_V_new>49e-5&&loops<20);
loops=loops+1;
[V_new,delta_V_new]=Update_V_Jacobi_square(V_new);
mesh(V_new);
title('Potential Surface');
drawnow;
pause(1);
end;