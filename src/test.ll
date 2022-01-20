@a = global i32* 0
$str1 = global string ""
define void @globalinit() {
0:
  %1 = load i32*, i32** @a
  %2 = call i32* @malloc(i32 20  )
  store i32 4, i32* %2
  store i32* %2, i32** @a
}

define i32 @main() {
  %1 = alloca i32*
  %7 = alloca i32
0:
  %3 = load i32*, i32** @a
  %4 = call i32 @array_size(i32* %3  )
  %5 = mul i32 %4, 4
  %6 = add i32 %5, 4
  %2 = call i32* @malloc(i32 %6  )
  store i32 %4, i32* %2
  store i32* %2, i32** %1
  store i32 0, i32* %7
  br label %1
1:
  %8 = load i32, i32* %7
  %9 = load i32*, i32** @a
  %10 = call i32 @array_size(i32* %9  )
  %11 = icmp slt i32 %8, %10
  br i8 %11, label %2, label %4
2:
  %12 = load i32*, i32** @a
  %13 = load i32, i32* %7
  %14 = add i32 %13, 1
  %15 = getelementptr i32, i32* %12, i32 %14  
  store i32 0, i32* %15
  %16 = load i32*, i32** %1
  %17 = load i32, i32* %7
  %18 = add i32 %17, 1
  %19 = getelementptr i32, i32* %16, i32 %18  
  %20 = call i32 @getInt()
  store i32 %20, i32* %19
  br label %3
3:
  %21 = load i32, i32* %7
  %22 = add i32 %21, 1
  store i32 %22, i32* %7
  br label %1
4:
  store i32 0, i32* %7
  br label %5
5:
  %23 = load i32, i32* %7
  %24 = load i32*, i32** @a
  %25 = call i32 @array_size(i32* %24  )
  %26 = icmp slt i32 %23, %25
  br i8 %26, label %6, label %8
6:
  %27 = load i32*, i32** @a
  %28 = load i32, i32* %7
  %29 = add i32 %28, 1
  %30 = getelementptr i32, i32* %27, i32 %29  
  %31 = load i32, i32* %30
  %32 = call string @toString(i32 %31  )
  call void @print(string %32  )
  br label %7
7:
  %33 = load i32, i32* %7
  %34 = add i32 %33, 1
  store i32 %34, i32* %7
  br label %5
8:
  call void @println(string $str1  )
  %35 = load i32*, i32** %1
  store i32* %35, i32** @a
  store i32 0, i32* %7
  br label %9
9:
  %36 = load i32, i32* %7
  %37 = load i32*, i32** @a
  %38 = call i32 @array_size(i32* %37  )
  %39 = icmp slt i32 %36, %38
  br i8 %39, label %10, label %12
10:
  %40 = load i32*, i32** @a
  %41 = load i32, i32* %7
  %42 = add i32 %41, 1
  %43 = getelementptr i32, i32* %40, i32 %42  
  %44 = load i32, i32* %43
  %45 = call string @toString(i32 %44  )
  call void @print(string %45  )
  br label %11
11:
  %46 = load i32, i32* %7
  %47 = add i32 %46, 1
  store i32 %47, i32* %7
  br label %9
12:
  ret 0
}

