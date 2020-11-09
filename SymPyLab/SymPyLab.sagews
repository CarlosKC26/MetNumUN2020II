︠7cf4197c-b0eb-4d3d-998d-1d356743f396︠
from IPython.display import Image
import sympy
import math
from sympy import *
from sympy import Symbol
from sympy import div
from sympy import integrate
from sympy import sin
from sympy import Symbol
from sympy import cos
import numpy
︡4bbacdb9-8dfa-4b47-965c-63085636db34︡{"done":true}
︠f03e1661-2ae6-4edc-8118-dd329a2d537b︠
%md
# SymPyLab
*SymPy’s documentation

https://docs.sympy.org/latest/index.html*

# SymPy’s polynomials
*https://docs.sympy.org/latest/modules/polys/basics.html#polynomials

(x-1)(x-2)(x-3)(x-4)(x-5) = x^5 - 15 x^4 + 85 x^3 - 225 x^2 + 274 x - 120

(x^5 - 15 x^4 + 85 x^3 - 225 x^2 + 274 x - 120) / (x-1) = x^4 - 14 x^3 + 71 x^2 - 154 x + 120*
︡8fbdfce6-0ac8-4eec-97c7-11d23725b821︡{"done":true,"md":"# SymPyLab\n*SymPy’s documentation\n\nhttps://docs.sympy.org/latest/index.html*\n\n# SymPy’s polynomials\n*https://docs.sympy.org/latest/modules/polys/basics.html#polynomials\n\n(x-1)(x-2)(x-3)(x-4)(x-5) = x^5 - 15 x^4 + 85 x^3 - 225 x^2 + 274 x - 120\n\n(x^5 - 15 x^4 + 85 x^3 - 225 x^2 + 274 x - 120) / (x-1) = x^4 - 14 x^3 + 71 x^2 - 154 x + 120*"}
︠d12036b5-57a4-47c5-bcde-ca9f8fcbecfa︠
from sympy import Symbol
from sympy import div

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
︡90244dea-9994-45f3-922f-02ffb9c4a462︡{"stdout":"x**4 - 14*x**3 + 71*x**2 - 154*x + 120\n"}︡{"stdout":"0\n"}︡{"stdout":"x**3 - 12*x**2 + 47*x - 60\n"}︡{"stdout":"0\n"}︡{"stdout":"x**2 - 9*x + 20\n"}︡{"stdout":"0\n"}︡{"stdout":"x - 5\n"}︡{"stdout":"0\n"}︡{"done":true}
︠f8fde579-0190-4088-95e9-49749cd8e6c6︠
%md
*Our Example*
︡ff519449-49bf-4f08-9fa0-47dfc76a6abb︡{"done":true,"md":"*Our Example*"}
︠0b309524-4fcd-4e87-9d4a-a46e9a694774︠
Image('OurExample1_1.jpg', width=500)
︡f494080b-ea77-44cc-9ca8-4885023840e2︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"done":true}
︠511f62cd-bdc5-434b-b39b-be20333eeef9︠
Image('OurExample1_2.jpg', width=500)
︡58fcf708-c679-4557-8e12-d8a20181ff2e︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"done":true}
︠1de2dabf-4caf-4714-9f66-40281f34f892︠
x = Symbol('x')

p = (x-1)*(x-2)*(x-3)*(x-4)*(x-5)*(x-6)*(x-7)*(x-8)*(x-9)*(x-10)

print(p.as_poly())
print(" ")

for i in range(11):
  p,r = div(p, x-(i+1))
  print(p)
  print(r)
︡7475a079-7f17-4734-a79d-84dcfa65da16︡{"stdout":"Poly(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800, x, domain='ZZ')\n"}︡{"stdout":" \n"}︡{"stdout":"x**9 - 54*x**8 + 1266*x**7 - 16884*x**6 + 140889*x**5 - 761166*x**4 + 2655764*x**3 - 5753736*x**2 + 6999840*x - 3628800\n0\nx**8 - 52*x**7 + 1162*x**6 - 14560*x**5 + 111769*x**4 - 537628*x**3 + 1580508*x**2 - 2592720*x + 1814400\n0\nx**7 - 49*x**6 + 1015*x**5 - 11515*x**4 + 77224*x**3 - 305956*x**2 + 662640*x - 604800\n0\nx**6 - 45*x**5 + 835*x**4 - 8175*x**3 + 44524*x**2 - 127860*x + 151200\n0\nx**5 - 40*x**4 + 635*x**3 - 5000*x**2 + 19524*x - 30240\n0\nx**4 - 34*x**3 + 431*x**2 - 2414*x + 5040\n0\nx**3 - 27*x**2 + 242*x - 720\n0\nx**2 - 19*x + 90\n0\nx - 10\n0\n1\n0\n0\n1\n"}︡{"done":true}
︠00baf365-92ed-488f-a51b-098c5281ce5c︠
%md
# SymPy’s polynomial simple univariate polynomial factorization
*https://docs.sympy.org/latest/modules/polys/wester.html#simple-univariate-polynomial-factorization

factor(x**5 - 15*x**4 + 85*x**3 - 225*x**2 + 274*x - 120)*
︡d81fe07e-1a51-4244-b25f-f2114607c413︡{"done":true,"md":"# SymPy’s polynomial simple univariate polynomial factorization\n*https://docs.sympy.org/latest/modules/polys/wester.html#simple-univariate-polynomial-factorization\n\nfactor(x**5 - 15*x**4 + 85*x**3 - 225*x**2 + 274*x - 120)*"}
︠0e805aab-9961-4325-82eb-27c1ae8fd05f︠
︡9de36b23-a172-4827-a3c6-9c09024249b3︡
︠70559d40-6c83-4c97-9c2e-0fac0af1d52as︠
x = Symbol('x')
factor(x**5 - 15*x**4  + 85*x**3 - 225*x**2 + 274*x - 120)
︡9759103b-c6c1-432b-afa5-f4f4d7ca522a︡{"stdout":"(x - 5)*(x - 4)*(x - 3)*(x - 2)*(x - 1)\n"}︡{"done":true}
︠592f2fab-9541-4af2-af82-63652bcbcc5a︠
︡6974f006-8936-4f6b-8c32-accee31d9efa︡
︠0d7d901b-4822-4eec-8953-a042a392b28d︠
%md
*our example*
︡d4f2316d-ea7f-4dc9-a162-b06865da4386︡{"done":true,"md":"*our example*"}
︠a9aa034d-945b-46b7-b599-75a66c39e676︠
︡9d4e330c-abc8-48b3-a364-61bda7e0b99a︡
︠559e5aa7-4637-40b9-9f23-00511f723b6fs︠
Image('OurExample2.jpg', width=500)
︡4a06e5a6-5894-40ab-8d36-e1c055f3a65d︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"done":true}
︠5e8bdb17-2c56-40ad-8c53-01f56e38077a︠
︡701a6aad-ce32-4ed8-a9bd-64f4ec811570︡
︠9610c393-78cc-4f64-9d25-3a7568dc8328s︠
x = Symbol('x')
factor(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800)
︡8e8223cd-c20f-45fc-8ca1-eef8bd345db2︡{"stdout":"(x - 10)*(x - 9)*(x - 8)*(x - 7)*(x - 6)*(x - 5)*(x - 4)*(x - 3)*(x - 2)*(x - 1)\n"}︡{"done":true}
︠f5962226-acc0-4a29-a3bb-b1c0d945fec3︠
︡4896f48a-fa94-42b1-bd0a-b0b6e75d3b05︡
︠b5e5e011-77a8-4e45-8e5e-905f1ed67ade︠
%md
# SymPy’s solvers
*https://docs.sympy.org/latest/tutorial/solvers.html

x**5 - 15*x**4 + 85*x** 3 - 225*x** 2 + 274*x - 120 = 0*
︡2e039b75-9789-413c-a8a4-f486c88ca3d1︡{"done":true,"md":"# SymPy’s solvers\n*https://docs.sympy.org/latest/tutorial/solvers.html\n\nx**5 - 15*x**4 + 85*x** 3 - 225*x** 2 + 274*x - 120 = 0*"}
︠c3039fde-9bf6-4df3-b596-72692cc232e3︠
︡45a5b71f-378b-4251-8b0a-7fa3fb437195︡
︠9bbc131c-a59b-4466-bfdd-f078b31d3ea7s︠
x = Symbol('x')
solveset(Eq(x**5 - 15*x**4  + 85*x**3 - 225*x**2 + 274*x - 120, 0), x)
︡8fa3fb9d-9e47-42cd-89b3-6ba0209974e7︡{"stdout":"FiniteSet(1, 2, 3, 4, 5)"}︡{"stdout":"\n"}︡{"done":true}
︠0a06dea3-1d4e-420d-b229-f6c5827a9518︠
︡c3df2479-2596-4989-8c52-96a425209eaf︡
︠c92dc3f2-5c1f-4f09-ad2f-b190b43b0d2e︠
%md
*Our example*
︡1fbff40a-cbe1-4693-b346-e8492a3ae77e︡{"done":true,"md":"*Our example*"}
︠c3b53e48-f2e1-44d0-82c8-e71864f1fc63︠
︡f7340731-8d2f-415b-b9be-5f7dd069d88b︡
︠0238a79f-65ba-4e7e-b258-50accc42d2abs︠
Image('OurExample3.png', width=500)
︡3a711737-69e8-47b3-a4a7-c0c8ece58f77︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"done":true}
︠389fad21-9e72-4b8d-89b1-6fce9d41879f︠
︡07938810-a12b-4d2b-bc31-6890d5fd4ae1︡
︠db66eb14-c285-4d40-98f4-b99778eaed67s︠
x = Symbol('x')
solveset(Eq(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800, 0), x)
︡40428f3c-125e-4557-8974-186892366c89︡{"stdout":"FiniteSet(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)\n"}︡{"done":true}
︠56c989d3-dd06-4951-b466-2fa6c154a0bb︠
︡8e66d47a-f30e-4ed9-9bdc-fa262fb4bd06︡
︠d5eeb793-b102-4118-9e24-388bb6bafdbb︠
%md
# SymPy’s Symbolic and Numercical Complex Evaluations
*https://docs.sympy.org/latest/modules/evalf.html](https://)

x = x1 + Ix2,y = y1 + Iy2, z = z1 + Iz2, xy*z*
︡e3e5191a-d731-4ae4-bced-7fbb90e9fa61︡{"done":true,"md":"# SymPy’s Symbolic and Numercical Complex Evaluations\n*https://docs.sympy.org/latest/modules/evalf.html](https://)\n\nx = x1 + Ix2,y = y1 + Iy2, z = z1 + Iz2, xy*z*"}
︠7735f0eb-8275-4f2e-a69b-9d3ef13119ae︠
︡daf1dd02-a794-43be-8759-6bc89f3cd529︡
︠18351a5e-083e-47a6-b286-7ff22e21131fs︠
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
︡a327462f-cf34-48d3-bdf0-452b1209ac73︡{"stdout":"(x1 + I*x2)*(y1 + I*y2)*(z1 + I*z2)\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"w= 0.28902548222223624241 - 0.091999668350375232456*I\n"}︡{"done":true}
︠b237732e-5a8b-4fa6-8351-c1b0171e50a2︠
︡cea2d311-fa9d-4b2c-a333-a62a97d5bbfc︡
︠f9a9e871-9e77-4ff3-83d1-60b8e03aedfb︠
%md
*Our example*
︡c57a1ce8-a5ef-4ab9-ae51-ff503845485e︡{"done":true,"md":"*Our example*"}
︠e9606bc8-2930-4031-b238-3ff69c7d861d︠
︡38bf386c-9b8e-4e34-9d7f-15684b9ac431︡
︠ce2422a4-4d92-43bb-830b-e3fc8fb55254s︠
Image('OurExample4.png', width=500)
︡fc2924f1-ad4f-4cd3-86f6-ee1d511499f0︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"done":true}
︠0140897c-bef8-47b0-851c-b3e3e6702d22︠
︡1cbfc1ec-4603-460a-8a03-d3a8d5e33b78︡
︠9f539646-50b8-4b61-a29e-fcbd578b8340s︠
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
︡2f43326a-91b5-4e1b-8728-5f1675e8cb1b︡{"stdout":"(u1 + I*u2)*(v1 + I*v2)*(w1 + I*w2)\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}︡{"stdout":"u1*v1*w1 + I*u1*v1*w2 + I*u1*v2*w1 - u1*v2*w2 + I*u2*v1*w1 - u2*v1*w2 - u2*v2*w1 - I*u2*v2*w2\n"}︡{"stdout":"w= 0.28902548222223624241 - 0.091999668350375232456*I\n"}︡{"done":true}
︠7766c1cd-f048-4002-b135-e4e0981ae3b8︠
︡7b7f3a4d-e5b9-419c-aeea-dd2b6b5851e9︡
︠6fc673d7-8ced-4877-905f-2e75f2352220︠
%md
# SymPy’s integrals
*https://docs.sympy.org/latest/modules/integrals/integrals.html

risk-engineering.org*
︡ea3d5628-49ff-4bb6-a9c5-323d55e9f7e4︡{"done":true,"md":"# SymPy’s integrals\n*https://docs.sympy.org/latest/modules/integrals/integrals.html\n\nrisk-engineering.org*"}
︠842c5891-5ed5-409d-98fa-5fd98df7d3e1︠
%md
*Let’s start with a simple integration problem in 1D,

$5$

$∫x2dx$

$1$

This is easy to solve analytically, and we can use the SymPy library in case you’ve forgotten how to resolve simple integrals.*
︡aa7cc2d7-cb5e-4fd5-b4a8-8df31d69862b︡{"done":true,"md":"*Let’s start with a simple integration problem in 1D,\n\n$5$\n\n$∫x2dx$\n\n$1$\n\nThis is easy to solve analytically, and we can use the SymPy library in case you’ve forgotten how to resolve simple integrals.*"}
︠bd1cd0bd-60aa-4065-bf5e-3b624e221093︠
︡237361b6-fe29-4a91-b7bf-3d8feab82a68︡
︠9ca8df05-89d0-4bcc-93a8-9b69916871e6s︠
import sympy
# we’ll save results using different methods in this data structure, called a dictionary
result = {}
x = sympy.Symbol("x")
i = sympy.integrate(x**2)
print(i)
result["analytical"] = float(i.subs(x, 5) - i.subs(x, 1))
print("Analytical result: {}".format(result["analytical"]))
︡ffc70cf7-966c-4c9d-88e0-03bcdcbc3774︡{"stdout":"x**3/3\n"}︡{"stdout":"Analytical result: 41.333333333333336\n"}︡{"done":true}
︠1fbd1218-e08b-4d36-abf5-30046ba124a2︠
︡bece0ef0-a08a-4ea0-b0de-1362bae6755c︡
︠44b49782-c505-408b-b9bf-1f922a2bfe4c︠
%md
*Our example*
︡61029ef5-abb5-42ae-a9c9-197b5d461683︡{"done":true,"md":"*Our example*"}
︠bf3033dd-210d-4b02-85ec-3e109ec47770︠
︡1dd9b60a-91c9-40f1-a927-717e8e07b9ea︡
︠e26edb0e-bef2-43fa-8a34-12f749ef3a26s︠
from sympy import sin
dictt = {}
x = sympy.Symbol("x")
i = sympy.integrate(sin(x**2))
print(i)
dictt["analytical"] = float(i.subs(x, 1) - i.subs(x, 0))
print("Analytical result: {}".format(dictt["analytical"]))
︡98116cbe-74d8-4de4-bb30-354e511e8314︡{"stdout":"3*sqrt(2)*sqrt(pi)*fresnels(sqrt(2)*x/sqrt(pi))*gamma(3/4)/(8*gamma(7/4))\n"}︡{"stdout":"Analytical result: 0.3102683017233811\n"}︡{"done":true}
︠9dc429fa-84ad-4fc4-82a9-43cfa3de6a68︠
︡71e1373e-4786-4662-aeb6-ed295eda8e81︡
︠0a6be8da-8b1f-4504-9178-b0146fddcc37︠
%md
*Integrating with Monte Carlo risk-engineering.org

We can estimate this integral using a standard Monte Carlo method, where we use the fact that the expectation of a random variable is related to its integral

E(f(x))=∫f(x)dx

We will sample a large number N of points in I and calculate their average, and multiply by the range over which we are integrating.*
︡8e8e146c-c529-40d1-9a67-4f9136140fae︡{"done":true,"md":"*Integrating with Monte Carlo risk-engineering.org\n\nWe can estimate this integral using a standard Monte Carlo method, where we use the fact that the expectation of a random variable is related to its integral\n\nE(f(x))=∫f(x)dx \n\nWe will sample a large number N of points in I and calculate their average, and multiply by the range over which we are integrating.*"}
︠eff31676-55b3-4d9e-916f-559ac0d7fbc0︠
︡7e94567c-46aa-4abd-a01b-36c9ba71a7f7︡
︠fb02d105-57c5-43d3-9d37-ae65d6571e58s︠
import numpy
N = 1000000
accum = 0
for i in range(N):
    x = numpy.random.uniform(1, 5)
    accum += x**2
volume = 5 - 1
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))
︡78b53e89-78a9-4eac-a496-4fdad519eb7d︡{"stdout":"Standard Monte Carlo result: 41.2915438779455\n"}︡{"done":true}
︠84e3d4ee-18ce-4536-a889-1162376c87ba︠
%md
*Our example*
︡6b1b2e49-5613-47e4-a7c5-3175e381da90︡{"done":true,"md":"*Our example*"}
︠b4ed31e5-f821-437c-8b29-5b59c4833941︠
︡e2a50f03-5d73-4a84-9ca1-cc41973937fa︡
︠c5dc6433-2658-486f-9ac0-0a2d06beb0cas︠
N = 100000
accum = 0
for i in range(N):
    x = numpy.random.uniform(0, 1)
    accum += sin(x**2)
volume = 1 - 0
dictt["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(dictt["MC"]))
︡c92f5571-97a9-40de-ae22-64d888e684ad︡{"stdout":"Standard Monte Carlo result: 0.310597957270186\n"}︡{"done":true}
︠2feaaf63-8371-42e2-b6ad-9562be618c44︠
︡bbc03228-3dcb-44db-bafc-0d30c912dc94︡
︠7bce29ce-e455-4b64-9d34-663499aaf501︠
%md
*integrate(x**2 * sin(x)**3)*
︡b365a256-092a-491e-9248-a2c8962dd0b1︡{"done":true,"md":"*integrate(x**2 * sin(x)**3)*"}
︠38345b81-0b89-4213-8af0-92afb6c26037︠
︡1a792c93-0be4-4329-91dd-a52ec645d778︡
︠2fcaed74-8433-4e5f-99ba-04a862410487s︠
x = Symbol("x")
i = integrate(x**2 * sin(x)**3)
print(i)
print(float(i.subs(x, 5) - i.subs(x, 1)))
︡f129b77f-981c-47f0-a713-dcf1d2f83357︡{"stdout":"-x**2*sin(x)**2*cos(x) - 2*x**2*cos(x)**3/3 + 14*x*sin(x)**3/9 + 4*x*sin(x)*cos(x)**2/3 + 14*sin(x)**2*cos(x)/9 + 40*cos(x)**3/27\n"}︡{"stdout":"-15.42978215330555\n"}︡{"done":true}
︠ade09f12-2b73-45b5-94da-9e7cefc64f3f︠
︡08ecbb7e-73df-4fae-8c93-d70072837a30︡
︠f0633eb5-c0e1-4473-a3a4-690e5404f12d︠
%md
*Our example*
︡bc913be7-3df3-4593-b5c9-db79345521cd︡{"done":true,"md":"*Our example*"}
︠8860c3ad-d4cf-41d5-977f-0cb91501350f︠
︡0dd80720-d588-41eb-8538-dfad874b1d91︡
︠5c27a5b7-a2df-41d2-9b78-378ddf2f539ds︠
Image('OurIntegral11.png', width=500)
︡f6f0d808-8f18-40a6-a303-220ebb363c89︡{"stdout":"<IPython.core.display.Image object>\n"}︡{"done":true}
︠2b1118c2-3e19-4d18-b75e-40e42f428b70︠
︡7a7b1049-cc09-4607-9bbb-767540a55f06︡
︠de4560ce-58c7-4173-a494-3f263f9b9131s︠
x = Symbol("x")
i = integrate(sin(x**2))
print(i)
print(float(i.subs(x, 1) - i.subs(x, 0)))
︡ad819f08-e4ba-4544-9ece-b4ce7f1f11eb︡{"stdout":"3*sqrt(2)*sqrt(pi)*fresnels(sqrt(2)*x/sqrt(pi))*gamma(3/4)/(8*gamma(7/4))\n"}︡{"stdout":"0.3102683017233811\n"}︡{"done":true}
︠78e8706d-6554-4a42-aae8-c0b8c5fe99db︠
︡d183cf95-2de0-4910-b21b-dae502919c83︡
︠883ab645-0338-4d48-9ed6-7f754eaf7d50s︠
N = 100000
accum = 0
l =[]
for i in range(N):
    x = numpy.random.uniform(0, 1)
    accum += sin(x**2)
volume = 1-0
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))
︡ee0b72ac-30ce-48b3-bf42-9154b0ce9a6c︡{"stdout":"Standard Monte Carlo result: 0.310447107974745\n"}︡{"done":true}
︠4c44db8b-0bf9-47fc-835b-69acc7fe57b3︠
︡e20f957a-68a2-4ce7-9069-09148a6dbf04︡
︠ae0be565-2fb9-4907-b781-59ef93582f7a︠
%md
*A higher dimensional integral risk-engineering.org

Let us now analyze an integration problem in dimension 4, the Ishigami function. This is a well-known function in numerical optimization and stochastic analysis, because it is very highly non-linear.*
︡50ade3de-b7c6-49b6-a7ba-30bbd9ba60b1︡{"done":true,"md":"*A higher dimensional integral risk-engineering.org\n\nLet us now analyze an integration problem in dimension 4, the Ishigami function. This is a well-known function in numerical optimization and stochastic analysis, because it is very highly non-linear.*"}
︠8ecc1dea-e255-426f-a1c7-943937f8a36d︠
︡931858ce-9b47-4301-8038-ef0c972f2c7d︡
︠d5888064-5044-4a78-98fb-82d5fab51483s︠
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
︡6bf0cca8-6a21-4640-8846-46b651b5a635︡{"stdout":"Analytical result: 868.175747048395\n"}︡{"done":true}
︠f64ff08c-0b4a-4706-b43c-1666a851051f︠
︡4c97531d-88ba-4454-8d2a-d3c31a5c9636︡
︠407e2c11-d7af-415d-8e37-a357d37c42f7s︠
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
︡662c0dbb-2b6d-4d64-be81-2c4787dc31ad︡{"stdout":"Standard Monte Carlo result: 878.152527049682\n"}︡{"done":true}
︠52edf741-135b-40c2-b822-9a419718e922︠
︡82a8e86b-da7d-4d2e-9896-8edd84e02252︡
︠01008d37-67a1-440d-a236-f851325e8998︠
%md
*Our example*
︡58540b8c-8b5c-4b14-ac35-d5b474c25a89︡{"done":true,"md":"*Our example*"}
︠9035d297-9a62-48dd-b584-17a044e06298︠
︡cb04bb65-de92-4cf5-aa6a-de34bf15df7f︡
︠b3d2c1df-f032-4916-b17a-cdce8566b073s︠
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
︡de25823c-36e1-4d6a-955f-134db0b9755c︡{"stdout":"Analytical result: 5.922924432045176\n"}︡{"done":true}
︠553ec1ab-be91-4190-9c09-11658f4bbcd9︠
︡fa230499-f499-4127-bcce-3ae795006330︡
︠384fea50-d21d-433c-9ee8-214c1c34dfb1s︠
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
︡1570748d-6cff-44f2-9ce2-c215c6b92764︡{"stdout":"Standard Monte Carlo result: 5.76047902031443\n"}︡{"done":true}
︠739fb08c-410f-4e0b-9559-0ed4f520d0d7︠
︡f3395e1f-227f-4631-babe-0ff7abab8c36︡
︠46f32b0b-a6cb-4b10-b93c-45a1246a0b9ds︠
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
︡a469d491-9c96-4568-8a34-8ce7d7742f91︡{"done":true}
︠89399758-8b72-4507-bf3d-b27e787e1ac0︠
︡9afc0984-d918-402c-9c6e-b032a15a97bc︡
︠a83583c8-778f-4059-b762-0aa836e2514es︠
import matplotlib.pyplot as plt
N = 1000
seq = halton(2, N)
plt.title("2D Halton sequence")
# Note: we use "alpha=0.5" in the scatterplot so that the plotted points are semi-transparent
# (alpha-transparency of 0.5 out of 1), so that we can see when any points are superimposed.
plt.axes().set_aspect('equal')
plt.scatter(seq[:,0], seq[:,1], marker=".", alpha=0.5);
︡a8bddd29-d829-4407-939b-07d986149a1e︡{"stdout":"Text(0.5, 1.0, '2D Halton sequence')\n"}︡{"stderr":":1: MatplotlibDeprecationWarning: Adding an axes using the same arguments as a previous axes currently reuses the earlier instance.  In a future version, a new instance will always be created and returned.  Meanwhile, this warning can be suppressed, and the future behavior ensured, by passing a unique label to each axes instance.\n"}︡{"stdout":"<matplotlib.collections.PathCollection object at 0x7efe4dd6e8b0>\n"}︡{"done":true}
︠60743be9-f373-4511-bd2f-8f72498778c7︠
︡f265850c-8367-4f55-945d-c4a4ef6f5ff3︡
︠cfe34dd5-b068-4895-a45c-0b805418e6e3︠
%md
*Our Example*
︡26f4f252-2a45-461a-905b-bbf98327d022︡{"done":true,"md":"*Our Example*"}
︠03205215-e646-490b-8c3d-24cbe6e6a8d8︠
︡4b7d00be-581d-43df-8796-ad32b5ad2523︡
︠6064268e-ebb2-4710-baaa-6f65b972d45as︠
N = 1000
seq = halton(6, N)
plt.title("2D Halton sequence")
plt.axes().set_aspect('equal')
plt.scatter(seq[:,0], seq[:,1], marker=".", alpha=0.5);
︡d02aeb49-3d2c-416e-8ba1-6f5621a21f3c︡{"stdout":"Text(0.5, 1.0, '2D Halton sequence')\n"}︡{"stdout":"<matplotlib.collections.PathCollection object at 0x7efe4dd98700>\n"}︡{"done":true}
︠6e1624d9-58bb-4d58-a5fe-acc2b953146c︠
︡07d34497-a3c3-474e-8a0e-66bbfd951161︡
︠c8797263-36b8-4ac9-867e-05d12a9ff3e4s︠
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
︡05e81055-e84a-4e75-a7a5-1acdeb3a9eea︡{"stderr":"Error in lines 4-8\nAttributeError: 'Zero' object has no attribute 'sin'\n\nThe above exception was the direct cause of the following exception:\n\nTraceback (most recent call last):\n  File \"/cocalc/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 1230, in execute\n    exec(\n  File \"\", line 5, in <module>\nTypeError: loop of ufunc does not support argument 0 of type Zero which has no callable sin method\n"}︡{"done":true}
︠5e8914e6-2d88-4b42-b25f-959e04deb483︠
︡54b4587f-fe1c-45ff-a318-c4c5557c79b8︡
︠fba806f3-1203-49b1-8c3c-808d3dabfa9c︠
%md
*Our Example*
︡77f0b152-d0ed-4022-87ab-a0c6416c4cc4︡{"done":true,"md":"*Our Example*"}
︠78bef555-403a-4e27-a2e5-918156f39c10︠
︡9bad8cfe-f337-4326-9f38-da7bb42c7c59︡
︠18d9f70f-39fe-4468-889c-388fbbbb785f︠
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
print("Qausi Monte Carlo Halton Sequence result: {}".format(result["MC"]))%md
# Wolfram alpha answers question in natural languaje
*What is the average temperature in Bogota in September?*
︡d5c16f30-9749-4e39-bda6-ab30e941a4eb︡{"done":true,"md":"# Wolfram alpha answers question in natural languaje\n*What is the average temperature in Bogota in September?*"}
︠e0fbd2d0-281f-41c1-9861-5d37a7302193︠









