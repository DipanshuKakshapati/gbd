import numpy as np

A = np.array([[1, 2], [3, 4]])
print(f"Matrix A is:\n{A}")

B = np.array([[2, 0], [1, 3]])
print(f"Matirx B is:\n{B}")

# matrix multiplication
C = np.dot(A, B)
print(f"Matrix multiplication using np.dot: \n{C}")

C = A @ B
print(f"Matrix multiplication using A @ B is: \n{C}")

# determinant
det_A = np.linalg.det(A)
print(f"Determinant of matrix A is: \n{det_A:.1f}")

det_B = np.linalg.det(B)
print(f"Determinant of matrix B is: \n{det_B:.1f}")

# solving linear equations
X = np.linalg.solve(A, B)
print(f"Solving linear equation of A and B we get: \n{X}")