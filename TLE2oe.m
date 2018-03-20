%TLE�����������
fprintf('���������:i,Omega,e,w,M,n \n')
fprintf('i = ');i=input('');
fprintf('Omega = ');Omega=input('');
fprintf('e = ');e=input('');
fprintf('w = ');w=input('');
fprintf('M = ');M=input('');
fprintf('n = ');n=input('');
OneDay = 24 * 3600;       %һ�������
T = OneDay / n;     %�������
a = ((T / (2 * pi))^(2/3)) * ((6.67e-11 * 5.976e24)^(1/3));
Mr = M * pi / 180;
E = Mr;
tol = 1;
while tol>1e-10
    E0 = E;
    E = E - (E - e * sin(E) - Mr)/(1 - e * cos(E));
    tol = abs(E - E0);
end
thetar = 2 * atan2( (sqrt((1 + e) / (1 - e)) * sin(E / 2) ),cos(E / 2));
theta = thetar * 180 / pi;
if theta<0
    theta  = theta + 360;
end
fprintf('����������Ϊ��\n');
fprintf('---�볤�� a = %f m\n',a);
fprintf('---ƫ���� e = %f \n',e);
fprintf('---������ i = %f ��\n',i);
fprintf('---������ྭ Omega = %f ��\n',Omega);
fprintf('---���ص���� w = %f ��\n',w);
fprintf('---������ theta = %f ��\n',theta);