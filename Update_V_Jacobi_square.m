function[V_new,delta_V_new]=Update_V_Jacobi_square(V);

row_size=size(V,1);
column_size=size(V,2);

V_new=V;
delta_V_new=0;

for i=2:row_size-1;
  for j=2:column_size-1;
    V_new(i,j)=(V(i-1,j)+V(i+1,j)+V(i,j-1)+V(i,j+1))/4;
    delta_V_new=delta_V_new+abs(V_new(i,j)-V(i,j));
  end;
end;