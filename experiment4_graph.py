import matplotlib.pyplot as plt
import numpy as np

xpoints = np.array([15.10, 20.40, 25.15, 30.12])
ypoints = np.array([1.18, 1.11, 1.17, 1.17])

plt.plot(xpoints, ypoints)
plt.ylim(0, 2)
plt.xlabel(r"$\text{Velocity (m/s)}$")
plt.ylabel(r"$\text{Coefficient of Drag } C_d$")
plt.title("Velocity vs Coefficient of Drag")
plt.show()
