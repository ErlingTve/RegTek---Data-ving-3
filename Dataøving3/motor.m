%Oppgave 1
s = tf('s');
h_u = (K_T)/((J*L_a)*(s^3) + (J*R_a + B*L_a)*(s^2) + (R_a*B + K_T*K_v)*s);

%Oppgave 2
Kp = 18.6;
h_r = Kp;
h_0 = h_u * h_r;

[Gm, Pm, W_180, W_c] = margin(h_0);

N = 1/(1+h_0);

bode(N);
[mag, phase, wout] = bode(N, {650, 800});
AbsN_max = max(mag);
AbsN_maxInDB = mag2db(AbsN_max);

%Oppgave 3
dPsi = 2;
Ts_grense = 2*dPsi/W_c;
Ts = Ts_grense - 0.0001;

%Oppgave 4
% Kpk=168.23;
Kp = 100;
a=0.1;
Td = 0.19/(W_c*sqrt(a));
h_r = Kp*(1+Td*s)/(1+a*Td*s);
h_0 = h_r * h_u;
margin(h_0);

%Oppgave 5
% Tk = 3.4*10^(-3);
% Ti= 20 * Tk;
% %Ti = 999999999999999;
% Td = 0.12 * Tk;
% %Td=0;
% h_r = Kp*(1+Ti*s)*(1+Td*s)/(Ti*s*(1+a*Td*s));
% h_0 = h_r * h_u;
% margin(h_0);


