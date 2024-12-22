---
layout: set
title: Set 8
categories: analysis1
use_latex : true
---
## Notation
* $\mathring{A}$ or $\operatorname{int}(A)$ - interior of $A$.
* $\overline{A}$ - closure of $A$.
* $A^\prime$ - accumulation points of $A$.

<hr>
## Ex. 1
#### Pf



<hr>
## Ex. 2
#### Pf

Suppose $A = \mathring{\overline{U}} \cap \mathring{\overline{V}} \neq \varnothing$, take $x \in A$.

Counterexample when $U$ and $V$ are not required to be open is to just a take a dense subset of our space. 
For example $X = \mathbb{R}$ and $U = \mathbb{Q}$, $V = \\{ \sqrt{2}\\}$.


<hr>

## Ex. 3
It's not true in general. Take $ U = \\{ 0 \\} $. Then $U = \overline{U}$, 
but $\overline{\mathring{\overline{U}}} = \varnothing$.

For arbitrary topological space we have $\overline{\operatorname{int}(\overline{U})} \subseteq \overline{U}$. Since $\operatorname{int}(\overline{U}) \subseteq \overline{U}$ and $\overline{U}$ is closed, 
it contains the closure of $\operatorname{int}(\overline{U})$.

We already showed that equality may not occur.

<hr>
## Ex.4
#### Pf.1 
Let $x \in A \cap \overline{B} \neq \varnothing$. Since $A$ open, there exists an open nbhd $U \subseteq A$ of $x$.
Note that $X\setminus A$ is closed and contains $B$. Which means $x \notin \overline{B}$ so $x \notin A \cap \overline{B}$.
Contradiction.
#### Pf. 2 
Since $A \cap B = \varnothing$ and $\overline{B} = B \cup B^{\prime}$, 
we have $A \cap \overline{B} = \varnothing \iff A \cap B^\prime = \varnothing$.
Suppose $x \in A$ since $A$ is open, there exists an open nbhd $U \subseteq A$ of $x$, s.t. 
$U \cap B = \varnothing$. But that means that $x \notin B^\prime$. So $A \cap B^\prime = \varnothing$.

<hr>
## Ex.5
We show it in general for topological spaces. 
Let $X$ be a topological space. 
#### Pf.1
Let $x \in \overline{A}\setminus A$ and $U$ be an open nbhd of $x$ in $\overline{A}\setminus A$. 
$X\setminus U$ is a closed subset of $X$ which contains $A$, but doesn't contain $x \in \overline{A}$.
So $x \notin \overline{A}$. Contradiction.
#### Pf.2



<hr>
## Ex.6

We show it for general metric spaces.

Let $X$ and $Y$ be metric spaces.

$(1) \implies (3)$

Let $f: X \rightarrow Y$ be continuous and let $A \subseteq Y$. 
Now let $x \in f^{-1}(\mathring{A})$. Since $\mathring{A}$ is open we can choose an $ɛ$-ball 
$B_{\varepsilon}(f(x)) \subseteq \mathring{A}$ 
containing $f(x)$. By continuity of $f$, for all $\varepsilon \gt 0$ we can choose $\delta \gt 0$, 
s.t. $f\[B_{\delta}(x)\] \subseteq B_{\varepsilon}(f(x))$ and hence 
$B_{\delta}(x) \subseteq f^{-1}\[B_{\varepsilon}(f(x))\] \subseteq f^{-1}(\mathring{A}) \subseteq f^{-1}(A)$.
But $B_{\delta}(x)$ is an open nbhd of $x$ contained in $f^{-1}(A)$ and so 
$x \in B_{\delta}(x) \subseteq {f^{-1}(A)}^{\circ}$.

$(2) \implies (3)$





<hr>

## Ex. 7

#### Pf
Suppose $\delta(\overline{A}\setminus \mathring{A}) \lt \delta(A)$.+