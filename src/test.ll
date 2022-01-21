%vector = type { i32* };
define void @vector_init(%vector %0  i32* %1  ) {
  %2 = alloca %vector
  %3 = alloca i32*
  %13 = alloca i32
0:
  store %vector %0, %vector* %2
  store i32* %1, i32** %3
  %4 = load i32*, i32** %3
  %5 = icmp eq null %4, null
  br i8 %5, label %1, label %2
1:
  ret void 
  br label %3
2:
  br label %3
3:
  %6 = load %vector, %vector* %2
  %7 = getelementptr %vector, %vector %6, i32 0  i32 0  
  %9 = load i32*, i32** %3
  %10 = call i32 @array_size(i32* %9  )
  %11 = mul i32 %10, 4
  %12 = add i32 %11, 4
  %8 = call i32* @malloc(i32 %12  )
  store i32 %10, i32* %8
  store i32* %8, i32** %7
  store i32 0, i32* %13
  br label %4
4:
  %14 = load i32, i32* %13
  %15 = load i32*, i32** %3
  %16 = call i32 @array_size(i32* %15  )
  %17 = icmp slt i32 %14, %16
  br i8 %17, label %5, label %7
5:
  %18 = load %vector, %vector* %2
  %19 = getelementptr %vector, %vector %18, i32 0  i32 0  
  %20 = load i32*, i32** %19
  %21 = load i32, i32* %13
  %22 = add i32 %21, 1
  %23 = getelementptr i32, i32* %20, i32 %22  
  %24 = load i32*, i32** %3
  %25 = load i32, i32* %13
  %26 = add i32 %25, 1
  %27 = getelementptr i32, i32* %24, i32 %26  
  %28 = load i32, i32* %27
  store i32 %28, i32* %23
  br label %6
6:
  %29 = load i32, i32* %13
  %30 = add i32 %29, 1
  store i32 %30, i32* %13
  br label %4
7:
}

define i32 @vector_getDim(%vector %0  ) {
  %1 = alloca %vector
0:
  store %vector %0, %vector* %1
  %2 = load %vector, %vector* %1
  %3 = getelementptr %vector, %vector %2, i32 0  i32 0  
  %4 = load i32*, i32** %3
  %5 = icmp eq null %4, null
  br i8 %5, label %1, label %2
1:
  ret 0
  br label %3
2:
  br label %3
3:
  %6 = load %vector, %vector* %1
  %7 = getelementptr %vector, %vector %6, i32 0  i32 0  
  %8 = load i32*, i32** %7
  %9 = call i32 @array_size(i32* %8  )
  ret i32 %9
}

define i32 @vector_dot(%vector %0  %vector %1  ) {
  %2 = alloca %vector
  %3 = alloca %vector
  %4 = alloca i32
  %5 = alloca i32
0:
  store %vector %0, %vector* %2
  store %vector %1, %vector* %3
  store i32 0, i32* %4
  store i32 0, i32* %5
  br label %1
1:
  %6 = load i32, i32* %4
  %7 = load %vector, %vector* %2
  %8 = call i32 @vector_getDim(%vector %7  )
  %9 = icmp slt i32 %6, %8
  br i8 %9, label %2, label %3
2:
  %10 = load %vector, %vector* %2
  %11 = getelementptr %vector, %vector %10, i32 0  i32 0  
  %12 = load i32*, i32** %11
  %13 = load i32, i32* %4
  %14 = add i32 %13, 1
  %15 = getelementptr i32, i32* %12, i32 %14  
  %16 = load i32, i32* %15
  %17 = load %vector, %vector* %3
  %18 = getelementptr %vector, %vector %17, i32 0  i32 0  
  %19 = load i32*, i32** %18
  %20 = load i32, i32* %4
  %21 = add i32 %20, 1
  %22 = getelementptr i32, i32* %19, i32 %21  
  %23 = load i32, i32* %22
  %24 = mul i32 %16, %23
  store i32 %24, i32* %5
  %25 = load i32, i32* %4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4
  br label %1
3:
  %27 = load i32, i32* %5
  ret i32 %27
}

define %vector @vector_scalarInPlaceMultiply(%vector %0  i32 %1  ) {
  %2 = alloca %vector
  %3 = alloca i32
  %8 = alloca i32
0:
  store %vector %0, %vector* %2
  store i32 %1, i32* %3
  %4 = load %vector, %vector* %2
  %5 = getelementptr %vector, %vector %4, i32 0  i32 0  
  %6 = load i32*, i32** %5
  %7 = icmp eq null %6, null
  br i8 %7, label %1, label %2
1:
  ret null
  br label %3
2:
  br label %3
3:
  store i32 0, i32* %8
  br label %4
4:
  %9 = load i32, i32* %8
  %10 = load %vector, %vector* %2
  %11 = call i32 @vector_getDim(%vector %10  )
  %12 = icmp slt i32 %9, %11
  br i8 %12, label %5, label %7
5:
  %13 = load %vector, %vector* %2
  %14 = getelementptr %vector, %vector %13, i32 0  i32 0  
  %15 = load i32*, i32** %14
  %16 = load i32, i32* %8
  %17 = add i32 %16, 1
  %18 = getelementptr i32, i32* %15, i32 %17  
  %19 = load i32, i32* %3
  %20 = load %vector, %vector* %2
  %21 = getelementptr %vector, %vector %20, i32 0  i32 0  
  %22 = load i32*, i32** %21
  %23 = load i32, i32* %8
  %24 = add i32 %23, 1
  %25 = getelementptr i32, i32* %22, i32 %24  
  %26 = load i32, i32* %25
  %27 = mul i32 %19, %26
  store i32 %27, i32* %18
  br label %6
6:
  %28 = load i32, i32* %8
  %29 = add i32 %28, 1
  store i32 %29, i32* %8
  br label %4
7:
  %30 = load %vector, %vector* %2
  ret %vector %30
}

define %vector @vector_add(%vector %0  %vector %1  ) {
  %2 = alloca %vector
  %3 = alloca %vector
  %9 = alloca i8
  %15 = alloca %vector
  %17 = alloca i32
0:
  store %vector %0, %vector* %2
  store %vector %1, %vector* %3
  %4 = load %vector, %vector* %2
  %5 = call i32 @vector_getDim(%vector %4  )
  %6 = load %vector, %vector* %3
  %7 = call i32 @vector_getDim(%vector %6  )
  %8 = icmp ne i32 %5, %7
  %10 = or i8 %8, false
  store i8 %8, i8* %9
  br i8 %10, label %5, label %4
4:
  %11 = load %vector, %vector* %2
  %12 = call i32 @vector_getDim(%vector %11  )
  %13 = icmp eq i32 %12, 0
  store i8 %13, i8* %9
  br label %5
5:
  %14 = load i8, i8* %9
  br i8 %14, label %1, label %2
1:
  ret null
  br label %3
2:
  br label %3
3:
  %16 = call %vector @malloc(i32 4  )
  call void @vector(%vector %16  )
  store %vector %16, %vector* %15
  %18 = load %vector, %vector* %15
  %19 = getelementptr %vector, %vector %18, i32 0  i32 0  
  %21 = load %vector, %vector* %2
  %22 = call i32 @vector_getDim(%vector %21  )
  %23 = mul i32 %22, 4
  %24 = add i32 %23, 4
  %20 = call i32* @malloc(i32 %24  )
  store i32 %22, i32* %20
  store i32* %20, i32** %19
  store i32 0, i32* %17
  br label %6
6:
  %25 = load i32, i32* %17
  %26 = load %vector, %vector* %2
  %27 = call i32 @vector_getDim(%vector %26  )
  %28 = icmp slt i32 %25, %27
  br i8 %28, label %7, label %9
7:
  %29 = load %vector, %vector* %15
  %30 = getelementptr %vector, %vector %29, i32 0  i32 0  
  %31 = load i32*, i32** %30
  %32 = load i32, i32* %17
  %33 = add i32 %32, 1
  %34 = getelementptr i32, i32* %31, i32 %33  
  %35 = load %vector, %vector* %2
  %36 = getelementptr %vector, %vector %35, i32 0  i32 0  
  %37 = load i32*, i32** %36
  %38 = load i32, i32* %17
  %39 = add i32 %38, 1
  %40 = getelementptr i32, i32* %37, i32 %39  
  %41 = load i32, i32* %40
  %42 = load %vector, %vector* %3
  %43 = getelementptr %vector, %vector %42, i32 0  i32 0  
  %44 = load i32*, i32** %43
  %45 = load i32, i32* %17
  %46 = add i32 %45, 1
  %47 = getelementptr i32, i32* %44, i32 %46  
  %48 = load i32, i32* %47
  %49 = add i32 %41, %48
  store i32 %49, i32* %34
  br label %8
8:
  %50 = load i32, i32* %17
  %51 = add i32 %50, 1
  store i32 %51, i32* %17
  br label %6
9:
  %52 = load %vector, %vector* %15
  ret %vector %52
}

define i8 @vector_set(%vector %0  i32 %1  i32 %2  ) {
  %3 = alloca %vector
  %4 = alloca i32
  %5 = alloca i32
0:
  store %vector %0, %vector* %3
  store i32 %1, i32* %4
  store i32 %2, i32* %5
  %6 = load %vector, %vector* %3
  %7 = call i32 @vector_getDim(%vector %6  )
  %8 = load i32, i32* %4
  %9 = icmp slt i32 %7, %8
  br i8 %9, label %1, label %2
1:
  ret false
  br label %3
2:
  br label %3
3:
  %10 = load %vector, %vector* %3
  %11 = getelementptr %vector, %vector %10, i32 0  i32 0  
  %12 = load i32*, i32** %11
  %13 = load i32, i32* %4
  %14 = add i32 %13, 1
  %15 = getelementptr i32, i32* %12, i32 %14  
  %16 = load i32, i32* %5
  store i32 %16, i32* %15
  ret true
}

define string @vector_tostring(%vector %0  ) {
  %1 = alloca %vector
  %2 = alloca string
  %17 = alloca i32
0:
  store %vector %0, %vector* %1
  store string $str1, string* %2
  %3 = load %vector, %vector* %1
  %4 = call i32 @vector_getDim(%vector %3  )
  %5 = call string @toString(i32 %4  )
  call void @println(string %5  )
  %6 = load %vector, %vector* %1
  %7 = call i32 @vector_getDim(%vector %6  )
  %8 = icmp sgt i32 %7, 0
  br i8 %8, label %1, label %2
1:
  %9 = load string, string* %2
  %10 = load %vector, %vector* %1
  %11 = getelementptr %vector, %vector %10, i32 0  i32 0  
  %12 = load i32*, i32** %11
  %13 = getelementptr i32, i32* %12, i32 1  
  %14 = load i32, i32* %13
  %15 = call string @toString(i32 %14  )
  %16 = call string @string_add(string %9  string %15  )
  store string %16, string* %2
  br label %3
2:
  br label %3
3:
  store i32 1, i32* %17
  br label %4
4:
  %18 = load i32, i32* %17
  %19 = load %vector, %vector* %1
  %20 = call i32 @vector_getDim(%vector %19  )
  %21 = icmp slt i32 %18, %20
  br i8 %21, label %5, label %7
5:
  %22 = load string, string* %2
  %23 = call string @string_add(string %22  string $str2  )
  %24 = load %vector, %vector* %1
  %25 = getelementptr %vector, %vector %24, i32 0  i32 0  
  %26 = load i32*, i32** %25
  %27 = load i32, i32* %17
  %28 = add i32 %27, 1
  %29 = getelementptr i32, i32* %26, i32 %28  
  %30 = load i32, i32* %29
  %31 = call string @toString(i32 %30  )
  %32 = call string @string_add(string %23  string %31  )
  store string %32, string* %2
  br label %6
6:
  %33 = load i32, i32* %17
  %34 = add i32 %33, 1
  store i32 %34, i32* %17
  br label %4
7:
  %35 = load string, string* %2
  %36 = call string @string_add(string %35  string $str3  )
  store string %36, string* %2
  %37 = load string, string* %2
  ret string %37
}

define i8 @vector_copy(%vector %0  %vector %1  ) {
  %2 = alloca %vector
  %3 = alloca %vector
  %18 = alloca i32
0:
  store %vector %0, %vector* %2
  store %vector %1, %vector* %3
  %4 = load %vector, %vector* %3
  %5 = icmp eq null %4, null
  br i8 %5, label %1, label %2
1:
  ret false
  br label %3
2:
  br label %3
3:
  %6 = load %vector, %vector* %3
  %7 = call i32 @vector_getDim(%vector %6  )
  %8 = icmp eq i32 %7, 0
  br i8 %8, label %4, label %5
4:
  %9 = load %vector, %vector* %2
  %10 = getelementptr %vector, %vector %9, i32 0  i32 0  
  store null null, null* %10
  br label %6
5:
  %11 = load %vector, %vector* %2
  %12 = getelementptr %vector, %vector %11, i32 0  i32 0  
  %14 = load %vector, %vector* %3
  %15 = call i32 @vector_getDim(%vector %14  )
  %16 = mul i32 %15, 4
  %17 = add i32 %16, 4
  %13 = call i32* @malloc(i32 %17  )
  store i32 %15, i32* %13
  store i32* %13, i32** %12
  store i32 0, i32* %18
  br label %7
7:
  %19 = load i32, i32* %18
  %20 = load %vector, %vector* %2
  %21 = call i32 @vector_getDim(%vector %20  )
  %22 = icmp slt i32 %19, %21
  br i8 %22, label %8, label %10
8:
  %23 = load %vector, %vector* %2
  %24 = getelementptr %vector, %vector %23, i32 0  i32 0  
  %25 = load i32*, i32** %24
  %26 = load i32, i32* %18
  %27 = add i32 %26, 1
  %28 = getelementptr i32, i32* %25, i32 %27  
  %29 = load %vector, %vector* %3
  %30 = getelementptr %vector, %vector %29, i32 0  i32 0  
  %31 = load i32*, i32** %30
  %32 = load i32, i32* %18
  %33 = add i32 %32, 1
  %34 = getelementptr i32, i32* %31, i32 %33  
  %35 = load i32, i32* %34
  store i32 %35, i32* %28
  br label %9
9:
  %36 = load i32, i32* %18
  %37 = add i32 %36, 1
  store i32 %37, i32* %18
  br label %7
10:
  br label %6
6:
  ret true
}

define %vector @vector() {
}

$str1 = global string "( "
$str2 = global string ", "
$str3 = global string " )"
$str4 = global string "vector x: "
$str5 = global string "excited!"
$str6 = global string "vector y: "
$str7 = global string "x + y: "
$str8 = global string "x * y: "
$str9 = global string "(1 << 3) * y: "
define void @globalinit() {
0:
}

define i32 @main() {
  %1 = alloca %vector
  %3 = alloca i32*
  %5 = alloca i32
  %21 = alloca %vector
0:
  %2 = call %vector @malloc(i32 4  )
  call void @vector(%vector %2  )
  store %vector %2, %vector* %1
  %4 = call i32* @malloc(i32 44  )
  store i32 10, i32* %4
  store i32* %4, i32** %3
  store i32 0, i32* %5
  br label %1
1:
  %6 = load i32, i32* %5
  %7 = icmp slt i32 %6, 10
  br i8 %7, label %2, label %4
2:
  %8 = load i32*, i32** %3
  %9 = load i32, i32* %5
  %10 = add i32 %9, 1
  %11 = getelementptr i32, i32* %8, i32 %10  
  %12 = load i32, i32* %5
  %13 = sub i32 9, %12
  store i32 %13, i32* %11
  br label %3
3:
  %14 = load i32, i32* %5
  %15 = add i32 %14, 1
  store i32 %15, i32* %5
  br label %1
4:
  %16 = load %vector, %vector* %1
  %17 = load i32*, i32** %3
  call void @vector_init(%vector %16  i32* %17  )
  call void @print(string $str4  )
  %19 = load %vector, %vector* %1
  %20 = call string @vector_tostring(%vector %19  )
  call void @println(string %20  )
  %22 = call %vector @malloc(i32 4  )
  call void @vector(%vector %22  )
  store %vector %22, %vector* %21
  %23 = load %vector, %vector* %21
  %24 = load %vector, %vector* %1
  %25 = call i8 @vector_copy(%vector %23  %vector %24  )
  %26 = load %vector, %vector* %21
  %27 = call i8 @vector_set(%vector %26  i32 3  i32 817  )
  br i8 %27, label %5, label %6
5:
  call void @println(string $str5  )
  br label %7
6:
  br label %7
7:
  call void @print(string $str6  )
  %28 = load %vector, %vector* %21
  %29 = call string @vector_tostring(%vector %28  )
  call void @println(string %29  )
  call void @print(string $str7  )
  %30 = load %vector, %vector* %1
  %31 = load %vector, %vector* %21
  %32 = call %vector @vector_add(%vector %30  %vector %31  )
  %33 = call string @vector_tostring(%vector %32  )
  call void @println(string %33  )
  call void @print(string $str8  )
  %34 = load %vector, %vector* %1
  %35 = load %vector, %vector* %21
  %36 = call i32 @vector_dot(%vector %34  %vector %35  )
  %37 = call string @toString(i32 %36  )
  call void @println(string %37  )
  call void @print(string $str9  )
  %38 = load %vector, %vector* %21
  %39 = call %vector @vector_scalarInPlaceMultiply(%vector %38  i32 8  )
  %40 = call string @vector_tostring(%vector %39  )
  call void @println(string %40  )
  ret 0
}

