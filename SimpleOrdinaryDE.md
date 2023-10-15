---
- link: https://www.youtube.com/watch?v=BjvkBLfvkqY&list=PLMrJAkhIeNNTYaOnVI3QpH7jgULnAmvPA&index=4  
---

# Simple Ordinary Differential Equation

## First Order Linear Ordinary D.E
Let's say that bunnies are procreating \
let x = bunny population \
and the population grows at a rate $\lambda$

$\dot x = \frac{dx}{dt}=\lambda x, x(0) \ initial \ pop \ size$

We ask the question what is the population as a function of time ? \
x(t) ?

### Method 1:
$\frac{dx}{dt} = \lambda x$\
\
$\frac{dx}{x} = \lambda dt$\
\
$\int \frac{dx}{x} = \int \lambda dt$\
\
=> $ln(x(t)) = \lambda t + C$\
=> $x(t) = e^{\lambda t + C}$  we know that  $e^{a+b}=e^{a}e^{b}$\
=> $x(t) = e^{\lambda t}+K$\
K ?
$X(0) = e^0K \Rightarrow K = x(0)$

## Second Order ODE 

### Example
The differential equation you've written down is a second-order linear differential equation with constant coefficients, which can be written in the standard form $\frac{d^2x}{dt^2} + \frac{k}{m} \frac{dx}{dt} + \frac{g}{m} x = 0$. To solve this type of differential equation, you can use the characteristic equation, which is given by the equation $\lambda^2 + \frac{k}{m} \lambda + \frac{g}{m} = 0$. The solutions to this equation are the so-called characteristic roots, which are the values of $\lambda$ that satisfy the equation. In this case, the characteristic roots are given by the quadratic formula:

$$\lambda = \frac{-\frac{k}{m} \pm \sqrt{\left(\frac{k}{m}\right)^2 - 4 \cdot \frac{g}{m}}}{2}.$$

Once you have the characteristic roots, you can find the general solution to the differential equation by writing it in the form $x(t) = c_1 e^{\lambda_1 t} + c_2 e^{\lambda_2 t}$, where $c_1$ and $c_2$ are constants and $\lambda_1$ and $\lambda_2$ are the characteristic roots. To find the specific solution to the equation, you need to use initial conditions, which specify the values of $x$ and $\dot{x}$ at a particular time $t_0$. Using these initial conditions, you can solve for the constants $c_1$ and $c_2$ and obtain the specific solution to the differential equation.

[Maths](Maths.md)
