define void @globalinit() {
0:
}

define i32 @main() {
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
0:
  store i32 5, i32* %1
  %4 = load i32, i32* %1
  %5 = add i32 %4, 1
  store i32 %5, i32* %1
  store i32 %4, i32* %3
  %6 = load i32, i32* %3
  store i32 %6, i32* %2
  %7 = load i32, i32* %2
  %8 = load i32, i32* %3
  %9 = add i32 %7, %8
  %10 = load i32, i32* %1
  %11 = add i32 %9, %10
  ret i32 %11
}

