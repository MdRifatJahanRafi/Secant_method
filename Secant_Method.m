clc;
clear;
x1=input('x1= ');
x2=input('x2= ');
e = input('Error= ');
for k=1:20
    t(k)=k;
    a(k)=x1;
    b(k)=x2;
    c(k)=a(k)^3-2*a(k)-5;
    d(k)=b(k)^3-2*b(k)-5;
    xr=x2-(d(k)*(x1-x2))/(c(k)-d(k));
    x1=x2;
    x2=xr;
    if k>1
     l(k)=((x2-x1)/x2)*100;
     m(k)=abs(l(k));
     if m(k)<e
       break;
     end
    end 
end 
disp('________________________________________')
disp('   Itr. No    x1       x2          Error')
disp('________________________________________')
l=[t' a' b' m'];
disp(l)
root=b(k)