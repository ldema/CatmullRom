# CatmullRom.jl

Calculate spline curves from vertexs

Built using [Julia](https://julialang.org/)'s state-of-the-art.

This also provides a simple `testCatmullRom()` command line to test !

[![Build Status](https://travis-ci.com/ldema/CatmullRom.svg?branch=master)](https://travis-ci.com/ldema/CatmullRom)

## Documentation

[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://juliadocs.github.io/Documenter.jl/latest

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://github.com/ldema/CatmullRom/blob/master/docs/src/index.md

- [**STABLE**][docs-stable-url] &mdash; **documentation of the most recently tagged version.**

[![](https://img.shields.io/badge/docs-stable-blue.svg)](http://ldema.github.io/CatmullRom.jl/stable)
[![](https://img.shields.io/badge/docs-dev-blue.svg)](http://ldema.github.io/CatmullRom.jl/dev)


## Example use

#### Usage

#### Predefinite test function

Create Spline from passing through some predefined vertexs.

```Julia
Julia>testCatmullRom()
```

#### How to create spline curves

Create Spline passing through defined array of vertexs.
```Julia
V=Vertex2D[Vertex2D(2.0,2.0),Vertex2D(4.0,3.0),Vertex2D(8.0,2.0),Vertex2D(3.0,1.0)]
CM=CalculateCatmullRom(V)
showCatmullRom(CM)
```
Result
use testCatmullRom() to show a result with v1(2.0,2.0),v2(4.0,3.0),v3(8.0,2.0),v4(3.0,2,0) vertexs
![Alt text](CatmullRom.png?raw=true "Title")


### Requirements

  * Julia 1.0.3

## Having problems?

If you run into problems, please read the [Documentation](https://github.com/ldema/CatmullRom/blob/master/docs/src/index.md) section.

## Thanks

* Many, many thanks to [Przemysław Szufel](https://szufel.pl/) for the lectures and examples given during PhD course Programming in Julia's at the University of Salerno.
