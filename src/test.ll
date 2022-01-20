@a = global i32** 0
@str = global string* 0
$str1 = global string "str1"
$str2 = global string "str2"
define void @globalinit() {
  %3 = alloca i32
0:
  %1 = load i32**, i32*** @a
  store i32 1, i32* %3
  %2 = call i32** @malloc(i32 124  )
  store i32 30, i32* %2
  br label %1
1:
  %4 = load i32, i32* %3
  %5 = icmp slt i32 %4, 31
  br i8 %5, label %2, label %3
2:
  %6 = load i32, i32* %3
  %7 = getelementptr i32*, i32** %2, i32 %6  
  %8 = call i32* @malloc(i32 124  )
  store i32 30, i32* %8
  store i32* %8, i32** %7
  %9 = add i32 %6, 1
  store i32 %9, i32* %3
  br label %1
3:
  store i32** %2, i32*** @a
  %10 = load string*, string** @str
  %11 = call string* @malloc(i32 124  )
  store i32 30, i32* %11
  store string* %11, string** @str
}

define i32 @main() {
  %1 = alloca i32
  %2 = alloca i32
  %5 = alloca i32
0:
  store i32 0, i32* %1
  br label %1
1:
  %3 = load i32, i32* %1
  %4 = icmp sle i32 %3, 29
  br i8 %4, label %2, label %4
2:
  store i32 0, i32* %5
  %6 = load string*, string** @str
  %7 = load i32, i32* %1
  %8 = add i32 %7, 1
  %9 = getelementptr string, string* %6, i32 %8  
  %10 = load i32**, i32*** @a
  %11 = load i32, i32* %1
  %12 = add i32 %11, 1
  %13 = getelementptr i32*, i32** %10, i32 %12  
  %14 = load i32*, i32** %13
  %15 = getelementptr i32, i32* %14, i32 1  
  %16 = load i32, i32* %15
  %17 = call string @toString(i32 %16  )
  store string %17, string* %9
  store i32 0, i32* %2
  br label %5
5:
  %18 = load i32, i32* %2
  %19 = load i32, i32* %1
  %20 = icmp slt i32 %18, %19
  br i8 %20, label %6, label %8
6:
  %21 = load i32, i32* %2
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i8 %23, label %9, label %10
9:
  %24 = load i32, i32* %5
  %25 = load i32**, i32*** @a
  %26 = load i32, i32* %1
  %27 = add i32 %26, 1
  %28 = getelementptr i32*, i32** %25, i32 %27  
  %29 = load i32*, i32** %28
  %30 = getelementptr i32, i32* %29, i32 1  
  %31 = load i32, i32* %30
  %32 = add i32 %24, %31
  store i32 %32, i32* %5
  br label %11
10:
  br label %11
11:
  %33 = load i32, i32* %2
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 1
  br i8 %35, label %12, label %13
12:
  %36 = load i32, i32* %5
  %37 = load i32**, i32*** @a
  %38 = load i32, i32* %1
  %39 = add i32 %38, 1
  %40 = getelementptr i32*, i32** %37, i32 %39  
  %41 = load i32*, i32** %40
  %42 = getelementptr i32, i32* %41, i32 30  
  %43 = load i32, i32* %42
  %44 = add i32 %36, %43
  store i32 %44, i32* %5
  br label %14
13:
  br label %14
14:
  br label %7
7:
  %45 = load i32, i32* %2
  %46 = add i32 %45, 1
  store i32 %46, i32* %2
  br label %5
8:
  %47 = call string @string_add(string $str1  string $str2  )
  call void @println(string %47  )
  br label %3
3:
  %48 = load i32, i32* %1
  %49 = add i32 %48, 1
  store i32 %49, i32* %1
  br label %1
4:
  ret 0
}

