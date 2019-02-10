

eq1 = 114*A0*A1 + 13680*b + 22.5*sigma^2 - 360 == 0;
eq2 = -13*A0*A1*sigma - 120*C0 - 2760*b*sigma + 30*sigma;
eq3 = 1/2*A0^2*A1^2 + 8*A0*A1*b - A0*A1 + 15*C0*sigma - 7200*b^2 + 120*b*sigma^2 + 360*b;
eq4 = -A0*A1*C0 - 2*A0*A1*sigma*b + 960*b^2*sigma - 30*b*sigma;
eq5 = -2*A0*A1*b^2 + A0*A1*b + C1 + 720*b^3 - 30*b^2*sigma^2;

eqSys = { eq1, eq2 };

