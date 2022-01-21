define void @exchange(i32 %1  i32 %2  ) {
  %3 = alloca i32
  %4 = alloca i32
  %5 = alloca i32
0:
  store i32 %1, i32* %3
  store i32 %2, i32* %4
  %6 = load i32*, i32** @a
  %7 = load i32, i32* %3
  %8 = add i32 %7, 1
  %9 = getelementptr i32, i32* %6, i32 %8  
  %10 = load i32, i32* %9
  store i32 %10, i32* %5
  %11 = load i32*, i32** @a
  %12 = load i32, i32* %3
  %13 = add i32 %12, 1
  %14 = getelementptr i32, i32* %11, i32 %13  
  %15 = load i32*, i32** @a
  %16 = load i32, i32* %4
  %17 = add i32 %16, 1
  %18 = getelementptr i32, i32* %15, i32 %17  
  %19 = load i32, i32* %18
  store i32 %19, i32* %14
  %20 = load i32*, i32** @a
  %21 = load i32, i32* %4
  %22 = add i32 %21, 1
  %23 = getelementptr i32, i32* %20, i32 %22  
  %24 = load i32, i32* %5
  store i32 %24, i32* %23
}

define i32 @makeHeap() {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %16 = alloca i8
0:
  %4 = load i32, i32* @n
  %5 = sub i32 %4, 1
  %6 = div i32 %5, 2
  store i32 %6, i32* %1
  store i32 0, i32* %2
  store i32 0, i32* %3
  br label %1
1:
  %7 = load i32, i32* %1
  %8 = icmp sge i32 %7, 0
  br i8 %8, label %2, label %3
2:
  %9 = load i32, i32* %1
  %10 = mul i32 %9, 2
  store i32 %10, i32* %3
  %11 = load i32, i32* %1
  %12 = mul i32 %11, 2
  %13 = add i32 %12, 1
  %14 = load i32, i32* @n
  %15 = icmp slt i32 %13, %14
  %17 = xor i8 %15, true
  store i8 %15, i8* %16
  br i8 %17, label %8, label %7
7:
  %18 = load i32*, i32** @a
  %19 = load i32, i32* %1
  %20 = mul i32 %19, 2
  %21 = add i32 %20, 1
  %22 = add i32 %21, 1
  %23 = getelementptr i32, i32* %18, i32 %22  
  %24 = load i32, i32* %23
  %25 = load i32*, i32** @a
  %26 = load i32, i32* %1
  %27 = mul i32 %26, 2
  %28 = add i32 %27, 1
  %29 = getelementptr i32, i32* %25, i32 %28  
  %30 = load i32, i32* %29
  %31 = icmp slt i32 %24, %30
  store i8 %31, i8* %16
  br label %8
8:
  %32 = load i8, i8* %16
  br i8 %32, label %4, label %5
4:
  %33 = load i32, i32* %1
  %34 = mul i32 %33, 2
  %35 = add i32 %34, 1
  store i32 %35, i32* %3
  br label %6
5:
  br label %6
6:
  %36 = load i32*, i32** @a
  %37 = load i32, i32* %1
  %38 = add i32 %37, 1
  %39 = getelementptr i32, i32* %36, i32 %38  
  %40 = load i32, i32* %39
  %41 = load i32*, i32** @a
  %42 = load i32, i32* %3
  %43 = add i32 %42, 1
  %44 = getelementptr i32, i32* %41, i32 %43  
  %45 = load i32, i32* %44
  %46 = icmp sgt i32 %40, %45
  br i8 %46, label %9, label %10
9:
  %47 = load i32, i32* %1
  %48 = load i32, i32* %3
  call void @exchange(i32 %47  i32 %48  )
  br label %11
10:
  br label %11
11:
  %49 = load i32, i32* %1
  %50 = sub i32 %49, 1
  store i32 %50, i32* %1
  br label %1
3:
  ret 0
}

define i32 @adjustHeap(i32 %1  ) {
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  %5 = alloca i32
  %17 = alloca i8
  %48 = alloca i32
0:
  store i32 %1, i32* %2
  store i32 0, i32* %3
  store i32 0, i32* %4
  store i32 0, i32* %5
  br label %1
1:
  %6 = load i32, i32* %3
  %7 = mul i32 %6, 2
  %8 = load i32, i32* %2
  %9 = icmp slt i32 %7, %8
  br i8 %9, label %2, label %3
2:
  %10 = load i32, i32* %3
  %11 = mul i32 %10, 2
  store i32 %11, i32* %4
  %12 = load i32, i32* %3
  %13 = mul i32 %12, 2
  %14 = add i32 %13, 1
  %15 = load i32, i32* %2
  %16 = icmp slt i32 %14, %15
  %18 = xor i8 %16, true
  store i8 %16, i8* %17
  br i8 %18, label %8, label %7
7:
  %19 = load i32*, i32** @a
  %20 = load i32, i32* %3
  %21 = mul i32 %20, 2
  %22 = add i32 %21, 1
  %23 = add i32 %22, 1
  %24 = getelementptr i32, i32* %19, i32 %23  
  %25 = load i32, i32* %24
  %26 = load i32*, i32** @a
  %27 = load i32, i32* %3
  %28 = mul i32 %27, 2
  %29 = add i32 %28, 1
  %30 = getelementptr i32, i32* %26, i32 %29  
  %31 = load i32, i32* %30
  %32 = icmp slt i32 %25, %31
  store i8 %32, i8* %17
  br label %8
8:
  %33 = load i8, i8* %17
  br i8 %33, label %4, label %5
4:
  %34 = load i32, i32* %3
  %35 = mul i32 %34, 2
  %36 = add i32 %35, 1
  store i32 %36, i32* %4
  br label %6
5:
  br label %6
6:
  %37 = load i32*, i32** @a
  %38 = load i32, i32* %3
  %39 = add i32 %38, 1
  %40 = getelementptr i32, i32* %37, i32 %39  
  %41 = load i32, i32* %40
  %42 = load i32*, i32** @a
  %43 = load i32, i32* %4
  %44 = add i32 %43, 1
  %45 = getelementptr i32, i32* %42, i32 %44  
  %46 = load i32, i32* %45
  %47 = icmp sgt i32 %41, %46
  br i8 %47, label %9, label %10
9:
  %49 = load i32*, i32** @a
  %50 = load i32, i32* %3
  %51 = add i32 %50, 1
  %52 = getelementptr i32, i32* %49, i32 %51  
  %53 = load i32, i32* %52
  store i32 %53, i32* %48
  %54 = load i32*, i32** @a
  %55 = load i32, i32* %3
  %56 = add i32 %55, 1
  %57 = getelementptr i32, i32* %54, i32 %56  
  %58 = load i32*, i32** @a
  %59 = load i32, i32* %4
  %60 = add i32 %59, 1
  %61 = getelementptr i32, i32* %58, i32 %60  
  %62 = load i32, i32* %61
  store i32 %62, i32* %57
  %63 = load i32*, i32** @a
  %64 = load i32, i32* %4
  %65 = add i32 %64, 1
  %66 = getelementptr i32, i32* %63, i32 %65  
  %67 = load i32, i32* %48
  store i32 %67, i32* %66
  %68 = load i32, i32* %4
  store i32 %68, i32* %3
  br label %11
10:
  br label %3
  br label %11
11:
  br label %1
3:
  ret 0
}

define i32 @heapSort() {
  %1 = alloca i32
  %2 = alloca i32
0:
  store i32 0, i32* %1
  store i32 0, i32* %2
  br label %1
1:
  %3 = load i32, i32* %2
  %4 = load i32, i32* @n
  %5 = icmp slt i32 %3, %4
  br i8 %5, label %2, label %4
2:
  %6 = load i32*, i32** @a
  %7 = getelementptr i32, i32* %6, i32 1  
  %8 = load i32, i32* %7
  store i32 %8, i32* %1
  %9 = load i32*, i32** @a
  %10 = getelementptr i32, i32* %9, i32 1  
  %11 = load i32*, i32** @a
  %12 = load i32, i32* @n
  %13 = load i32, i32* %2
  %14 = sub i32 %12, %13
  %15 = sub i32 %14, 1
  %16 = add i32 %15, 1
  %17 = getelementptr i32, i32* %11, i32 %16  
  %18 = load i32, i32* %17
  store i32 %18, i32* %10
  %19 = load i32*, i32** @a
  %20 = load i32, i32* @n
  %21 = load i32, i32* %2
  %22 = sub i32 %20, %21
  %23 = sub i32 %22, 1
  %24 = add i32 %23, 1
  %25 = getelementptr i32, i32* %19, i32 %24  
  %26 = load i32, i32* %1
  store i32 %26, i32* %25
  %27 = load i32, i32* @n
  %28 = load i32, i32* %2
  %29 = sub i32 %27, %28
  %30 = sub i32 %29, 1
  %31 = call i32 @adjustHeap(i32 %30  )
  br label %3
3:
  %32 = load i32, i32* %2
  %33 = add i32 %32, 1
  store i32 %33, i32* %2
  br label %1
4:
  ret 0
}

@n = global i32 0
@a = global i32* 0
$str1 = global string " "
$str2 = global string "\n"
define void @globalinit() {
0:
  %1 = load i32, i32* @n
  %2 = load i32*, i32** @a
}

define i32 @main() {
  %1 = alloca i32
0:
  %2 = call string @getString()
  %3 = call i32 @string_parseInt(string %2  )
  store i32 %3, i32* @n
  %5 = load i32, i32* @n
  %6 = mul i32 %5, 4
  %7 = add i32 %6, 4
  %4 = call i32* @malloc(i32 %7  )
  store i32 %5, i32* %4
  store i32* %4, i32** @a
  store i32 0, i32* %1
  br label %1
1:
  %8 = load i32, i32* %1
  %9 = load i32*, i32** @a
  %10 = call i32 @array_size(i32* %9  )
  %11 = icmp slt i32 %8, %10
  br i8 %11, label %2, label %4
2:
  %12 = load i32*, i32** @a
  %13 = load i32, i32* %1
  %14 = add i32 %13, 1
  %15 = getelementptr i32, i32* %12, i32 %14  
  %16 = load i32, i32* %1
  store i32 %16, i32* %15
  br label %3
3:
  %17 = load i32, i32* %1
  %18 = add i32 %17, 1
  store i32 %18, i32* %1
  br label %1
4:
  %19 = call i32 @makeHeap()
  %20 = call i32 @heapSort()
  store i32 0, i32* %1
  br label %5
5:
  %21 = load i32, i32* %1
  %22 = load i32*, i32** @a
  %23 = call i32 @array_size(i32* %22  )
  %24 = icmp slt i32 %21, %23
  br i8 %24, label %6, label %8
6:
  %25 = load i32*, i32** @a
  %26 = load i32, i32* %1
  %27 = add i32 %26, 1
  %28 = getelementptr i32, i32* %25, i32 %27  
  %29 = load i32, i32* %28
  %30 = call string @toString(i32 %29  )
  %31 = call string @string_add(string %30  string $str1  )
  call void @print(string %31  )
  br label %7
7:
  %32 = load i32, i32* %1
  %33 = add i32 %32, 1
  store i32 %33, i32* %1
  br label %5
8:
  call void @print(string $str2  )
  ret 0
}

