%Queue_int = type { i32 i32 i32* };
define void @Queue_int_push(%Queue_int %0  i32 %1  ) {
  %2 = alloca %Queue_int
  %3 = alloca i32
0:
  store %Queue_int %0, %Queue_int* %2
  store i32 %1, i32* %3
  %4 = call i32 @Queue_int_size()
  %5 = load %Queue_int, %Queue_int* %2
  %6 = getelementptr %Queue_int, %Queue_int %5, i32 0  i32 0  
  %7 = load i32*, i32** %6
  %8 = call %Queue_int @Queue_int(i32* %7  )
  %9 = sub i32 %8, 1
  %10 = icmp eq i32 %4, %9
  br i8 %10, label %1, label %2
1:
  call void @Queue_int_doubleStorage()
  br label %3
2:
  br label %3
3:
  %11 = load %Queue_int, %Queue_int* %2
  %12 = getelementptr %Queue_int, %Queue_int %11, i32 0  i32 0  
  %13 = load i32*, i32** %12
  %14 = load %Queue_int, %Queue_int* %2
  %15 = getelementptr %Queue_int, %Queue_int %14, i32 0  i32 2  
  %16 = load i32, i32* %15
  %17 = add i32 %16, 1
  %18 = getelementptr i32, i32* %13, i32 %17  
  %19 = load i32, i32* %3
  store i32 %19, i32* %18
  %20 = load %Queue_int, %Queue_int* %2
  %21 = getelementptr %Queue_int, %Queue_int %20, i32 0  i32 2  
  %22 = load %Queue_int, %Queue_int* %2
  %23 = getelementptr %Queue_int, %Queue_int %22, i32 0  i32 2  
  %24 = load i32, i32* %23
  %25 = add i32 %24, 1
  %26 = load %Queue_int, %Queue_int* %2
  %27 = getelementptr %Queue_int, %Queue_int %26, i32 0  i32 0  
  %28 = load i32*, i32** %27
  %29 = call %Queue_int @Queue_int(i32* %28  )
  %30 = srem %Queue_int %25, %29
  store i32 %30, i32* %21
}

define i32 @Queue_int_top(%Queue_int %0  ) {
  %1 = alloca %Queue_int
0:
  store %Queue_int %0, %Queue_int* %1
  %2 = load %Queue_int, %Queue_int* %1
  %3 = getelementptr %Queue_int, %Queue_int %2, i32 0  i32 0  
  %4 = load i32*, i32** %3
  %5 = load %Queue_int, %Queue_int* %1
  %6 = getelementptr %Queue_int, %Queue_int %5, i32 0  i32 1  
  %7 = load i32, i32* %6
  %8 = add i32 %7, 1
  %9 = getelementptr i32, i32* %4, i32 %8  
  %10 = load i32, i32* %9
  ret i32 %10
}

define i32 @Queue_int_pop(%Queue_int %0  ) {
  %1 = alloca %Queue_int
  %4 = alloca i32
0:
  store %Queue_int %0, %Queue_int* %1
  %2 = call i32 @Queue_int_size()
  %3 = icmp eq i32 %2, 0
  br i8 %3, label %1, label %2
1:
  call void @println(string $str1  )
  br label %3
2:
  br label %3
3:
  %5 = call i32 @Queue_int_top()
  store i32 %5, i32* %4
  %6 = load %Queue_int, %Queue_int* %1
  %7 = getelementptr %Queue_int, %Queue_int %6, i32 0  i32 1  
  %8 = load %Queue_int, %Queue_int* %1
  %9 = getelementptr %Queue_int, %Queue_int %8, i32 0  i32 1  
  %10 = load i32, i32* %9
  %11 = add i32 %10, 1
  %12 = load %Queue_int, %Queue_int* %1
  %13 = getelementptr %Queue_int, %Queue_int %12, i32 0  i32 0  
  %14 = load i32*, i32** %13
  %15 = call %Queue_int @Queue_int(i32* %14  )
  %16 = srem %Queue_int %11, %15
  store i32 %16, i32* %7
  %17 = load i32, i32* %4
  ret i32 %17
}

define i32 @Queue_int_size(%Queue_int %0  ) {
  %1 = alloca %Queue_int
0:
  store %Queue_int %0, %Queue_int* %1
  %2 = load %Queue_int, %Queue_int* %1
  %3 = getelementptr %Queue_int, %Queue_int %2, i32 0  i32 2  
  %4 = load i32, i32* %3
  %5 = load %Queue_int, %Queue_int* %1
  %6 = getelementptr %Queue_int, %Queue_int %5, i32 0  i32 0  
  %7 = load i32*, i32** %6
  %8 = call %Queue_int @Queue_int(i32* %7  )
  %9 = add %Queue_int %4, %8
  %10 = load %Queue_int, %Queue_int* %1
  %11 = getelementptr %Queue_int, %Queue_int %10, i32 0  i32 1  
  %12 = load i32, i32* %11
  %13 = sub i32 %9, %12
  %14 = load %Queue_int, %Queue_int* %1
  %15 = getelementptr %Queue_int, %Queue_int %14, i32 0  i32 0  
  %16 = load i32*, i32** %15
  %17 = call %Queue_int @Queue_int(i32* %16  )
  %18 = srem %Queue_int %13, %17
  ret i32 %18
}

define void @Queue_int_doubleStorage(%Queue_int %0  ) {
  %1 = alloca %Queue_int
  %2 = alloca i32*
  %6 = alloca i32
  %10 = alloca i32
  %26 = alloca i32
0:
  store %Queue_int %0, %Queue_int* %1
  %3 = load %Queue_int, %Queue_int* %1
  %4 = getelementptr %Queue_int, %Queue_int %3, i32 0  i32 0  
  %5 = load i32*, i32** %4
  store i32* %5, i32** %2
  %7 = load %Queue_int, %Queue_int* %1
  %8 = getelementptr %Queue_int, %Queue_int %7, i32 0  i32 1  
  %9 = load i32, i32* %8
  store i32 %9, i32* %6
  %11 = load %Queue_int, %Queue_int* %1
  %12 = getelementptr %Queue_int, %Queue_int %11, i32 0  i32 2  
  %13 = load i32, i32* %12
  store i32 %13, i32* %10
  %14 = load %Queue_int, %Queue_int* %1
  %15 = getelementptr %Queue_int, %Queue_int %14, i32 0  i32 0  
  %17 = load i32*, i32** %2
  %18 = call %Queue_int @Queue_int(i32* %17  )
  %19 = mul i32 %18, 2
  %20 = mul i32 %19, 4
  %21 = add i32 %20, 4
  %16 = call i32* @malloc(i32 %21  )
  store i32 %19, i32* %16
  store i32* %16, i32** %15
  %22 = load %Queue_int, %Queue_int* %1
  %23 = getelementptr %Queue_int, %Queue_int %22, i32 0  i32 1  
  store i32 0, i32* %23
  %24 = load %Queue_int, %Queue_int* %1
  %25 = getelementptr %Queue_int, %Queue_int %24, i32 0  i32 2  
  store i32 0, i32* %25
  %27 = load i32, i32* %6
  store i32 %27, i32* %26
  br label %1
1:
  %28 = load i32, i32* %26
  %29 = load i32, i32* %10
  %30 = icmp ne i32 %28, %29
  br i8 %30, label %2, label %3
2:
  %31 = load %Queue_int, %Queue_int* %1
  %32 = getelementptr %Queue_int, %Queue_int %31, i32 0  i32 0  
  %33 = load i32*, i32** %32
  %34 = load %Queue_int, %Queue_int* %1
  %35 = getelementptr %Queue_int, %Queue_int %34, i32 0  i32 2  
  %36 = load i32, i32* %35
  %37 = add i32 %36, 1
  %38 = getelementptr i32, i32* %33, i32 %37  
  %39 = load i32*, i32** %2
  %40 = load i32, i32* %26
  %41 = add i32 %40, 1
  %42 = getelementptr i32, i32* %39, i32 %41  
  %43 = load i32, i32* %42
  store i32 %43, i32* %38
  %44 = load %Queue_int, %Queue_int* %1
  %45 = getelementptr %Queue_int, %Queue_int %44, i32 0  i32 2  
  %46 = load i32, i32* %45
  %47 = add i32 %46, 1
  %48 = load %Queue_int, %Queue_int* %1
  %49 = getelementptr %Queue_int, %Queue_int %48, i32 0  i32 2  
  store i32 %47, i32* %49
  %50 = load i32, i32* %26
  %51 = add i32 %50, 1
  %52 = load i32*, i32** %2
  %53 = call %Queue_int @Queue_int(i32* %52  )
  %54 = srem %Queue_int %51, %53
  store i32 %54, i32* %26
  br label %1
3:
}

define %Queue_int @Queue_int(%Queue_int %0  ) {
  %1 = alloca %Queue_int
0:
  store %Queue_int %0, %Queue_int* %1
  %2 = load %Queue_int, %Queue_int* %1
  %3 = getelementptr %Queue_int, %Queue_int %2, i32 0  i32 1  
  store i32 0, i32* %3
  %4 = load %Queue_int, %Queue_int* %1
  %5 = getelementptr %Queue_int, %Queue_int %4, i32 0  i32 2  
  store i32 0, i32* %5
  %6 = load %Queue_int, %Queue_int* %1
  %7 = getelementptr %Queue_int, %Queue_int %6, i32 0  i32 0  
  %8 = call i32* @malloc(i32 68  )
  store i32 16, i32* %8
  store i32* %8, i32** %7
}

$str1 = global string "Warning: Queue_int::pop: empty queue"
$str2 = global string "q.size() != N after pushes"
$str3 = global string "Head != i"
$str4 = global string "Failed: q.pop() != i"
$str5 = global string "q.size() != N - i - 1"
$str6 = global string "Passed tests."
define void @globalinit() {
0:
}

define i32 @main() {
  %1 = alloca %Queue_int
  %3 = alloca i32
  %4 = alloca i32
  %20 = alloca i32
0:
  %2 = call %Queue_int @malloc(i32 12  )
  call void @Queue_int(%Queue_int %2  )
  store %Queue_int %2, %Queue_int* %1
  store i32 100, i32* %4
  store i32 0, i32* %3
  br label %1
1:
  %5 = load i32, i32* %3
  %6 = load i32, i32* %4
  %7 = icmp slt i32 %5, %6
  br i8 %7, label %2, label %4
2:
  %8 = load %Queue_int, %Queue_int* %1
  %9 = load i32, i32* %3
  call void @Queue_int_push(%Queue_int %8  i32 %9  )
  br label %3
3:
  %11 = load i32, i32* %3
  %12 = add i32 %11, 1
  store i32 %12, i32* %3
  br label %1
4:
  %13 = load %Queue_int, %Queue_int* %1
  %14 = call i32 @Queue_int_size(%Queue_int %13  )
  %15 = load i32, i32* %4
  %16 = icmp ne i32 %14, %15
  br i8 %16, label %5, label %6
5:
  call void @println(string $str2  )
  ret 1
  br label %7
6:
  br label %7
7:
  store i32 0, i32* %3
  br label %8
8:
  %17 = load i32, i32* %3
  %18 = load i32, i32* %4
  %19 = icmp slt i32 %17, %18
  br i8 %19, label %9, label %11
9:
  %21 = load %Queue_int, %Queue_int* %1
  %22 = call i32 @Queue_int_top(%Queue_int %21  )
  store i32 %22, i32* %20
  %23 = load i32, i32* %20
  %24 = load i32, i32* %3
  %25 = icmp ne i32 %23, %24
  br i8 %25, label %12, label %13
12:
  call void @println(string $str3  )
  ret 1
  br label %14
13:
  br label %14
14:
  %26 = load %Queue_int, %Queue_int* %1
  %27 = call i32 @Queue_int_pop(%Queue_int %26  )
  %28 = load i32, i32* %3
  %29 = icmp ne i32 %27, %28
  br i8 %29, label %15, label %16
15:
  call void @println(string $str4  )
  ret 1
  br label %17
16:
  br label %17
17:
  %30 = load %Queue_int, %Queue_int* %1
  %31 = call i32 @Queue_int_size(%Queue_int %30  )
  %32 = load i32, i32* %4
  %33 = load i32, i32* %3
  %34 = sub i32 %32, %33
  %35 = sub i32 %34, 1
  %36 = icmp ne i32 %31, %35
  br i8 %36, label %18, label %19
18:
  call void @println(string $str5  )
  ret 1
  br label %20
19:
  br label %20
20:
  br label %10
10:
  %37 = load i32, i32* %3
  %38 = add i32 %37, 1
  store i32 %38, i32* %3
  br label %8
11:
  call void @println(string $str6  )
  ret 0
}

