#!/usr/bin/env python
import sys
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots()
xpoints = np.array([0, 5])
ypoints = np.array([0, 5])
plt.plot(xpoints, ypoints)

plt.ylabel("Y-axis ")
plt.xlabel("X-axis ")

image_format = 'svg' # e.g .png, .svg, etc.
image_name = sys.argv[1]

fig.savefig(image_name, format=image_format, dpi=1200)
