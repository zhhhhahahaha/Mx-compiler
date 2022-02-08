define i32 @jud(i32 %1  ) {
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  %10 = alloca i8
0:
  store i32 %1, i32* %2
  store i32 0, i32* %3
  br label %1
1:
  %5 = load i32, i32* %3
  %6 = load i32, i32* @n
  %7 = load i32, i32* %2
  %8 = div i32 %6, %7
  %9 = icmp slt i32 %5, %8
  br i8 %9, label %2, label %4
2:
  store i8 false, i8* %10
  store i32 0, i32* %4
  br label %5
5:
  %11 = load i32, i32* %4
  %12 = load i32, i32* %2
  %13 = sub i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i8 %14, label %6, label %8
6:
  %15 = load i32*, i32** @a
  %16 = load i32, i32* %3
  %17 = load i32, i32* %2
  %18 = mul i32 %16, %17
  %19 = load i32, i32* %4
  %20 = add i32 %18, %19
  %21 = add i32 %20, 1
  %22 = getelementptr i32, i32* %15, i32 %21  
  %23 = load i32, i32* %22
  %24 = load i32*, i32** @a
  %25 = load i32, i32* %3
  %26 = load i32, i32* %2
  %27 = mul i32 %25, %26
  %28 = load i32, i32* %4
  %29 = add i32 %27, %28
  %30 = add i32 %29, 1
  %31 = add i32 %30, 1
  %32 = getelementptr i32, i32* %24, i32 %31  
  %33 = load i32, i32* %32
  %34 = icmp sgt i32 %23, %33
  br i8 %34, label %9, label %10
9:
  store i8 true, i8* %10
  br label %11
10:
  br label %11
11:
  br label %7
7:
  %35 = load i32, i32* %4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4
  br label %5
8:
  %37 = load i8, i8* %10
  %38 = xor i8 %37, true
  br i8 %38, label %12, label %13
12:
  ret 1
  br label %14
13:
  br label %14
14:
  br label %3
3:
  %39 = load i32, i32* %3
  %40 = add i32 %39, 1
  store i32 %40, i32* %3
  br label %1
4:
  ret 0
}

@n = global i32 0
@a = global i32* 0
@i = global i32 0
define void @globalinit() {
0:
  %1 = load i32, i32* @n
  %2 = load i32*, i32** @a
  %3 = call i32* @malloc(i32 84  )
  store i32 20, i32* %3
  store i32* %3, i32** @a
  %4 = load i32, i32* @i
}

define i32 @main() {
0:
  %1 = call i32 @getInt()
  store i32 %1, i32* @n
  store i32 0, i32* @i
  br label %1
1:
  %2 = load i32, i32* @i
  %3 = load i32, i32* @n
  %4 = icmp slt i32 %2, %3
  br i8 %4, label %2, label %4
2:
  %5 = load i32*, i32** @a
  %6 = load i32, i32* @i
  %7 = add i32 %6, 1
  %8 = getelementptr i32, i32* %5, i32 %7  
  %9 = call i32 @getInt()
  store i32 %9, i32* %8
  br label %3
3:
  %10 = load i32, i32* @i
  %11 = add i32 %10, 1
  store i32 %11, i32* @i
  br label %1
4:
  %12 = load i32, i32* @n
  store i32 %12, i32* @i
  br label %5
5:
  %13 = load i32, i32* @i
  %14 = icmp sgt i32 %13, 0
  br i8 %14, label %6, label %8
6:
  %15 = load i32, i32* @i
  %16 = call i32 @jud(i32 %15  )
  %17 = icmp sgt i32 %16, 0
  br i8 %17, label %9, label %10
9:
  %18 = load i32, i32* @i
  %19 = call string @toString(i32 %18  )
  call void @print(string %19  )
  ret 0
  br label %11
10:
  br label %11
11:
  br label %7
7:
  %20 = load i32, i32* @i
  %21 = div i32 %20, 2
  store i32 %21, i32* @i
  br label %5
8:
  ret 0
}

