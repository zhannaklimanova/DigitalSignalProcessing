%% FIR & IIR Filters
%% Exercise 1
% *A _zero-phase_ filter is a special case of a linear-phase filter in which 
% the phase slope is 0. For a real-coefficient filter, the phase response only 
% takes values of either 0 or* $\pi$*. Below, it is shown that the impulse response* 
% $h[n] = b_1\delta[n+1] + b_0\delta[n] + b_1\delta[n-1]$ *leads to a _zero-phase_ 
% frequency response when* $(b_0, b_1) \in \mathbb{R}^2$.
% 
% Starting out with the impulse response $h[n]=b_1\delta[n+1]+b_0\delta[n]+b_1\delta[n-1]$, 
% the z-transform table can be used to convert it to the frequency response$H(z)=b_1z+b_0+b_1z^{-1}$. 
% 
% Input in $e^{j\omega}$ for $z$ to find the frequency response:
% 
% $$H\left(e^{j\omega_c}\right)=b_1e^{j\omega_c}+b_0+b_1e^{-j\omega_c}$$
% 
% Using Euler's identity $cos(\theta) = \frac{e^{j\theta} + e^{-j\theta}}{2}$:
% 
% $$H\left(e^{j\omega_c}\right) = b_0 + b_1\left(e^{j\omega_c} + e^{-j\omega_c}\right) 
% = b_0 + b_12cos(\omega_c) $$
% 
% The real part of the equation is $b_0 + b_12cos(\omega_c)$ and the imaginary 
% part is 0. Using the formula for computing the phase response:
% 
% $$\angle H(e^{j\omega}) = tan^{-1}\left(\frac{-0}{b_0 + b_12cos(\omega_c)}\right) 
% = tan^{-1}(0) = 0$$
% 
% *Sources used to complete this section:*
%% 
% * <https://en.wikipedia.org/wiki/Euler%27s_formula https://en.wikipedia.org/wiki/Euler%27s_formula>
%% Exercise 2
% *Figure 1 is used for parts 1 to 4 and contains 3 graphs:* 
%% 
% # $x[n]$*, a signal of the form* $x[n] = (A+Bcos(\omega_0n))u[n]$*, where* 
% $u[n]$ *is the unit step, and* $\omega_0$ *is the normalized angular speed.* 
% # $y[n]$*, the output of an FIR filter* $H$ *of order* $M$ *when* $x[n]$ *is 
% the input to the filter.*
% # *A zoomed-in display of y[n].*
%% 
% 
% Part 1: A, B, and Angular Speed
% Using Figure 1, $A$ is the DC offset which is the value around which the signal 
% evolves (average of the signal). $B$ is the amplitude of the signal which is 
% the value after subtracting the DC offset. $\omega_0$ is the unnormalized frequency 
% which can be obtained by computing the relationship between the period obtained 
% from the graph and the frequency $f = \frac{1}{T}$ and multiplied by $2\pi$ 
% to normalize.
% 
% $$A = \frac{6+-2}{2} = 2$$
% 
% $$B = 6 - 2 = 4$$
% 
% $$\omega_0 = \frac{2\pi}{20} = \frac{pi}{10} \approx  0.314$$
% *Part 2: Order of the Filter*
% The order of an FIR is equivalent to the _warm-up_ period duration (transient 
% response). Using the Figure 1 to find the order $M$ of the filter $H$, it is 
% determined that $y[n]$ settles at the 4th sample. The filter is therefore of 
% order $M = 4$.
% Part 3: Zeros of the Transfer Function
% The zeros of the transfer function $H(z)$ on the unit circle correspond to 
% the locations where the frequency is filtered out. Observing the$y[n]$ output, 
% the initial frequency is filtered output when the steady-state response is achieved. 
% On the unit circle, there is therefore one zero and its conjugate. In polar 
% form, the zero can be found at $re^{j\omega}$, where $r = 1$ because the zero 
% is directly on the unit circle and $\omega = \frac{\pi}{10}$. The final value 
% for the zero is therefore $(1)e^{\frac{j\pi}{10}}$. There is also the conjuage 
% zero which is in the same location but reflected over the $Re$ axis such that 
% $(1)e^{-\frac{j\pi}{10}}$. The two zeros are additionally expressed in cartesian 
% form below.
% 
% First zero: $e^{j\omega} = cos(\omega) + jsin(\omega) = cos(\frac{\pi}{10}) 
% + jsin(\frac{\pi}{10}) = 0.951 + 0.309j$
% 
% Second zero: $e^{-j\omega} = cos(-\omega) + jsin(-\omega) = cos(-\frac{\pi}{10}) 
% + jsin(-\frac{\pi}{10}) = 0.951 - 0.309j$
% Part 4: The DC Gain
% The DC gain of a filter is the value of its frequency response where $\omega 
% = 0$. In other words, DC gain is the ratio of the magnitude of the response 
% to the steady-state step to the magnitude of the step input. 
% 
% Magnitude of the steady-state 
% 
% $$\lim_{n \rightarrow{\infty}}y_{\text{steady}}[n]=-6$$ 
% 
% Using the result found in part 1, where the $A=2$, the ratio can be written 
% as the below formula
% 
% $$DC_\text{gain}=\frac{1}{A}\lim_{n\rightarrow{\infty}}y_{\text{steady}}[n]=\frac{-6}{2}=-3%$$
% 
% *Sources used to complete this section:*
%% 
% * <https://www.music.mcgill.ca/~gary/618/week1/node6.html https://www.music.mcgill.ca/~gary/618/week1/node6.html>
% * <https://brianmcfee.net/dstbook-site/content/ch12-ztransform/PoleZero.html 
% https://brianmcfee.net/dstbook-site/content/ch12-ztransform/PoleZero.html>
% * <https://www.youtube.com/watch?v=esZ_6n-qHuU&ab_channel=DavidDorran https://www.youtube.com/watch?v=esZ_6n-qHuU&ab_channel=DavidDorran>
% * https://eceweb1.rutgers.edu/~orfanidi/intro2sp/2e/orfanidis-isp2e-1up.pdf
% * https://www.electrical4u.com/dc-gain-transfer-function/
%% Exercise 3
% *Damping and bandwidth of a two-pole resonator are determined by the magnitude* 
% $r$ *of its complex poles* $p = re^{j\omega_c}$*, and its complex conjugate* 
% $\overline{p}$*. For example, it is possible to get the bandwidth* $B$ *(in 
% Hertz) of a resonator in terms of* $r$ *with* $B = -\frac{ln(r)}{\pi T_s$ *where* 
% $T_s = \frac{1}{F_s}$ *is the sampling period. This allows in return to calculate* 
% $r$ *in terms of bandwidth* $B$*, i.e.* $r = e^{-\pi BT_s}$*.*
% *Part 1:*
% Considering a general two-pole filter defined by its resonant frequency $f_c 
% = \frac{F_s}{4}$, and its bandwidth $B = 0.01F_s$. 
% Magnitude $r$
% The magnitude $r$ can be computed by plugging in the given values for $B$ 
% and $T_s$. 
% 
% $$r = e^{-\pi BT_s} = e^{-\pi 0.01F_sT_s} = e^{-\pi 0.01F_s\frac{1}{F_s}} 
% = e^{-\pi 0.01} = e^{-\pi 0.01F_sT_s}  = e^{-\pi 0.01} \approx 0.969$$
% Angular Frequency $\omega_c$
% $$\omega_c = \frac{2\pi F_s}{F_s} = \frac{2\pi}{4} = \frac{\pi}{2} \approx 
% 1.571 \frac{radians}{sample}$$
% Transfer Function $H(z)$
% $$H(z) = \frac{b_0}{(1-pz^{-1})(1-\overline{p}z^{-1})} = \frac{b_0}{(1-re^{j\omega_c}z^{-1})(1-re^{-j\omega_c}z^{-1})} 
% =  \frac{b_0}{1-2r cos(\omega_c)z^{-1} + r^2z^{-2}} = \frac{b_0}{1-2e^{\pi0.01}cos(\frac{\pi}{2})z^{-1} 
% + e^{-\pi0.02} z^{-2}} = \frac{b_0}{1-1.938cos(\frac{\pi}{2})z^{-1} + 0.939z^{-2}}$$
% 
% Since $\omega_c=\frac{\pi}{2}$, $\cos(\omega_c)=0$, the equation can be further 
% simplified:
% 
% $H(z) = \frac{b_0}{1-1.938cos(\frac{\pi}{2})z^{-1} + 0.939z^{-2}} = \frac{b_0}{1 
% + 0.939z^{-2}}$ where $a_1 = 0$ and $a_2 = 0.939$. 
% Part 2:
% $$H(e^{j\omega_c}) = \frac{b_0}{1 + 0.939(e^{j\omega_c})^{-2}} = 1$$
% 
% $$b_0 = 1 + 0.939(e^{-2j\omega_c}) = 1 + 0.939(e^{-2j\frac{\pi}{2}}) = 1 + 
% 0.939(e^{-j\pi}) = 1 + 0.939(cos(-\pi) + jsin(-\pi)) = 1 + 0.939(cos(-\pi)) 
% = 1 - 0.939 = 0.0610$$
% Part 3:
% The frequency response of this filter is $H(e^{-j\omega_c}) = \frac{0.0610}{1+0.939e^{-2j\omega_c}}$
% Magnitude Response
% $$|H(e^{-j\omega_c})| = \frac{0.0610}{1+0.939e^{-2j\omega_c}} = \frac{0.0610}{1+0.939e^{-2j\frac{\pi}{2}}} 
% = \frac{0.0610}{1 + 0.939(cos(-\pi) + jsin(-\pi))} = \frac{0.0610}{1 + 0.939(cos(-\pi))} 
% = \frac{0.0610}{1 - 0.939} = \frac{0.0610}{0.0610} = 1 $$
% 
% Give magnitude and and phase response in general  formula. and then plug in 
% the values
% Phase Response
% Starting from the frequency response $H(e^{j\omega_c}) = \frac{b_0}{1 + a_1e^{-j\omega_c} 
% + a_2e^{-2j\omega_c}} = \frac{b_0}{1 + a_1cos(-\omega_c) + a_1jsin(-\omega_c) 
% +  a_2cos(-2\omega_c) + a_2jsin(-2\omega_c)}$. 
% 
% Using the odd/even property of sin and cosine function $H(e^{j\omega_c})$ 
% can be simplified:
% 
% $$H(e^{j\omega_c}) = \frac{b_0}{1 + a_1cos(\omega_c) - a_1jsin(\omega_c) +  
% a_2cos(2\omega_c) - a_2jsin(2\omega_c)} = \frac{b_0}{1 + a_1cos(\omega_c) +  
% a_2cos(\omega_c) - a_1jsin(2\omega_c) - a_2jsin(2\omega_c)}$$
% 
% Using the imaginary and real parts the of the frequency response:
% 
% $$\angle H(e^{-j\omega_c}) = \tan^{-1}\left(\frac{-(- a_1sin(\omega_c) - a_2sin(2\omega_c))}{1 
% + a_1cos(\omega_c) +  a_2cos(2\omega_c) }\right) = -\tan^{-1}\left(\frac{- a_1sin(\omega_c) 
% - a_2sin(2\omega_c)}{1 + a_1cos(\omega_c) +  a_2cos(2\omega_c)}\right)$$
% 
% Plugging in the values for $a_1$ and $a_2$:
% 
% $$\angle H(e^{-j\omega_c}) = -\tan^{-1}\left(\frac{- 0*sin(\frac{\pi}{2}) 
% - 0.939*sin(\frac{2\pi}{2})}{1 + 0*cos(\frac{\pi}{2}) + 0.939*cos(\frac{2\pi}{2}) 
% }\right) = -\tan^{-1}\left(\frac{-0.939*sin(\frac{2\pi}{2})}{1 + 0.939*cos(\frac{2\pi}{2})}\right) 
% = -\tan^{-1}\left(\frac{-0.939*0}{1 + 0.939*-1}\right) = -\tan^{-1}\left(\frac{- 
% 0}{0.939}\right) = 0$$
% Part 4:
% The two-pole filter can be defined by the following difference equation: $y[n] 
% = b_0x[n] - a_1y[n-1] - a_2y[n-2]$. Where $a_1 = 0$ and $a_2 = 0.939$ so the 
% difference equation becomes$y[n] = 0.0610x[n] - 0.939y[n-2]$. 
% Part 5:
% System diagram in direct form 1:
% 
% 
%% 
% *Sources used to complete this section:*
%% 
% * <https://www.dsprelated.com/freebooks/filters/Two_Pole.html https://www.dsprelated.com/freebooks/filters/Two_Pole.html>
% * <https://ccrma.stanford.edu/~jos/fp/Two_Pole.html https://ccrma.stanford.edu/~jos/fp/Two_Pole.html>
% * https://eceweb1.rutgers.edu/~orfanidi/intro2sp/2e/orfanidis-isp2e-1up.pdf