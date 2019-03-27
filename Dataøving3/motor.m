s = tf('s');
h_u = (K_T)/((J*L_a)*(s^3) + (J*R_a + B*L_a)*(s^2) + (R_a*B + K_T*K_v)*s);
K_p = 18.6;
h_r = K_p;
h_0 = h_u * h_r;

margin(h_0);
hold();

N = 1/(1+h_0);
bode(N);

