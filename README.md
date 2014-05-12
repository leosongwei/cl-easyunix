README.md
=========

Doing something simple with Common Lisp, but finding it quiet wordy?

Want some library as simple as a common Unix shell to do these job for you?

Here we have **CL-EASYUNIX**!

CL-EASYUNIX is a fool library that helps you using Common Lisp work as a Unix shell does with function name very similar to Unix shell.

HOWTO
-----
For now, CL-EASYUNIX has functions below:

* cat, returns content of a text file with string.
```lisp
(cat #p"filename")
```

* ls, returns content of a directory with a list of string.
```lisp
(ls)
(ls #p"/home")
```

* cat-&lt;
* cat-&lt;&lt;
```lisp
(cat-> "string" #p"filename") ;>, Supersed
(cat->> "string" #p"filename") ;>>, Append
```
