@n = global i32 0
@p = global i32 0
@k = global i32 0
@i = global i32 0
$str1 = global string "<< "
$str2 = global string "("
$str3 = global string ") "
$str4 = global string " "
$str5 = global string ">> "
define void @globalinit() {
0:
  %1 = load i32, i32* @n
  %2 = load i32, i32* @p
  %3 = load i32, i32* @k
  %4 = load i32, i32* @i
}

define i32 @main() {
  %18 = alloca i8
0:
  %1 = call i32 @getInt()
  store i32 %1, i32* @n
  %2 = call i32 @getInt()
  store i32 %2, i32* @p
  %3 = call i32 @getInt()
  store i32 %3, i32* @k
  %4 = load i32, i32* @p
  %5 = load i32, i32* @k
  %6 = sub i32 %4, %5
  %7 = icmp sgt i32 %6, 1
  br i8 %7, label %1, label %2
1:
  call void @print(string $str1  )
  br label %3
2:
  br label %3
3:
  %8 = load i32, i32* @p
  %9 = load i32, i32* @k
  %10 = sub i32 %8, %9
  store i32 %10, i32* @i
  br label %4
4:
  %11 = load i32, i32* @i
  %12 = load i32, i32* @p
  %13 = load i32, i32* @k
  %14 = add i32 %12, %13
  %15 = icmp sle i32 %11, %14
  br i8 %15, label %5, label %7
5:
  %16 = load i32, i32* @i
  %17 = icmp sle i32 1, %16
  %19 = xor i8 %17, true
  store i8 %17, i8* %18
  br i8 %19, label %12, label %11
11:
  %20 = load i32, i32* @i
  %21 = load i32, i32* @n
  %22 = icmp sle i32 %20, %21
  store i8 %22, i8* %18
  br label %12
12:
  %23 = load i8, i8* %18
  br i8 %23, label %8, label %9
8:
  %24 = load i32, i32* @i
  %25 = load i32, i32* @p
  %26 = icmp eq i32 %24, %25
  br i8 %26, label %13, label %14
13:
  call void @print(string $str2  )
  %27 = load i32, i32* @i
  %28 = call string @toString(i32 %27  )
  call void @print(string %28  )
  call void @print(string $str3  )
  br label %15
14:
  %29 = load i32, i32* @i
  call void @printInt(i32 %29  )
  call void @print(string $str4  )
  br label %15
15:
  br label %10
9:
  br label %10
10:
  br label %6
6:
  %30 = load i32, i32* @i
  %31 = add i32 %30, 1
  store i32 %31, i32* @i
  br label %4
7:
  %32 = load i32, i32* @p
  %33 = load i32, i32* @k
  %34 = add i32 %32, %33
  %35 = load i32, i32* @n
  %36 = icmp slt i32 %34, %35
  br i8 %36, label %16, label %17
16:
  call void @print(string $str5  )
  br label %18
17:
  br label %18
18:
  ret 0
}

