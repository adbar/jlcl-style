# JLCL LaTeX style


## Description

Experiments to modernize the LaTeX class/style of the [Journal for Language Technology and Computational Linguistics (JLCL)](http://jlcl.org), a scientific journal published by the [German Society for Computational Linguistics & Language Technology](http://gscl.org).



## Task list


#### General syntax

- [x] *scrartcl* warnings (deprecated syntax)
- [x] *typearea* font size warning
- [ ] *typearea*  DIV size warning
- [ ] font command "\it" warning although it is nowhere in the sources


#### Compatibility issues

- [ ] warning about *scrartcl+fancyhdr* combination in compilation log
- [x] sections undefined and falsely numbered when babel-arabic is used (use arabtex instead)
- [ ] ...



## Useful links

* [Understanding headers in scrartcl (about fancyhdr)](http://tex.stackexchange.com/questions/283670/understanding-headers-in-scrartcl)
* [Typesetting a document using Arabic script](http://tex.stackexchange.com/questions/12347/typesetting-a-document-using-arabic-script)
* [Arabic Support in Babel Mess up Chapter referencing](http://tex.stackexchange.com/questions/238225/arabic-support-in-babel-mess-up-chapter-referencing) and [babel arabic changes enumeration level](http://tex.stackexchange.com/questions/141832/babel-arabic-changes-enumeration-level)
