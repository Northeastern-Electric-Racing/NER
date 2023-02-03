% Change these
P2 = 16; % pressure at fans, psia
AV = 51; % fan flow rate CFM
Pmax = 14.8; % psia

% Don't change these
AV = AV*28.8; % now in in^3/s
A2 = 23.8701; % fan face area, in^2
P1 = 14.6; % psia
rho1 = 0.00237/12^3; % slugs/in^3

P2s = P1:0.001:Pmax; % P array in psia
VsMPH = 5:5:60; % vel array in MPH
Vs = VsMPH*17.6; % vel array in in/sec
A1 = ones(length(Vs),length(P2s));
figure
for i = 1:length(Vs)
    v1 = Vs(i);
    for j = 1:length(P2s)
        A1(i,j) = (v1^2/2-AV^2/(2*A2^2)+P1*12/rho1)*AV/(rho1*P2s(j)*v1);
    end
    name = strcat(string(VsMPH(i))," MPH");
    plot(P2s,A1(i,:),"DisplayName",name)
    hold on
end
legend
grid on
title("Battery Cooling Manifold Optimization")
xlabel("Pressure at Fan Inlet (psia)")
ylabel("Required Manifold Inlet Area (in^2)")
