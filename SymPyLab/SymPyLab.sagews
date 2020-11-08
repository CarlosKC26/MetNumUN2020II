
︠01c5d363-016f-4623-b34a-498a9e983f59sr︠
from IPython.display import Image
import math
import sympy
from sympy import *
from sympy import Symbol
from sympy import div
from sympy import integrate
from sympy import sin
from sympy import Symbol
from sympy import cos
import numpy

x = Symbol('x')

p = x**5 - 15*x**4  + 85*x**3 - 225*x**2 + 274*x - 120

p, r = div(p,  x-1)

print(p)
print(r)

p, r = div(p,  x-2)

print(p)
print(r)

p, r = div(p,  x-3)

print(p)
print(r)

p, r = div(p,  x-4)

print(p)
print(r)

Image('OurExample1_1.jpg', width=500)

Image('OurExample1_2.jpg', width=500)

x = Symbol('x')

p = (x-1)*(x-2)*(x-3)*(x-4)*(x-5)*(x-6)*(x-7)*(x-8)*(x-9)*(x-10)

print(p.as_poly())
print(" ")

for i in range(11):
  p,r = div(p, x-(i+1))
  print(p)
  print(r)

x = Symbol('x')
factor(x**5 - 15*x**4  + 85*x**3 - 225*x**2 + 274*x - 120)

Image('OurExample2.jpg', width=500)

x = Symbol('x')
factor(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800)

x = Symbol('x')
solveset(Eq(x**5 - 15*x**4  + 85*x**3 - 225*x**2 + 274*x - 120, 0), x)

Image('OurExample3.png', width=500)

x = Symbol('x')
solveset(Eq(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800, 0), x)

x1, x2, y1, y2, z1, z2 = symbols("x1 x2 y1 y2 z1 z2", real=True)  
x = x1 + I*x2
y = y1 + I*y2
z = z1 + I*z2

print(x*y*z)
print(expand(x*y*z))
print(expand((x*y)*z))
print(expand(x*(y*z)))

w=N(1/(pi + I), 20)
print('w=',w)

Image('OurExample4.png', width=500)

u1, u2, w1, w2, v1, v2 = symbols("u1 u2 w1 w2 v1 v2", real=True)  
u = u1 + I*u2
w = w1 + I*w2
v = v1 + I*v2

print(u*w*v)
print(expand(u*w*v))
print(expand((u*w)*v))
print(expand(u*(w*v)))

w=N(1/(pi + I), 20)
print('w=',w)

# we’ll save results using different methods in this data structure, called a dictionary
result = {}  
x = sympy.Symbol("x")
i = sympy.integrate(x**2)
print(i)
result["analytical"] = float(i.subs(x, 5) - i.subs(x, 1))
print("Analytical result: {}".format(result["analytical"]))

dictt = {}  
x = sympy.Symbol("x")
i = sympy.integrate(sin(x**2))
print(i)
dictt["analytical"] = float(i.subs(x, 1) - i.subs(x, 0))
print("Analytical result: {}".format(dictt["analytical"]))

N = 1000000
accum = 0
for i in range(N):
    x = numpy.random.uniform(1, 5)
    accum += x**2
volume = 5 - 1
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))

N = 100000
accum = 0
for i in range(N):
    x = numpy.random.uniform(0, 1)
    accum += sin(x**2)
volume = 1 - 0
dictt["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(dictt["MC"]))

x = Symbol("x")
i = integrate(x**2 * sin(x)**3)
print(i)
print(float(i.subs(x, 5) - i.subs(x, 1)))

N = 100_000
accum = 0
l =[]
for i in range(N):
    x = numpy.random.uniform(1, 5)
    accum += x**2 * sin(x)**3
volume = 5 - 1
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))

Image('OurIntegral11.png', width=500)

x = Symbol("x")
i = integrate(sin(x**2))
print(i)
print(float(i.subs(x, 1) - i.subs(x, 0)))

N = 100000
accum = 0
l =[]
for i in range(N):
    x = numpy.random.uniform(0, 1)
    accum += sin(x**2)
volume = 1-0
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))

x1 = sympy.Symbol("x1")
x2 = sympy.Symbol("x2")
x3 = sympy.Symbol("x3")
expr = sympy.sin(x1) + 7*sympy.sin(x2)**2 + 0.1 * x3**4 * sympy.sin(x1)
res = sympy.integrate(expr,
                      (x1, -sympy.pi, sympy.pi),
                      (x2, -sympy.pi, sympy.pi),
                      (x3, -sympy.pi, sympy.pi))
# Note: we use float(res) to convert res from symbolic form to floating point form
result = {} 
result["analytical"] = float(res)
print("Analytical result: {}".format(result["analytical"]))

import numpy

N = 10_000
accum = 0
for i in range(N):
    xx1 = numpy.random.uniform(-numpy.pi, numpy.pi)
    xx2 = numpy.random.uniform(-numpy.pi, numpy.pi)
    xx3 = numpy.random.uniform(-numpy.pi, numpy.pi)
    accum += numpy.sin(xx1) + 7*numpy.sin(xx2)**2 + 0.1 * xx3**4 * numpy.sin(xx1)
volume = (2 * numpy.pi)**3
result = {} 
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))

x = sympy.Symbol("x")
y = sympy.Symbol("y")
z = sympy.Symbol("z")
expr = sin(x**2) + sin(y**2) + sin(z**2)
res = sympy.integrate(expr,
                      (x, 3,sympy.pi),
                      (y, -3*sympy.pi, sympy.pi),
                      (z, -5*sympy.pi, sympy.pi))
# Note: we use float(res) to convert res from symbolic form to floating point form
dictt = {} 
dictt["analytical"] = float(res)
print("Analytical result: {}".format(dictt["analytical"]))

N = 100000
accum = 0
for i in range(N):
    x = numpy.random.uniform(3, numpy.pi)
    y = numpy.random.uniform(-3*numpy.pi, numpy.pi)
    z = numpy.random.uniform(-5*numpy.pi, numpy.pi)
    accum += sin(x**2) + sin(y**2) + sin(z**2)
volume = (numpy.pi-3)*(numpy.pi-(-3*numpy.pi))*(numpy.pi-(-5*numpy.pi))
result = {} 
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))

# adapted from https://mail.scipy.org/pipermail/scipy-user/2013-June/034744.html
def halton(dim: int, nbpts: int):
    h = numpy.full(nbpts * dim, numpy.nan)
    p = numpy.full(nbpts, numpy.nan)
    P = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
    lognbpts = math.log(nbpts + 1)
    for i in range(dim):
        b = P[i]
        n = int(math.ceil(lognbpts / math.log(b)))
        for t in range(n):
            p[t] = pow(b, -(t + 1))

        for j in range(nbpts):
            d = j + 1
            sum_ = math.fmod(d, b) * p[0]
            for t in range(1, n):
                d = math.floor(d / b)
                sum_ += math.fmod(d, b) * p[t]

            h[j*dim + i] = sum_
    return h.reshape(nbpts, dim)

import matplotlib.pyplot as plt
N = 1000
seq = halton(2, N)
plt.title("2D Halton sequence")
# Note: we use "alpha=0.5" in the scatterplot so that the plotted points are semi-transparent
# (alpha-transparency of 0.5 out of 1), so that we can see when any points are superimposed.
plt.axes().set_aspect('equal')
plt.scatter(seq[:,0], seq[:,1], marker=".", alpha=0.5);

N = 1000
seq = halton(6, N)
plt.title("2D Halton sequence")
plt.axes().set_aspect('equal')
plt.scatter(seq[:,0], seq[:,1], marker=".", alpha=0.5);

N = 10_000

seq = halton(3, N)
accum = 0
for i in range(N):
    xx1 = -numpy.pi + seq[i][0] * numpy.pi * 2
    xx2 = -numpy.pi + seq[i][1] * numpy.pi * 2
    xx3 = -numpy.pi + seq[i][2] * numpy.pi * 2
    accum += numpy.sin(xx1) + 7*numpy.sin(xx2)**2 + 0.1 * xx3**4 * numpy.sin(xx1)
volume = (2 * numpy.pi)**3
result = {} 
result["MC"] = volume * accum / float(N)
print("Qausi Monte Carlo Halton Sequence result: {}".format(result["MC"]))

N = 100000

seq = halton(3, N)
accum = 0
for i in range(N):
    x = -numpy.pi + seq[i][0] * numpy.pi * 2
    y = -numpy.pi + seq[i][1] * numpy.pi * 2
    z = -numpy.pi + seq[i][2] * numpy.pi * 2
    accum += sin(x**2) + sin(y**2) + sin(z**2)
volume = (2 * numpy.pi)**3
result = {} 
result["MC"] = volume * accum / float(N)
print("Qausi Monte Carlo Halton Sequence result: {}".format(result["MC"])
︡1a0a5d92-a315-41cb-a4b9-bfcba5e6ad7d︡{"stdout":"x**4 - 14*x**3 + 71*x**2 - 154*x + 120\n"}︡{"stdout":"0\n"}︡{"stdout":"x**3 - 12*x**2 + 47*x - 60\n"}︡{"stdout":"0\n"}︡{"stdout":"x**2 - 9*x + 20\n"}︡{"stdout":"0\n"}︡{"stdout":"x - 5\n"}︡{"stdout":"0\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"Poly(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800, x, domain='ZZ')\n"}︡{"stdout":" \n"}︡{"stdout":"x**9 - 54*x**8 + 1266*x**7 - 16884*x**6 + 140889*x**5 - 761166*x**4 + 2655764*x**3 - 5753736*x**2 + 6999840*x - 3628800\n0\nx**8 - 52*x**7 + 1162*x**6 - 14560*x**5 + 111769*x**4 - 537628*x**3 + 1580508*x**2 - 2592720*x + 1814400\n0\nx**7 - 49*x**6 + 1015*x**5 - 11515*x**4 + 77224*x**3 - 305956*x**2 + 662640*x - 604800\n0\nx**6 - 45*x**5 + 835*x**4 - 8175*x**3 + 44524*x**2 - 127860*x + 151200\n0\nx**5 - 40*x**4 + 635*x**3 - 5000*x**2 + 19524*x - 30240\n0\nx**4 - 34*x**3 + 431*x**2 - 2414*x + 5040\n0\nx**3 - 27*x**2 + 242*x - 720\n0\nx**2 - 19*x + 90\n0\nx - 10\n0\n1\n0\n0\n1\n"}︡{"stdout":"(x - 5)*(x - 4)*(x - 3)*(x - 2)*(x - 1)\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"(x - 10)*(x - 9)*(x - 8)*(x - 7)*(x - 6)*(x - 5)*(x - 4)*(x - 3)*(x - 2)*(x - 1)\n"}︡{"stdout":"FiniteSet(1, 2, 3, 4, 5)\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"FiniteSet(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)\n"}︡{"stdout":"(x1 + I*x2)*(y1 + I*y2)*(z1 + I*z2)\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"w= 0.28902548222223624241 - 0.091999668350375232456*I\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"(u1 + I*u2)*(v1 + I*v2)*(w1 + I*w2)\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}︡{"stdout":"w= 0.28902548222223624241 - 0.091999668350375232456*I\n"}︡{"stdout":"x**3/3\n"}︡{"stdout":"Analytical result: 41.333333333333336\n"}︡{"stdout":"3*sqrt(2)*sqrt(pi)*fresnels(sqrt(2)*x/sqrt(pi))*gamma(3/4)/(8*gamma(7/4))\n"}︡{"stdout":"Analytical result: 0.3102683017233811\n"}︡{"stdout":"x**3/3\n"}︡{"stdout":"Analytical result: 41.333333333333336\n"}︡︡{"stdout":"0\n"}︡{"stdout":"x**3 - 12*x**2 + 47*x - 60\n"}︡{"stdout":"0\n"}︡{"stdout":"x**2 - 9*x + 20\n"}︡{"stdout":"0\n"}︡{"stdout":"x - 5\n"}︡{"stdout":"0\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"Poly(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800, x, domain='ZZ')\n"}︡{"stdout":" \n"}︡{"stdout":"x**9 - 54*x**8 + 1266*x**7 - 16884*x**6 + 140889*x**5 - 761166*x**4 + 2655764*x**3 - 5753736*x**2 + 6999840*x - 3628800\n0\nx**8 - 52*x**7 + 1162*x**6 - 14560*x**5 + 111769*x**4 - 537628*x**3 + 1580508*x**2 - 2592720*x + 1814400\n0\nx**7 - 49*x**6 + 1015*x**5 - 11515*x**4 + 77224*x**3 - 305956*x**2 + 662640*x - 604800\n0\nx**6 - 45*x**5 + 835*x**4 - 8175*x**3 + 44524*x**2 - 127860*x + 151200\n0\nx**5 - 40*x**4 + 635*x**3 - 5000*x**2 + 19524*x - 30240\n0\nx**4 - 34*x**3 + 431*x**2 - 2414*x + 5040\n0\nx**3 - 27*x**2 + 242*x - 720\n0\nx**2 - 19*x + 90\n0\nx - 10\n0\n1\n0\n0\n1\n"}︡{"stdout":"(x - 5)*(x - 4)*(x - 3)*(x - 2)*(x - 1)\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"(x - 10)*(x - 9)*(x - 8)*(x - 7)*(x - 6)*(x - 5)*(x - 4)*(x - 3)*(x - 2)*(x - 1)\n"}︡{"stdout":"FiniteSet(1, 2, 3, 4, 5)\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"FiniteSet(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)\n"}︡{"stdout":"(x1 + I*x2)*(y1 + I*y2)*(z1 + I*z2)\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"w= 0.28902548222223624241 - 0.091999668350375232456*I\n"}︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"stdout":"(u1 + I*u2)*(v1 + I*v2)*(w1 + I*w2)\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}









