using CatmullRom

V=Vertex2D[Vertex2D(2.0,2.0),Vertex2D(4.0,3.0),Vertex2D(8.0,2.0),Vertex2D(3.0,1.0)]
CM=CalculateCatmullRom(V)
showCatmullRom(CM)
