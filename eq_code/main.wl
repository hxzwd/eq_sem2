

eq1 = D[R[z], z]^2 - 4*R[z]^3 - a*R[z]^2 - b*R[z] - c;

eq2 = D[Y[z], z] + Y[z]^2 - alpha;

subExp = A0 + A1*Y[z] + A2*Y[z]^2;

tmpEq0 = eq1/.{R[z] -> subExp, R'[z] -> D[subExp, z]};
tmpEq1 = Expand[tmpEq0];
tmpEq2 = Expand[tmpEq1/.{Y'[z] -> -Y[z]^2 + alpha}];

coeffs = CoefficientList[tmpEq2, Y[z]];

Print["Num of coeffs: ", Length[coeffs]];

eqSys0 = (# == 0)&/@coeffs;
eqSys1 = (#/.{A2 -> 1, A1 -> 0})&/@eqSys0;


eqSys2 = { eqSys1[[1]], eqSys1[[3]], eqSys1[[5]] };

Print["\n"];
Print["Equations [A1 = 0, A2 = 1]"];
Print[Column[eqSys2, Left]];


TMP = DSolve[Y'[z] + Y[z]^2 - 1/2 == 0, Y[z], z][[1]];
subExp1 = subExp/.{ A0 -> -2/3, A1 -> 0, A2 -> 1 };
EQ = eq1/.{ a -> 4, b -> 1, c -> 2/27 };

EQ1 = Expand[EQ/.{ R[z] -> subExp1, R'[z] -> D[subExp1, z] }];
RESULT = Simplify[Expand[(EQ1/.TMP)/.D[TMP, z]]];


