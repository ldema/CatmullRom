module CatmullRom

export MyType, foo

struct Vector2
         x::Float64 = 0.0;
         y = 0.0f;
end  


struct MyType
    x
end

bar(x) = 2x
foo(a::MyType) = bar(a.x) + 1

show(io::IO, a::MyType) = print(io, "MyType $(a.x)")
end
