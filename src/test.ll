define void @init() {
  %4 = alloca i32
  %19 = alloca i32
  %20 = alloca i32
  %56 = alloca i32
  %58 = alloca i32
  %60 = alloca i32
0:
  %1 = call i32 @getInt()
  store i32 %1, i32* @n
  %2 = call i32 @getInt()
  store i32 %2, i32* @m
  %5 = load i32, i32* @n
  store i32 1, i32* %4
  %6 = mul i32 %5, 4
  %7 = add i32 %6, 4
  %3 = call i32** @malloc(i32 %7  )
  %8 = add i32 %5, 1
  store i32 %8, i32* %3
  br label %1
1:
  %9 = load i32, i32* %4
  %11 = add i32 %5, 1
  %10 = icmp slt i32 %9, %11
  br i8 %10, label %2, label %3
2:
  %12 = load i32, i32* %4
  %13 = getelementptr i32*, i32** %3, i32 %12  
  %15 = load i32, i32* @n
  %16 = mul i32 %15, 4
  %17 = add i32 %16, 4
  %14 = call i32* @malloc(i32 %17  )
  store i32 %15, i32* %14
  store i32* %14, i32** %13
  %18 = add i32 %12, 1
  store i32 %18, i32* %4
  br label %1
3:
  store i32** %3, i32*** @a
  store i32 0, i32* %19
  br label %4
4:
  %21 = load i32, i32* %19
  %22 = load i32, i32* @n
  %23 = icmp slt i32 %21, %22
  br i8 %23, label %5, label %7
5:
  store i32 0, i32* %20
  br label %8
8:
  %24 = load i32, i32* %20
  %25 = load i32, i32* @n
  %26 = icmp slt i32 %24, %25
  br i8 %26, label %9, label %11
9:
  %27 = load i32**, i32*** @a
  %28 = load i32, i32* %19
  %29 = add i32 %28, 1
  %30 = getelementptr i32*, i32** %27, i32 %29  
  %31 = load i32*, i32** %30
  %32 = load i32, i32* %20
  %33 = add i32 %32, 1
  %34 = getelementptr i32, i32* %31, i32 %33  
  %35 = load i32, i32* @INF
  store i32 %35, i32* %34
  br label %10
10:
  %36 = load i32, i32* %20
  %37 = add i32 %36, 1
  store i32 %37, i32* %20
  br label %8
11:
  br label %6
6:
  %38 = load i32, i32* %19
  %39 = add i32 %38, 1
  store i32 %39, i32* %19
  br label %4
7:
  store i32 0, i32* %19
  br label %12
12:
  %40 = load i32, i32* %19
  %41 = load i32, i32* @n
  %42 = icmp slt i32 %40, %41
  br i8 %42, label %13, label %15
13:
  %43 = load i32**, i32*** @a
  %44 = load i32, i32* %19
  %45 = add i32 %44, 1
  %46 = getelementptr i32*, i32** %43, i32 %45  
  %47 = load i32*, i32** %46
  %48 = load i32, i32* %19
  %49 = add i32 %48, 1
  %50 = getelementptr i32, i32* %47, i32 %49  
  store i32 0, i32* %50
  br label %14
14:
  %51 = load i32, i32* %19
  %52 = add i32 %51, 1
  store i32 %52, i32* %19
  br label %12
15:
  store i32 0, i32* %19
  br label %16
16:
  %53 = load i32, i32* %19
  %54 = load i32, i32* @m
  %55 = icmp slt i32 %53, %54
  br i8 %55, label %17, label %19
17:
  %57 = call i32 @getInt()
  store i32 %57, i32* %56
  %59 = call i32 @getInt()
  store i32 %59, i32* %58
  %61 = call i32 @getInt()
  store i32 %61, i32* %60
  %62 = load i32**, i32*** @a
  %63 = load i32, i32* %56
  %64 = add i32 %63, 1
  %65 = getelementptr i32*, i32** %62, i32 %64  
  %66 = load i32*, i32** %65
  %67 = load i32, i32* %58
  %68 = add i32 %67, 1
  %69 = getelementptr i32, i32* %66, i32 %68  
  %70 = load i32, i32* %60
  store i32 %70, i32* %69
  br label %18
18:
  %71 = load i32, i32* %19
  %72 = add i32 %71, 1
  store i32 %72, i32* %19
  br label %16
19:
}

@INF = global i32 0
@n = global i32 0
@m = global i32 0
@a = global i32** 0
$str1 = global string "-1"
$str2 = global string " "
$str3 = global string ""
define void @globalinit() {
0:
  %1 = load i32, i32* @INF
  store i32 10000000, i32* @INF
  %2 = load i32, i32* @n
  %3 = load i32, i32* @m
  %4 = load i32**, i32*** @a
}

define i32 @main() {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
0:
  call void @init()
  store i32 0, i32* %3
  br label %1
1:
  %4 = load i32, i32* %3
  %5 = load i32, i32* @n
  %6 = icmp slt i32 %4, %5
  br i8 %6, label %2, label %4
2:
  store i32 0, i32* %1
  br label %5
5:
  %7 = load i32, i32* %1
  %8 = load i32, i32* @n
  %9 = icmp slt i32 %7, %8
  br i8 %9, label %6, label %8
6:
  store i32 0, i32* %2
  br label %9
9:
  %10 = load i32, i32* %2
  %11 = load i32, i32* @n
  %12 = icmp slt i32 %10, %11
  br i8 %12, label %10, label %12
10:
  %13 = load i32**, i32*** @a
  %14 = load i32, i32* %1
  %15 = add i32 %14, 1
  %16 = getelementptr i32*, i32** %13, i32 %15  
  %17 = load i32*, i32** %16
  %18 = load i32, i32* %2
  %19 = add i32 %18, 1
  %20 = getelementptr i32, i32* %17, i32 %19  
  %21 = load i32, i32* %20
  %22 = load i32**, i32*** @a
  %23 = load i32, i32* %1
  %24 = add i32 %23, 1
  %25 = getelementptr i32*, i32** %22, i32 %24  
  %26 = load i32*, i32** %25
  %27 = load i32, i32* %3
  %28 = add i32 %27, 1
  %29 = getelementptr i32, i32* %26, i32 %28  
  %30 = load i32, i32* %29
  %31 = load i32**, i32*** @a
  %32 = load i32, i32* %3
  %33 = add i32 %32, 1
  %34 = getelementptr i32*, i32** %31, i32 %33  
  %35 = load i32*, i32** %34
  %36 = load i32, i32* %2
  %37 = add i32 %36, 1
  %38 = getelementptr i32, i32* %35, i32 %37  
  %39 = load i32, i32* %38
  %40 = add i32 %30, %39
  %41 = icmp sgt i32 %21, %40
  br i8 %41, label %13, label %14
13:
  %42 = load i32**, i32*** @a
  %43 = load i32, i32* %1
  %44 = add i32 %43, 1
  %45 = getelementptr i32*, i32** %42, i32 %44  
  %46 = load i32*, i32** %45
  %47 = load i32, i32* %2
  %48 = add i32 %47, 1
  %49 = getelementptr i32, i32* %46, i32 %48  
  %50 = load i32**, i32*** @a
  %51 = load i32, i32* %1
  %52 = add i32 %51, 1
  %53 = getelementptr i32*, i32** %50, i32 %52  
  %54 = load i32*, i32** %53
  %55 = load i32, i32* %3
  %56 = add i32 %55, 1
  %57 = getelementptr i32, i32* %54, i32 %56  
  %58 = load i32, i32* %57
  %59 = load i32**, i32*** @a
  %60 = load i32, i32* %3
  %61 = add i32 %60, 1
  %62 = getelementptr i32*, i32** %59, i32 %61  
  %63 = load i32*, i32** %62
  %64 = load i32, i32* %2
  %65 = add i32 %64, 1
  %66 = getelementptr i32, i32* %63, i32 %65  
  %67 = load i32, i32* %66
  %68 = add i32 %58, %67
  store i32 %68, i32* %49
  br label %15
14:
  br label %15
15:
  br label %11
11:
  %69 = load i32, i32* %2
  %70 = add i32 %69, 1
  store i32 %70, i32* %2
  br label %9
12:
  br label %7
7:
  %71 = load i32, i32* %1
  %72 = add i32 %71, 1
  store i32 %72, i32* %1
  br label %5
8:
  br label %3
3:
  %73 = load i32, i32* %3
  %74 = add i32 %73, 1
  store i32 %74, i32* %3
  br label %1
4:
  store i32 0, i32* %1
  br label %16
16:
  %75 = load i32, i32* %1
  %76 = load i32, i32* @n
  %77 = icmp slt i32 %75, %76
  br i8 %77, label %17, label %19
17:
  store i32 0, i32* %2
  br label %20
20:
  %78 = load i32, i32* %2
  %79 = load i32, i32* @n
  %80 = icmp slt i32 %78, %79
  br i8 %80, label %21, label %23
21:
  %81 = load i32**, i32*** @a
  %82 = load i32, i32* %1
  %83 = add i32 %82, 1
  %84 = getelementptr i32*, i32** %81, i32 %83  
  %85 = load i32*, i32** %84
  %86 = load i32, i32* %2
  %87 = add i32 %86, 1
  %88 = getelementptr i32, i32* %85, i32 %87  
  %89 = load i32, i32* %88
  %90 = load i32, i32* @INF
  %91 = icmp eq i32 %89, %90
  br i8 %91, label %24, label %25
24:
  call void @print(string $str1  )
  br label %26
25:
  %92 = load i32**, i32*** @a
  %93 = load i32, i32* %1
  %94 = add i32 %93, 1
  %95 = getelementptr i32*, i32** %92, i32 %94  
  %96 = load i32*, i32** %95
  %97 = load i32, i32* %2
  %98 = add i32 %97, 1
  %99 = getelementptr i32, i32* %96, i32 %98  
  %100 = load i32, i32* %99
  %101 = call string @toString(i32 %100  )
  call void @print(string %101  )
  br label %26
26:
  call void @print(string $str2  )
  br label %22
22:
  %102 = load i32, i32* %2
  %103 = add i32 %102, 1
  store i32 %103, i32* %2
  br label %20
23:
  call void @println(string $str3  )
  br label %18
18:
  %104 = load i32, i32* %1
  %105 = add i32 %104, 1
  store i32 %105, i32* %1
  br label %16
19:
  ret 0
}

