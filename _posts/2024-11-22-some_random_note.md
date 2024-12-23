---
layout: note
title:  "Random note"
date:   2024-11-22
last_modified_at: 
categories: [Functional Programming]
tags: [Lazy evaluation]
use_latex: true
comments: true
toc : true
---


## Just random short note


Intuitively what we do here is we hold on to out best guess (stored in first argument of `helper` function) till the very end. 
When we reach the end of our computation we check if our best guess was "good enough" (if it is equal to the value we were looking for).

Note that although this approach does decrease the worst case number of comparisons from $2d$ to $d + 1$, it also ensures that we cannot get any faster, meaning we have to traverse the tree till the end before checking for equality with our "best guess". 

One possible solution would be to use some sort of 'heuristic' and by that I mean some type of exponential backoff (basically distributing checks of equality with "best guess" sparser and sparser as we progress in computation) or something similar. It 
probably would be most sensible to parametrize the frequency of checking for equality 
with our "best guess" by $d$ (especially when dealing with balanced trees). 
This way it should be possible to reach some asymptotically optimal number 
of comparisons (probably).

Note however that our updated `betterMember` function still copies its whole search path. Effectively our computation could be represented as follows

*This is a sidenote at the bottom of the page in print.*{:.sidenote .bottom}

This is the main text. 
This is a text with a
footnote[^Notation].


<!-- <span class="sidenote">This is a side note that will appear on the side of the page.</span> -->

DIAGRAM

[[Oka98]](#Oka98)
> **_NOTE:_**  The note content.
Now we will try to deal with that problem.

## References

<a id="Oka98" name="Okasaki98">[Oka98]</a>
Okasaki C. Purely Functional Data Structures. Cambridge University Press; 1998.

<a id="2">[2]</a>
["What's new in purely functional data structures?"](https://cstheory.stackexchange.com/questions/1539/whats-new-in-purely-functional-data-structures-since-okasaki)

## Footnotes
[^Notation]: And here is the definition.
