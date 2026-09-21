What have I done:
$$
\begin{align}
\lim_{x \to 1} f(x) = L &= \lim_{x \to 1} \frac{1 - x^{100}}{1 - x^{3}}
\\ L &= \lim_{x \to 1} \frac{1}{1} - \frac{x^{100}}{x^{3}}
\\ L &= \lim_{x \to 1} 1 - x^{97}
\\ L &= 1 - (1)^{97}
\\ L &= 1 - 1
\\ L &= 0
\end{align}
$$

What should've I done

$$
\begin{align}
\lim_{x \to 1} f(x) = L &= \lim_{x \to 1} \frac{1 - x^{100}}{1 - x^{3}} 
\\ L &= \lim_{x \to 1} \frac{(1-x) \cdot \left(1+x+x^2+x^3 + ... + x^{100} \right)}{(1-x) \cdot \left( 1+x+x^2 \right)} 
\\ L &= \lim_{x \to 1} \frac{\left(1+x+x^2+x^3 + ... + x^{100} \right)}{\left( 1+x+x^2 \right)} 
\\ L &= \frac{100}{3} 
\\ L &= 33,\bar{3}
\end{align}
$$

Or with L'Hôpital anyway

$$
\begin{align}
\lim_{x \to 1} f(x) = L &= \lim_{x \to 1} \frac{1 - x^{100}}{1 - x^{3}}
\\ L &= \lim_{x \to 1} \frac{-100x^{99}}{-3x^2}
\\ L &= \frac{-100(1)^{99}}{-3(1)^3}
\\ L &= \frac{-100}{-3} = 33,\bar{3}
\end{align}
$$
