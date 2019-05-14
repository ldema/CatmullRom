# CatmullRom.jl

Calculate spline curves from vertexs

Built using [Julia](https://julialang.org/)'s state-of-the-art.

This also provides a simple `testCatmullRom()` command line to test !

| **Documentation**                                                               | **Build Status**                                                                                |
|:-------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------:|
| [![][docs-stable-img]][docs-stable-url] [![][docs-dev-img]][docs-dev-url] | [![][travis-img]][travis-url] |

## Installation

The package can be installed with the Julia package manager.
From the Julia REPL, type `]` to enter the Pkg REPL mode and run:

```
pkg> add CatmullRom
```

Or, equivalently, via the `Pkg` API:

```julia
julia> import Pkg; Pkg.add("CatmullRom")
```

## Documentation

[docs-dev-img]: https://img.shields.io/badge/docs-dev-blue.svg
[docs-dev-url]: https://ldema.github.io/CatmullRom/dev

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://ldema.github.io/CatmullRom/stable

[travis-img]: https://travis-ci.com/ldema/CatmullRom.svg?branch=master
[travis-url]: https://travis-ci.com/ldema/CatmullRom

- [**STABLE**][docs-stable-url] &mdash; **documentation of the most recently tagged version.**
- [**DEVEL**][docs-stable-url] &mdash; **documentation of in-development version.**

## Example use

#### Usage

#### Predefinite test function

Create Spline from passing through some predefined vertexs.

```Julia
Julia>testCatmullRom()
```
testCatmullRom() show a result with v1(2.0,2.0),v2(4.0,3.0),v3(8.0,2.0),v4(3.0,2,0) vertexs
![Alt text](CatmullRom.png?raw=true "Title")

#### How to create spline curves

Create Spline passing through defined array of vertexs.
```Julia
Julia>V=Vertex2D[Vertex2D(2.0,2.0),Vertex2D(4.0,3.0),Vertex2D(8.0,2.0),Vertex2D(3.0,1.0)]
Julia>CM=CalculateCatmullRom(V)
Julia>showCatmullRom(CM)
```
### Requirements

  * Julia 1.0.3

## Having problems?

If you run into problems, please read the [Documentation](https://github.com/ldema/CatmullRom/blob/master/docs/src/index.md) section.

## Thanks

* Many, many thanks to [Przemysław Szufel](https://szufel.pl/) for the lectures and examples given during PhD course Programming in Julia's at the University of Salerno.
