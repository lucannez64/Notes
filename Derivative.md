# The Derivative

## Definition

The Derivative is the rate of change of function f(x) with respect to an independent variable 'x'.
It's the slope of the tangent line at a point x

$$\frac{df}{dx} = \lim_{\Delta x\to 0} \frac{f(x+\Delta x)-f(x)}{\Delta x}$$

Example :

$$ f(x) = x^2$$

$$ \frac{df}{dx} = \lim_{\Delta x \to 0} \frac{(x+\Delta x )^2+-x^2}{\Delta x}$$
$$\lim_{\Delta x \to 0} \frac{x^2 + 2x\Delta x+{\Delta x}^2-x^2}{\Delta x}$$
$$\lim_{\Delta x \to 0} \frac{2x\Delta x}{\Delta x}+\frac{{\Delta x}^2}{\Delta x}$$
$$\lim_{\Delta x \to 0} 2x+\Delta x$$
$$\lim_{\Delta x \to 0} 2x$$


Power law:
derivative of $f(x)=x^n$ = $nx^{n-1}$

Chain law:
Two function f(x),g(x)
$\frac{d}{dx}f(g(x))=\frac{df}{dx}(g(x)).\frac{dg}{dx}(x)$
$=f'(g(x)).g'(x)$

Example:

$f(x)= sin(x)$ \
$g(x)=x^3$ \
$f(g(x)) = sin(x^3)$ \
$f'(g(x)) = 3cos(x^3)x^2$ 

## Links
- [Identities](https://tutorial.math.lamar.edu/getfile.aspx?file=B,44,N)
