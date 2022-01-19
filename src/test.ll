@n = global i32 0
@m = global i32 0
@a = global i32 0
define void @globalinit() {
0:
  %1 = load i32, i32* @n
  %2 = load i32, i32* @m
  %3 = load i32, i32* @a
}

define i32 @main() {
0:
  %1 = call i32 @getInt()
  store i32 %1, i32* @n
  %2 = call i32 @getInt()
  store i32 %2, i32* @m
  %3 = call i32 @getInt()
  store i32 %3, i32* @a
  %4 = load i32, i32* @m
  %5 = load i32, i32* @a
  %6 = add i32 %4, %5
  %7 = sub i32 %6, 1
  %8 = load i32, i32* @a
  %9 = div i32 %7, %8
  %10 = load i32, i32* @n
  %11 = load i32, i32* @a
  %12 = add i32 %10, %11
  %13 = sub i32 %12, 1
  %14 = load i32, i32* @a
  %15 = div i32 %13, %14
  %16 = mul i32 %9, %15
  %17 = call string @toString(i32 %16  )
  call void @print(string %17  )
  ret 0
}

