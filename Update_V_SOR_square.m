function[V,delta_V_total]=Update_V_SOR_square(V);

row_size=size(V,1);
column_size=size(V,2);
L=column_size;
alpha=2/(1+pi/L);
delta_V_total=0;

for i=2:row_size-1;
  for j=2:column_size-1;
    V_star=(V(i-1,j)+V(i+1,j)+V(i,j-1)+V(i,j+1))/4;
    delta_V=V_star-V(i,j);
    V(i,j)=alpha*delta_V+V(i,j);
    delta_V_total=delta_V_total+abs(delta_V);
  end;
end;