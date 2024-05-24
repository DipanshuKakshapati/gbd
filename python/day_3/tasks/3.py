complex_num = complex(5,4)
print(f"Complex number is: {complex_num}")

real_num = complex_num.real
print(f"Real num is: {real_num}")

imaginary_num = complex_num.imag
print(f"Imaginary num is: {imaginary_num}")

conjugate_num = complex_num.conjugate()
print(f"Conjugate num of the given complex_num is: {conjugate_num}")

a_num = complex(2,5)
print(f"a_num is: {a_num}")

b_num = complex(1,4)
print(f"b_num is: {b_num}")

sum_num = a_num + b_num
print(f"Adding a_num and b_num: {sum_num}")

diff_num = a_num - b_num
print(f"Subtracting b_num from a_num: {diff_num}")

# polar form
import cmath

polar_form_num = cmath.polar(complex_num)
print(f"Polar form of the complex number is: ({polar_form_num[0]:.2f}, {polar_form_num[1]:.2f})")

r = polar_form_num[0]
print(f"Radiant value is: {r:.2f}")

theta = polar_form_num[1]
print(f"Theta value is: {theta:.2f}")

# creating a complex number from polar form
complex_from_polar = cmath.rect(r, theta)

print(f"Complex number from polar form is {complex_from_polar:.2f}")




