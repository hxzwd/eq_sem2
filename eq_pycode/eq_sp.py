
import os
import sys

import numpy as np
import sympy as sp


z = sp.Symbol("z")

R = sp.Function("R")
Y = sp.Function("Y")

a, b, c, A0, A1, A2, beta = sp.symbols("a b c A0 A1 A2 beta")

eq_R = (R(z).diff(z, 1))**2 - 4*(R(z))**3 - a*(R(z))**2 - b*R(z) - c
eq_Y = (Y(z).diff(z, 1)) + (Y(z))**2 - beta

sub_exp = A0 + A1*Y(z) + A2*Y(z)**2

sub_Y_z = sp.solve(eq_Y, Y(z).diff(z, 1))[0]

eq_sb_0 = eq_R.subs({ R(z) : sub_exp }).expand().simplify().doit()
eq_sb_1 = eq_sb_0.subs({ Y(z).diff(z, 1) : sub_Y_z }).expand().simplify().doit()

eq_poly_form = sp.Poly(eq_sb_1.collect(Y(z)), Y(z))
eq_collect_form = eq_sb_1.collect(Y(z))

coeff_list = eq_poly_form.coeffs()

for coeff in coeff_list:
	print(coeff)


hc_a_eq = coeff_list[0]

A2_values = sp.solve(hc_a_eq, A2)
A2_value = [ value for value in A2_values if value != 0.0 and value != 0 ].pop()

coeff_list_2 = [ a_eq.subs({ A2 : A2_value }).expand().simplify().doit() for a_eq in coeff_list ]

A1_value = 0
A0_value = -(a + 8*beta)/12

coeff_list_3 = [ a_eq.subs({ A0 : A0_value, A1 : A1_value }).expand().simplify().doit() for a_eq in coeff_list_2 ]

