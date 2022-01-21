%Edge = type { i32 i32 i32 };
define %Edge @Edge() {
}

define void @qsort(%Edge* %1  i32 %2  i32 %3  ) {
  %4 = alloca %Edge*
  %5 = alloca i32
  %6 = alloca i32
  %10 = alloca i32
  %12 = alloca i32
  %14 = alloca %Edge
  %26 = alloca i8
  %59 = alloca i8
0:
  store %Edge* %1, %Edge** %4
  store i32 %2, i32* %5
  store i32 %3, i32* %6
  %7 = load i32, i32* %5
  %8 = load i32, i32* %6
  %9 = icmp slt i32 %7, %8
  br i8 %9, label %1, label %2
1:
  %11 = load i32, i32* %5
  store i32 %11, i32* %10
  %13 = load i32, i32* %6
  store i32 %13, i32* %12
  %15 = load %Edge*, %Edge** %4
  %16 = load i32, i32* %5
  %17 = add i32 %16, 1
  %18 = getelementptr %Edge, %Edge* %15, i32 %17  
  %19 = load %Edge, %Edge* %18
  store %Edge %19, %Edge* %14
  br label %4
4:
  %20 = load i32, i32* %10
  %21 = load i32, i32* %12
  %22 = icmp slt i32 %20, %21
  br i8 %22, label %5, label %6
5:
  br label %7
7:
  %23 = load i32, i32* %10
  %24 = load i32, i32* %12
  %25 = icmp slt i32 %23, %24
  %27 = xor i8 %25, true
  store i8 %25, i8* %26
  br i8 %27, label %11, label %10
10:
  %28 = load %Edge*, %Edge** %4
  %29 = load i32, i32* %12
  %30 = add i32 %29, 1
  %31 = getelementptr %Edge, %Edge* %28, i32 %30  
  %32 = load %Edge, %Edge* %31
  %33 = getelementptr %Edge, %Edge %32, i32 0  i32 2  
  %34 = load i32, i32* %33
  %35 = load %Edge, %Edge* %14
  %36 = getelementptr %Edge, %Edge %35, i32 0  i32 2  
  %37 = load i32, i32* %36
  %38 = icmp sge i32 %34, %37
  store i8 %38, i8* %26
  br label %11
11:
  %39 = load i8, i8* %26
  br i8 %39, label %8, label %9
8:
  %40 = load i32, i32* %12
  %41 = sub i32 %40, 1
  store i32 %41, i32* %12
  br label %7
9:
  %42 = load i32, i32* %10
  %43 = load i32, i32* %12
  %44 = icmp slt i32 %42, %43
  br i8 %44, label %12, label %13
12:
  %45 = load %Edge*, %Edge** %4
  %46 = load i32, i32* %10
  %47 = add i32 %46, 1
  %48 = getelementptr %Edge, %Edge* %45, i32 %47  
  %49 = load %Edge*, %Edge** %4
  %50 = load i32, i32* %12
  %51 = add i32 %50, 1
  %52 = getelementptr %Edge, %Edge* %49, i32 %51  
  %53 = load %Edge, %Edge* %52
  store %Edge %53, %Edge* %48
  %54 = load i32, i32* %10
  %55 = add i32 %54, 1
  store i32 %55, i32* %10
  br label %14
13:
  br label %14
14:
  br label %15
15:
  %56 = load i32, i32* %10
  %57 = load i32, i32* %12
  %58 = icmp slt i32 %56, %57
  %60 = xor i8 %58, true
  store i8 %58, i8* %59
  br i8 %60, label %19, label %18
18:
  %61 = load %Edge*, %Edge** %4
  %62 = load i32, i32* %10
  %63 = add i32 %62, 1
  %64 = getelementptr %Edge, %Edge* %61, i32 %63  
  %65 = load %Edge, %Edge* %64
  %66 = getelementptr %Edge, %Edge %65, i32 0  i32 2  
  %67 = load i32, i32* %66
  %68 = load %Edge, %Edge* %14
  %69 = getelementptr %Edge, %Edge %68, i32 0  i32 2  
  %70 = load i32, i32* %69
  %71 = icmp slt i32 %67, %70
  store i8 %71, i8* %59
  br label %19
19:
  %72 = load i8, i8* %59
  br i8 %72, label %16, label %17
16:
  %73 = load i32, i32* %10
  %74 = add i32 %73, 1
  store i32 %74, i32* %10
  br label %15
17:
  %75 = load i32, i32* %10
  %76 = load i32, i32* %12
  %77 = icmp slt i32 %75, %76
  br i8 %77, label %20, label %21
20:
  %78 = load %Edge*, %Edge** %4
  %79 = load i32, i32* %12
  %80 = add i32 %79, 1
  %81 = getelementptr %Edge, %Edge* %78, i32 %80  
  %82 = load %Edge*, %Edge** %4
  %83 = load i32, i32* %10
  %84 = add i32 %83, 1
  %85 = getelementptr %Edge, %Edge* %82, i32 %84  
  %86 = load %Edge, %Edge* %85
  store %Edge %86, %Edge* %81
  %87 = load i32, i32* %12
  %88 = sub i32 %87, 1
  store i32 %88, i32* %12
  br label %22
21:
  br label %22
22:
  br label %4
6:
  %89 = load %Edge*, %Edge** %4
  %90 = load i32, i32* %10
  %91 = add i32 %90, 1
  %92 = getelementptr %Edge, %Edge* %89, i32 %91  
  %93 = load %Edge, %Edge* %14
  store %Edge %93, %Edge* %92
  %94 = load %Edge*, %Edge** %4
  %95 = load i32, i32* %5
  %96 = load i32, i32* %10
  %97 = sub i32 %96, 1
  call void @qsort(%Edge* %94  i32 %95  i32 %97  )
  %98 = load %Edge*, %Edge** %4
  %99 = load i32, i32* %10
  %100 = add i32 %99, 1
  %101 = load i32, i32* %6
  call void @qsort(%Edge* %98  i32 %100  i32 %101  )
  br label %3
2:
  br label %3
3:
}

define void @init() {
  %11 = alloca i32
0:
  %2 = load i32, i32* @n
  %3 = add i32 %2, 1
  %4 = mul i32 %3, 4
  %5 = add i32 %4, 4
  %1 = call i32* @malloc(i32 %5  )
  store i32 %3, i32* %1
  store i32* %1, i32** @fa
  %7 = load i32, i32* @n
  %8 = add i32 %7, 1
  %9 = mul i32 %8, 4
  %10 = add i32 %9, 4
  %6 = call i32* @malloc(i32 %10  )
  store i32 %8, i32* %6
  store i32* %6, i32** @rk
  store i32 1, i32* %11
  br label %1
1:
  %12 = load i32, i32* %11
  %13 = load i32, i32* @n
  %14 = icmp sle i32 %12, %13
  br i8 %14, label %2, label %4
2:
  %15 = load i32*, i32** @fa
  %16 = load i32, i32* %11
  %17 = add i32 %16, 1
  %18 = getelementptr i32, i32* %15, i32 %17  
  %19 = load i32, i32* %11
  store i32 %19, i32* %18
  %20 = load i32*, i32** @rk
  %21 = load i32, i32* %11
  %22 = add i32 %21, 1
  %23 = getelementptr i32, i32* %20, i32 %22  
  store i32 1, i32* %23
  br label %3
3:
  %24 = load i32, i32* %11
  %25 = add i32 %24, 1
  store i32 %25, i32* %11
  br label %1
4:
}

define i32 @find(i32 %1  ) {
  %2 = alloca i32
0:
  store i32 %1, i32* %2
  %3 = load i32, i32* %2
  %4 = load i32*, i32** @fa
  %5 = load i32, i32* %2
  %6 = add i32 %5, 1
  %7 = getelementptr i32, i32* %4, i32 %6  
  %8 = load i32, i32* %7
  %9 = icmp eq i32 %3, %8
  br i8 %9, label %1, label %2
1:
  %10 = load i32, i32* %2
  ret i32 %10
  br label %3
2:
  br label %3
3:
  %11 = load i32*, i32** @fa
  %12 = load i32, i32* %2
  %13 = add i32 %12, 1
  %14 = getelementptr i32, i32* %11, i32 %13  
  %15 = load i32, i32* %14
  %16 = call i32 @find(i32 %15  )
  store i32 %16, i32* %2
  %17 = load i32*, i32** @fa
  %18 = load i32, i32* %2
  %19 = add i32 %18, 1
  %20 = getelementptr i32, i32* %17, i32 %19  
  %21 = load i32, i32* %20
  ret i32 %21
}

define i8 @union(i32 %1  i32 %2  ) {
  %3 = alloca i32
  %4 = alloca i32
0:
  store i32 %1, i32* %3
  store i32 %2, i32* %4
  %5 = load i32, i32* %3
  %6 = call i32 @find(i32 %5  )
  store i32 %6, i32* %3
  %7 = load i32, i32* %4
  %8 = call i32 @find(i32 %7  )
  store i32 %8, i32* %4
  %9 = load i32, i32* %3
  %10 = load i32, i32* %4
  %11 = icmp eq i32 %9, %10
  br i8 %11, label %1, label %2
1:
  ret false
  br label %3
2:
  br label %3
3:
  %12 = load i32*, i32** @rk
  %13 = load i32, i32* %3
  %14 = add i32 %13, 1
  %15 = getelementptr i32, i32* %12, i32 %14  
  %16 = load i32, i32* %15
  %17 = load i32*, i32** @rk
  %18 = load i32, i32* %4
  %19 = add i32 %18, 1
  %20 = getelementptr i32, i32* %17, i32 %19  
  %21 = load i32, i32* %20
  %22 = icmp sgt i32 %16, %21
  br i8 %22, label %4, label %5
4:
  %23 = load i32*, i32** @fa
  %24 = load i32, i32* %4
  %25 = add i32 %24, 1
  %26 = getelementptr i32, i32* %23, i32 %25  
  %27 = load i32, i32* %3
  store i32 %27, i32* %26
  %28 = load i32*, i32** @rk
  %29 = load i32, i32* %3
  %30 = add i32 %29, 1
  %31 = getelementptr i32, i32* %28, i32 %30  
  %32 = load i32*, i32** @rk
  %33 = load i32, i32* %3
  %34 = add i32 %33, 1
  %35 = getelementptr i32, i32* %32, i32 %34  
  %36 = load i32, i32* %35
  %37 = load i32*, i32** @rk
  %38 = load i32, i32* %4
  %39 = add i32 %38, 1
  %40 = getelementptr i32, i32* %37, i32 %39  
  %41 = load i32, i32* %40
  %42 = add i32 %36, %41
  store i32 %42, i32* %31
  br label %6
5:
  %43 = load i32*, i32** @fa
  %44 = load i32, i32* %3
  %45 = add i32 %44, 1
  %46 = getelementptr i32, i32* %43, i32 %45  
  %47 = load i32, i32* %4
  store i32 %47, i32* %46
  %48 = load i32*, i32** @rk
  %49 = load i32, i32* %4
  %50 = add i32 %49, 1
  %51 = getelementptr i32, i32* %48, i32 %50  
  %52 = load i32*, i32** @rk
  %53 = load i32, i32* %4
  %54 = add i32 %53, 1
  %55 = getelementptr i32, i32* %52, i32 %54  
  %56 = load i32, i32* %55
  %57 = load i32*, i32** @rk
  %58 = load i32, i32* %3
  %59 = add i32 %58, 1
  %60 = getelementptr i32, i32* %57, i32 %59  
  %61 = load i32, i32* %60
  %62 = add i32 %56, %61
  store i32 %62, i32* %51
  br label %6
6:
  ret true
}

@n = global i32 0
@m = global i32 0
@ans = global i32 0
@fa = global i32* 0
@rk = global i32* 0
@e = global %Edge* 0
define void @globalinit() {
0:
  %1 = load i32, i32* @n
  %2 = load i32, i32* @m
  %3 = load i32, i32* @ans
  store i32 0, i32* @ans
  %4 = load i32*, i32** @fa
  %5 = load i32*, i32** @rk
  %6 = load %Edge*, %Edge** @e
}

define i32 @main() {
  %7 = alloca i32
  %11 = alloca %Edge
  %32 = alloca i32
  %40 = alloca %Edge
0:
  %1 = call i32 @getInt()
  store i32 %1, i32* @n
  %2 = call i32 @getInt()
  store i32 %2, i32* @m
  %4 = load i32, i32* @m
  %5 = mul i32 %4, 4
  %6 = add i32 %5, 4
  %3 = call %Edge* @malloc(i32 %6  )
  store i32 %4, i32* %3
  store %Edge* %3, %Edge** @e
  store i32 0, i32* %7
  br label %1
1:
  %8 = load i32, i32* %7
  %9 = load i32, i32* @m
  %10 = icmp slt i32 %8, %9
  br i8 %10, label %2, label %4
2:
  %12 = call %Edge @malloc(i32 12  )
  call void @Edge(%Edge %12  )
  store %Edge %12, %Edge* %11
  %13 = load %Edge, %Edge* %11
  %14 = getelementptr %Edge, %Edge %13, i32 0  i32 0  
  %15 = call i32 @getInt()
  store i32 %15, i32* %14
  %16 = load %Edge, %Edge* %11
  %17 = getelementptr %Edge, %Edge %16, i32 0  i32 1  
  %18 = call i32 @getInt()
  store i32 %18, i32* %17
  %19 = load %Edge, %Edge* %11
  %20 = getelementptr %Edge, %Edge %19, i32 0  i32 2  
  %21 = call i32 @getInt()
  store i32 %21, i32* %20
  %22 = load %Edge*, %Edge** @e
  %23 = load i32, i32* %7
  %24 = add i32 %23, 1
  %25 = getelementptr %Edge, %Edge* %22, i32 %24  
  %26 = load %Edge, %Edge* %11
  store %Edge %26, %Edge* %25
  br label %3
3:
  %27 = load i32, i32* %7
  %28 = add i32 %27, 1
  store i32 %28, i32* %7
  br label %1
4:
  %29 = load %Edge*, %Edge** @e
  %30 = load i32, i32* @m
  %31 = sub i32 %30, 1
  call void @qsort(%Edge* %29  i32 0  i32 %31  )
  call void @init()
  store i32 0, i32* %7
  store i32 0, i32* %32
  br label %5
5:
  %33 = load i32, i32* %7
  %34 = load i32, i32* @n
  %35 = sub i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i8 %36, label %6, label %7
6:
  %37 = load i32, i32* %32
  %38 = load i32, i32* @m
  %39 = icmp sge i32 %37, %38
  br i8 %39, label %8, label %9
8:
  call void @printInt(i32 -1  )
  ret 0
  br label %10
9:
  br label %10
10:
  %41 = load %Edge*, %Edge** @e
  %42 = load i32, i32* %32
  %43 = add i32 %42, 1
  %44 = getelementptr %Edge, %Edge* %41, i32 %43  
  %45 = load %Edge, %Edge* %44
  store %Edge %45, %Edge* %40
  %46 = load i32, i32* %32
  %47 = add i32 %46, 1
  store i32 %47, i32* %32
  %48 = load %Edge, %Edge* %40
  %49 = getelementptr %Edge, %Edge %48, i32 0  i32 0  
  %50 = load i32, i32* %49
  %51 = load %Edge, %Edge* %40
  %52 = getelementptr %Edge, %Edge %51, i32 0  i32 1  
  %53 = load i32, i32* %52
  %54 = call i8 @union(i32 %50  i32 %53  )
  br i8 %54, label %11, label %12
11:
  %55 = load i32, i32* %7
  %56 = add i32 %55, 1
  store i32 %56, i32* %7
  %57 = load i32, i32* @ans
  %58 = load %Edge, %Edge* %40
  %59 = getelementptr %Edge, %Edge %58, i32 0  i32 2  
  %60 = load i32, i32* %59
  %61 = add i32 %57, %60
  store i32 %61, i32* @ans
  br label %13
12:
  br label %13
13:
  br label %5
7:
  %62 = load i32*, i32** @rk
  %63 = call i32 @find(i32 1  )
  %64 = add i32 %63, 1
  %65 = getelementptr i32, i32* %62, i32 %64  
  %66 = load i32, i32* %65
  %67 = load i32, i32* @n
  %68 = icmp eq i32 %66, %67
  br i8 %68, label %14, label %15
14:
  %69 = load i32, i32* @ans
  call void @printInt(i32 %69  )
  br label %16
15:
  call void @printInt(i32 -1  )
  br label %16
16:
  ret 0
}

