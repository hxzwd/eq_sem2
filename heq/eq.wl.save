

Print["eq.wl script file\n"];


L0 = 1/2;
L1 = u[x];

DL2 = D[L1, {x, 3}] + 4*u[x]*D[L1, x] + 2*D[u[x], x]*L1;
L2 = Integrate[DL2, x];
DL3 = D[L2, {x, 3}] + 4*u[x]*D[L2, x] + 2*D[u[x], x]*L2;
L3 = Integrate[DL3, x];
DL3 = D[L3, {x, 3}] + 4*u[x]*D[L3, x] + 2*D[u[x], x]*L3;
L4 = Integrate[DL3, x];
DL5 = D[L4, {x, 3}] + 4*u[x]*D[L4, x] + 2*D[u[x], x]*L4;
L5 = Integrate[DL5, x];
DL6 = D[L5, {x, 3}] + 4*u[x]*D[L5, x] + 2*D[u[x], x]*L5;
L6 = Integrate[DL6, x];
DL7 = D[L6, {x, 3}] + 4*u[x]*D[L6, x] + 2*D[u[x], x]*L6;
L7 = Integrate[DL7, x];


E2 = L2 - A2*u[x] + B2;
E3 = L3 - A3*u[x] + B3;
E4 = L4 - A4*u[x] + B4;
E5 = L5 - A5*u[x] + B5;
E6 = L6 - A6*u[x] + B6;
E7 = L7 - A7*u[x] + B7;

Print[L0];
Print[L1];
Print[L2];
Print[L3];
Print[L4];
Print[L5];

OP[L_[x]] := D[L[x], {x, 3}] + 4*u[x]*D[L[x], x] + 2*D[u[x], x]*L[x];


tmp1 = E4 - D[E3, {x, 2}];
tmp2 = tmp1 - 4*u[x]*E3;
tmp3 = tmp2 - A3*E3;
tmp33 = tmp2 + Integrate[Expand[2*u'[x]*E3], x]


tmp1 = Expand[tmp1];
tmp2 = Expand[tmp2];
tmp3 = Expand[tmp3];
tmp33 = Expand[tmp33];


a1 = E3 - D[E2, {x, 2}];
a2 = a1 - 4*u[x]*E2;
a3 = a2 + Integrate[Expand[2*u'[x]*E2], x];
a4 = a3 - A2*E2;
a3 = Simplify[Expand[a3]];
a4 = Simplify[Expand[a4]];


t1 = E5 - D[E4, {x, 2}];
t2 = t1 - 4*u[x]*E4;
t3 = t2 + Integrate[Expand[2*u'[x]*E4], x];
t3 = Expand[t3];
t4 = Simplify[Expand[t3 - A4*E2]];

b1 = E6 - D[E5, {x, 2}];
b2 = b1 - 4*u[x]*E5;
b3 = b2 + Integrate[Expand[2*u'[x]*E5], x];
b3 = Simplify[Expand[b3]];
b4 = Simplify[Expand[b3 - A5*E2]];

c1 = E7 - D[E6, {x, 2}];
c2 = c1 - 4*u[x]*E6;
c3 = c2 + Integrate[Expand[2*u'[x]*E6], x];
c3 = Simplify[Expand[c3]];
c4 = Simplify[Expand[c3 - A6*E2]];

e1 = E4 - D[E3, {x, 2}];
e2 = e1 - 4*u[x]*E3;
e3 = e2 + Integrate[Expand[2*u'[x]*E3], x];
e3 = Simplify[Expand[e3]];
e4 = Simplify[Expand[e3 - A3*E2]];


