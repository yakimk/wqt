---
layout: note
title:  "Functional data structures"
date: 2024-12-22
last_modified_at: 
categories: [Functional Programming]
tags: [Lazy evaluation]
use_latex: true
comments: true
toc: true
width: 1200
---



## Abstract
{: .abstract-title}

<div class="abstract">
Functional data structures offer immutable and persistent alternatives to traditional mutable data structures. By leveraging properties like immutability and lazy evaluation, they enable safer and more predictable programming paradigms. However, these properties introduce unique challenges, such as performance overheads and memory management, which require specialized techniques and optimizations to address effectively.
</div>

## Short intro to functional data structures
Functional data structures are different from  

First let's deal with one of the main pillars of functional data structures **immutability**.
Here is a simple example to see why it might be a problem.

Consider a simple **BST** (binary search tree). Here is a simple implementation in Haskell

### Some smaller section

aiwdjwijdia , 
<span class="toggle-link" onclick="toggleNote('example1')">
  Slidey slidey
</span> asddijaiwjdi iajdi jaijwi dasddijaiwjdi iajdi jaijwi dasddijaiwjdi iajdi jaijwi d
<div id="sliding-note-example1" class="sliding-note">
  <div class="sliding-note-content">
    This is a detailed explanation hidden by default. It will slide open when clicked.
  </div>
</div>
asddijaiwjdi iajdi jaijwi djia

First let's deal with one of the main pillars of functional data structures **immutability**.
Here is a simple example to see why it might be a problem.

#### Smaller
asdaskdj
##### SMALLL
###### SMALLL


## Another section

This is the main text. 

### Subsection

asda

```haskell
data T a = Emp | Node (T a) a (T a) deriving (Show, Eq)
```

As a first example take a `member` function which checks if a given value is 
a member of a given tree. Here is the simplest and most ubiquitous implementation of it.

```haskell
member :: Ord a => T a -> a -> Bool
member Emp _ = False
member (Node left val right) el
    | el < val = member left el
    | el > val = member right el
    | otherwise = True
```
It does have a few problems though. One of which is that it performs worst case 
$2d$ comparisons, where $d$ is the height of a given tree. We can do better as following example shows.

```haskell
betterMember :: Ord a => T a -> a -> Bool
betterMember = helper Nothing
    where 
        helper Nothing Emp x = False
        helper (Just last) Emp x = x == last
        helper last (Node left val right) x
            | x <= val = helper (Just val) left x
            | otherwise = helper last right x
```
## This header is skipped in the TOC
{: .no_toc }


Intuitively what we do here is we hold on to out best guess (stored in first argument of `helper` function) till the very end. 
When we reach the end of our computation we check if our best guess was "good enough" (if it is equal to the value we were looking for).

Note that although this approach does decrease the worst case number of comparisons from $2d$ to $d + 1$, it also ensures that we cannot get any faster, meaning we have to traverse the tree till the end before checking for equality with our "best guess". 

One possible solution would be to use some sort of 'heuristic' and by that I mean some type of exponential backoff (basically distributing checks of equality with "best guess" sparser and sparser as we progress in computation) or something similar. It 
probably would be most sensible to parametrize the frequency of checking for equality 
with our "best guess" by $d$ (especially when dealing with balanced trees). 
This way it should be possible to reach some asymptotically optimal number 
of comparisons (probably).

Note however that our updated `betterMember` function still copies its whole search path. Effectively our computation could be represented as follows


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



<script>
  function toggleNote(id) {
    const note = document.getElementById(`sliding-note-${id}`);
    if (note) {
      if (note.style.maxHeight && note.style.maxHeight !== "0px") {
        note.style.maxHeight = "0px";
      } else {
        note.style.maxHeight = note.scrollHeight + "px";
      }
    }
  }
</script>