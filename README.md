# JLCL LaTeX style


## Description

The [Journal for Language Technology and Computational Linguistics (JLCL)](http://jlcl.org) is an Open Access journal supported by the German Society for Computational Linguistics & Language Technology](http://gscl.org).

This repository documents the current state of the LaTeX class/style used to write articles and bundle issues.


## Task list

#### General layout

- [x] LaTeX-generated logo
- [x] title page in LaTeX
- [x] example of editorial
- [ ] instructions to finalize an issue


#### LaTeX syntax

- [x] *scrartcl* warnings (deprecated syntax)
- [x] *typearea* font size warning
- [x] *typearea*  DIV size warning
- [X] manually add old font commands "\it" and "\rm", warning because of *fancyhdr*
- [X] URLs in bibliography (solved by *apacite*)
- [ ] authordata (affiliation, e-mail)
- [ ] *pagesize* warning


#### Compatibility issues

- [ ] warning about *scrartcl+fancyhdr* combination
- [X] compatilibility with XeLaTeX (mostly works)
- [ ] line spacing when writing in other alphabets
- [ ] spacing in titles (fix2..etc...)
- [x] sections undefined and falsely numbered when babel-arabic is used (use arabtex instead)
- [ ] ...



## Links

#### General template

* [Understanding headers in scrartcl (about fancyhdr)](http://tex.stackexchange.com/questions/283670/understanding-headers-in-scrartcl)


#### Internationalization

* [Typesetting a document using Arabic script](http://tex.stackexchange.com/questions/12347/typesetting-a-document-using-arabic-script)
* [Arabic Support in Babel Mess up Chapter referencing](http://tex.stackexchange.com/questions/238225/arabic-support-in-babel-mess-up-chapter-referencing) and [babel arabic changes enumeration level](http://tex.stackexchange.com/questions/141832/babel-arabic-changes-enumeration-level)
* [How does one type Chinese in LaTeX?](https://tex.stackexchange.com/questions/17611/how-does-one-type-chinese-in-latex)


