% dcmotor_varier_Kp.m
% Brukes i data?ving 3, oppgave 1
% Fyll inn 3 verdier for Kp her, og kj?r skriptet
run mopar;
Kp1 = 0;
Kp2 = 0.5*Kp1;
Kp3 = 1.5*Kp1;

Kps = [Kp1, Kp2, Kp3];
legends = {['Kp=', num2str(Kp1)], ['Kp=',num2str(Kp2)], ['Kp=',num2str(Kp3)]};
for Kp=Kps
	sim dcmotor  % VIKTIG: bytt ut denne med dcmotor_2015a hvis du bruker en eldre versjon av Matlab/Simulink.
	figure(1); hold all;
	plot(motor_data.time, motor_data.signals.values(:,1));
	figure(2); hold all;
	plot(motor_data.time, motor_data.signals.values(:,2));
	figure(3); hold all;
	plot(motor_data.time, motor_data.signals.values(:,4));
end
figure(1);
title('Ankerstrom');
xlabel('tid'); ylabel('strom [A]');
legend(legends);
figure(2);
title('Vinkelhastighet');
xlabel('tid'); ylabel('omega [radianer/s]');
legend(legends);
figure(3);
title('Vinkel');
xlabel('tid'); ylabel('vinkel [grader]');
legend(legends);
