module CatmullRom

using Winston

export Vertex2D, IntermediateVertex, showCatmullRom, CalculateCatmullRom, testCatmullRom

struct Vertex2D
    x ::Float64
    y ::Float64
end

function showCatmullRom(V::Array{Vertex2D})

    X = Float64[]
    Y = Float64[]
    for i=1:length(V)
        push!(X,V[i].x)
        push!(Y,V[i].y)
    end

    X1 = Float64[]
    Y1 = Float64[]
    for i=1:21:length(V)
        push!(X1,V[i].x)
        push!(Y1,V[i].y)
    end

    pl=plot(X, Y, "b", X1, Y1, "ro")

    display(pl)
end

function CalculateCatmullRom(vertexs::Array{Vertex2D})
    V = Vertex2D[]
    s=length(vertexs)
    for c = 1:s-3
        V=vcat(V,IntermediateVertex(vertexs[c], vertexs[c + 1], vertexs[c + 2], vertexs[c + 3]))
    end
    V=vcat(V, IntermediateVertex(vertexs[s - 2], vertexs[s - 1], vertexs[s], vertexs[1]))
    V=vcat(V,IntermediateVertex(vertexs[s - 1], vertexs[s ], vertexs[1], vertexs[2]))
    V=vcat(V,IntermediateVertex(vertexs[s], vertexs[1], vertexs[2], vertexs[3]))
    V
end

function IntermediateVertex(v1::Vertex2D, v2::Vertex2D, v3::Vertex2D, v4::Vertex2D)

    V = Vertex2D[]

    t0 = 0.0
    t1 = GetT(t0, v1, v2)
    t2 = GetT(t1, v2, v3)
    t3 = GetT(t2, v3, v4)

    step = (t2 - t1) / (amountOfPoints)
    for t = t1:step:t2
        a1 = Vertex2D((t1 - t) / (t1 - t0) * v1.x + (t - t0) / (t1 - t0) * v2.x, (t1 - t) / (t1 - t0) * v1.y + (t - t0) / (t1 - t0) * v2.y);
        a2 = Vertex2D((t2 - t) / (t2 - t1) * v2.x + (t - t1) / (t2 - t1) * v3.x, (t2 - t) / (t2 - t1) * v2.y + (t - t1) / (t2 - t1) * v3.y);
        a3 = Vertex2D((t3 - t) / (t3 - t2) * v3.x + (t - t2) / (t3 - t2) * v4.x, (t3 - t) / (t3 - t2) * v3.y + (t - t2) / (t3 - t2) * v4.y);
        b1 = Vertex2D((t2 - t) / (t2 - t0) * a1.x + (t - t0) / (t2 - t0) * a2.x, (t2 - t) / (t2 - t0) * a1.y + (t - t0) / (t2 - t0) * a2.y);
        b2 = Vertex2D((t3 - t) / (t3 - t1) * a2.x + (t - t1) / (t3 - t1) * a3.x, (t3 - t) / (t3 - t1) * a2.y + (t - t1) / (t3 - t1) * a3.y);
        c  = Vertex2D((t2 - t) / (t2 - t1) * b1.x + (t - t1) / (t2 - t1) * b2.x, (t2 - t) / (t2 - t1) * b1.y + (t - t1) / (t2 - t1) * b2.y);

        push!(V,c);
    end
    V
end

function GetT(t::Float64, p1::Vertex2D, p2::Vertex2D)
    a = (p2.x - p1.x) ^ 2.0 + (p2.y - p1.y) ^ 2.0
    b = a ^ 0.5
    c = b ^ 0.1
    c + t
end

function testCatmullRom()
    V=Vertex2D[Vertex2D(2.0,2.0),Vertex2D(4.0,3.0),Vertex2D(8.0,2.0),Vertex2D(3.0,1.0)]
    CM=CalculateCatmullRom(V)
    showCatmullRom(CM)
end

end

#for testing CatmullRom
#V=Vertex2D[Vertex2D(2.0,2.0),Vertex2D(4.0,3.0),Vertex2D(8.0,2.0),Vertex2D(3.0,1.0)]
#CM=CalculateCatmullRom(V)
#showCatmullRom(CM)
