s = tf('s');
h_u = (K_T)/((J*L_a)*(s^3) + (J*R_a + B*L_a)*(s^2) + (R_a*B + K_T*K_v)*s);
K_p = 18.6;
h_r = K_p;
h_0 = h_u * h_r;

[Gm, Pm, W_180, W_c] = margin(h_0);

N = 1/(1+h_0);

bode(N);
[mag, phase, wout] = bode(N, {650, 800});
AbsN_max = max(mag);
AbsN_maxInDB = mag2db(AbsN_max);