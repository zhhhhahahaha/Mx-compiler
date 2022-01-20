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
  %21 = getelementptr i32, i32* %15, i32 %20  
  %22 = load i32, i32* %21
  %23 = load i32*, i32** @a
  %24 = load i32, i32* %3
  %25 = load i32, i32* %2
  %26 = mul i32 %24, %25
  %27 = load i32, i32* %4
  %28 = add i32 %26, %27
  %29 = add i32 %28, 1
  %30 = getelementptr i32, i32* %23, i32 %29  
  %31 = load i32, i32* %30
  %32 = icmp sgt i32 %22, %31
  br i8 %32, label %9, label %10
9:
  store i8 true, i8* %10
  br label %11
10:
  br label %11
11:
  br label %7
7:
  %33 = load i32, i32* %4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4
  br label %5
8:
  %35 = load i8, i8* %10
  %36 = xor i8 %35, true
  br i8 %36, label %12, label %13
12:
  ret 1
  br label %14
13:
  br label %14
14:
  br label %3
3:
  %37 = load i32, i32* %3
  %38 = add i32 %37, 1
  store i32 %38, i32* %3
  br label %1
4:
  ret 0
}

@n = global i32 0
@a = global i32* 0
@a_size = global i32 0
@i = global i32 0
define void @globalinit() {
0:
  %1 = load i32, i32* @n
  %2 = load i32*, i32** @a
  %3 = call i32** @malloc(i32 80  )
  %4 = load i32, i32* @a_size
  store i32 20, i32* @a_size
  store i32* %3, i32** @a
  %5 = load i32, i32* @i
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
  %7 = getelementptr i32, i32* %5, i32 %6  
  %8 = call i32 @getInt()
  store i32 %8, i32* %7
  br label %3
3:
  %9 = load i32, i32* @i
  %10 = add i32 %9, 1
  store i32 %10, i32* @i
  br label %1
4:
  %11 = load i32, i32* @n
  store i32 %11, i32* @i
  br label %5
5:
  %12 = load i32, i32* @i
  %13 = icmp sgt i32 %12, 0
  br i8 %13, label %6, label %8
6:
  %14 = load i32, i32* @i
  %15 = call i32 @jud(i32 %14  )
  %16 = icmp sgt i32 %15, 0
  br i8 %16, label %9, label %10
9:
  %17 = load i32, i32* @i
  %18 = call string @toString(i32 %17  )
  call void @print(string %18  )
  ret 0
  br label %11
10:
  br label %11
11:
  br label %7
7:
  %19 = load i32, i32* @i
  %20 = div i32 %19, 2
  store i32 %20, i32* @i
  br label %5
8:
  ret 0
}

