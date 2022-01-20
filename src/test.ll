define void @origin(i32 %1  ) {
  %2 = alloca i32
0:
  store i32 %1, i32* %2
  store i32 0, i32* @head
  store i32 0, i32* @tail
  %4 = load i32, i32* %2
  %5 = mul i32 %4, 4
  %6 = add i32 %5, 4
  %3 = call i32* @malloc(i32 %6  )
  store i32 %4, i32* %3
  store i32** %3, i32*** @step
  store i32 0, i32* @i
  br label %1
1:
  %7 = load i32, i32* @i
  %8 = load i32, i32* %2
  %9 = icmp slt i32 %7, %8
  br i8 %9, label %2, label %4
2:
  %10 = load i32**, i32*** @step
  %11 = load i32, i32* @i
  %12 = add i32 %11, 1
  %13 = getelementptr i32*, i32** %10, i32 %12  
  %15 = load i32, i32* %2
  %16 = mul i32 %15, 4
  %17 = add i32 %16, 4
  %14 = call i32* @malloc(i32 %17  )
  store i32 %15, i32* %14
  store i32* %14, i32** %13
  store i32 0, i32* @j
  br label %5
5:
  %18 = load i32, i32* @j
  %19 = load i32, i32* %2
  %20 = icmp slt i32 %18, %19
  br i8 %20, label %6, label %8
6:
  %21 = load i32**, i32*** @step
  %22 = load i32, i32* @i
  %23 = add i32 %22, 1
  %24 = getelementptr i32*, i32** %21, i32 %23  
  %25 = load i32*, i32** %24
  %26 = load i32, i32* @j
  %27 = add i32 %26, 1
  %28 = getelementptr i32, i32* %25, i32 %27  
  store i32 0, i32* %28
  br label %7
7:
  %29 = load i32, i32* @j
  %30 = add i32 %29, 1
  store i32 %30, i32* @j
  br label %5
8:
  br label %3
3:
  %31 = load i32, i32* @i
  %32 = add i32 %31, 1
  store i32 %32, i32* @i
  br label %1
4:
}

define i8 @check(i32 %1  ) {
  %2 = alloca i32
0:
  store i32 %1, i32* %2
  %3 = load i32, i32* %2
  %4 = load i32, i32* @N
  %5 = icmp slt i32 %3, %4
  %6 = load i32, i32* %2
  %7 = icmp sge i32 %6, 0
  %8 = and i8 %5, %7
  ret i8 %8
}

define void @addList(i32 %1  i32 %2  ) {
  %3 = alloca i32
  %4 = alloca i32
0:
  store i32 %1, i32* %3
  store i32 %2, i32* %4
  %5 = load i32, i32* %3
  %6 = call i8 @check(i32 %5  )
  %7 = load i32, i32* %4
  %8 = call i8 @check(i32 %7  )
  %9 = and i8 %6, %8
  %10 = load i32**, i32*** @step
  %11 = load i32, i32* %3
  %12 = add i32 %11, 1
  %13 = getelementptr i32*, i32** %10, i32 %12  
  %14 = load i32*, i32** %13
  %15 = load i32, i32* %4
  %16 = add i32 %15, 1
  %17 = getelementptr i32, i32* %14, i32 %16  
  %18 = load i32, i32* %17
  %19 = icmp eq i32 %18, -1
  %20 = and i8 %9, %19
  br i8 %20, label %1, label %2
1:
  %21 = load i32, i32* @tail
  %22 = add i32 %21, 1
  store i32 %22, i32* @tail
  %23 = load i32*, i32** @xlist
  %24 = load i32, i32* @tail
  %25 = add i32 %24, 1
  %26 = getelementptr i32, i32* %23, i32 %25  
  %27 = load i32, i32* %3
  store i32 %27, i32* %26
  %28 = load i32*, i32** @ylist
  %29 = load i32, i32* @tail
  %30 = add i32 %29, 1
  %31 = getelementptr i32, i32* %28, i32 %30  
  %32 = load i32, i32* %4
  store i32 %32, i32* %31
  %33 = load i32**, i32*** @step
  %34 = load i32, i32* %3
  %35 = add i32 %34, 1
  %36 = getelementptr i32*, i32** %33, i32 %35  
  %37 = load i32*, i32** %36
  %38 = load i32, i32* %4
  %39 = add i32 %38, 1
  %40 = getelementptr i32, i32* %37, i32 %39  
  %41 = load i32, i32* @now
  %42 = add i32 %41, 1
  store i32 %42, i32* %40
  %43 = load i32, i32* %3
  %44 = load i32, i32* @targetx
  %45 = icmp eq i32 %43, %44
  %46 = load i32, i32* %4
  %47 = load i32, i32* @targety
  %48 = icmp eq i32 %46, %47
  %49 = and i8 %45, %48
  br i8 %49, label %4, label %5
4:
  store i32 1, i32* @ok
  br label %6
5:
  br label %6
6:
  br label %3
2:
  br label %3
3:
}

@N = global i32 0
@head = global i32 0
@startx = global i32 0
@starty = global i32 0
@targetx = global i32 0
@targety = global i32 0
@x = global i32 0
@y = global i32 0
@xlist = global i32* 0
@ylist = global i32* 0
@tail = global i32 0
@ok = global i32 0
@now = global i32 0
@dx = global i32* 0
@dy = global i32* 0
@step = global i32** 0
@i = global i32 0
@j = global i32 0
$str1 = global string "no solution!\n"
define void @globalinit() {
0:
  %1 = load i32, i32* @N
  %2 = load i32, i32* @head
  %3 = load i32, i32* @startx
  %4 = load i32, i32* @starty
  %5 = load i32, i32* @targetx
  %6 = load i32, i32* @targety
  %7 = load i32, i32* @x
  %8 = load i32, i32* @y
  %9 = load i32*, i32** @xlist
  %10 = call i32* @malloc(i32 48004  )
  store i32 12000, i32* %10
  store i32* %10, i32** @xlist
  %11 = load i32*, i32** @ylist
  %12 = call i32* @malloc(i32 48004  )
  store i32 12000, i32* %12
  store i32* %12, i32** @ylist
  %13 = load i32, i32* @tail
  %14 = load i32, i32* @ok
  %15 = load i32, i32* @now
  %16 = load i32*, i32** @dx
  %17 = call i32* @malloc(i32 36  )
  store i32 8, i32* %17
  store i32* %17, i32** @dx
  %18 = load i32*, i32** @dy
  %19 = call i32* @malloc(i32 40  )
  store i32 9, i32* %19
  store i32* %19, i32** @dy
  %20 = load i32**, i32*** @step
  %21 = load i32, i32* @i
  %22 = load i32, i32* @j
}

define i32 @main() {
0:
  call void @origin(i32 106  )
  %1 = call i32 @getInt()
  store i32 %1, i32* @N
  %2 = load i32, i32* @N
  %3 = sub i32 %2, 1
  store i32 %3, i32* @targety
  %4 = load i32, i32* @targety
  store i32 %4, i32* @targetx
  store i32 0, i32* @i
  br label %1
1:
  %5 = load i32, i32* @i
  %6 = load i32, i32* @N
  %7 = icmp slt i32 %5, %6
  br i8 %7, label %2, label %4
2:
  store i32 0, i32* @j
  br label %5
5:
  %8 = load i32, i32* @j
  %9 = load i32, i32* @N
  %10 = icmp slt i32 %8, %9
  br i8 %10, label %6, label %8
6:
  %11 = load i32**, i32*** @step
  %12 = load i32, i32* @i
  %13 = add i32 %12, 1
  %14 = getelementptr i32*, i32** %11, i32 %13  
  %15 = load i32*, i32** %14
  %16 = load i32, i32* @j
  %17 = add i32 %16, 1
  %18 = getelementptr i32, i32* %15, i32 %17  
  store i32 -1, i32* %18
  br label %7
7:
  %19 = load i32, i32* @j
  %20 = add i32 %19, 1
  store i32 %20, i32* @j
  br label %5
8:
  br label %3
3:
  %21 = load i32, i32* @i
  %22 = add i32 %21, 1
  store i32 %22, i32* @i
  br label %1
4:
  %23 = load i32*, i32** @dx
  %24 = getelementptr i32, i32* %23, i32 1  
  store i32 -2, i32* %24
  %25 = load i32*, i32** @dy
  %26 = getelementptr i32, i32* %25, i32 1  
  store i32 -1, i32* %26
  %27 = load i32*, i32** @dx
  %28 = getelementptr i32, i32* %27, i32 2  
  store i32 -2, i32* %28
  %29 = load i32*, i32** @dy
  %30 = getelementptr i32, i32* %29, i32 2  
  store i32 1, i32* %30
  %31 = load i32*, i32** @dx
  %32 = getelementptr i32, i32* %31, i32 3  
  store i32 2, i32* %32
  %33 = load i32*, i32** @dy
  %34 = getelementptr i32, i32* %33, i32 3  
  store i32 -1, i32* %34
  %35 = load i32*, i32** @dx
  %36 = getelementptr i32, i32* %35, i32 4  
  store i32 2, i32* %36
  %37 = load i32*, i32** @dy
  %38 = getelementptr i32, i32* %37, i32 4  
  store i32 1, i32* %38
  %39 = load i32*, i32** @dx
  %40 = getelementptr i32, i32* %39, i32 5  
  store i32 -1, i32* %40
  %41 = load i32*, i32** @dy
  %42 = getelementptr i32, i32* %41, i32 5  
  store i32 -2, i32* %42
  %43 = load i32*, i32** @dx
  %44 = getelementptr i32, i32* %43, i32 6  
  store i32 -1, i32* %44
  %45 = load i32*, i32** @dy
  %46 = getelementptr i32, i32* %45, i32 6  
  store i32 2, i32* %46
  %47 = load i32*, i32** @dx
  %48 = getelementptr i32, i32* %47, i32 7  
  store i32 1, i32* %48
  %49 = load i32*, i32** @dy
  %50 = getelementptr i32, i32* %49, i32 7  
  store i32 -2, i32* %50
  %51 = load i32*, i32** @dx
  %52 = getelementptr i32, i32* %51, i32 8  
  store i32 1, i32* %52
  %53 = load i32*, i32** @dy
  %54 = getelementptr i32, i32* %53, i32 8  
  store i32 2, i32* %54
  br label %9
9:
  %55 = load i32, i32* @head
  %56 = load i32, i32* @tail
  %57 = icmp sle i32 %55, %56
  br i8 %57, label %10, label %11
10:
  %58 = load i32*, i32** @xlist
  %59 = load i32, i32* @head
  %60 = add i32 %59, 1
  %61 = getelementptr i32, i32* %58, i32 %60  
  %62 = load i32, i32* %61
  store i32 %62, i32* @x
  %63 = load i32*, i32** @ylist
  %64 = load i32, i32* @head
  %65 = add i32 %64, 1
  %66 = getelementptr i32, i32* %63, i32 %65  
  %67 = load i32, i32* %66
  store i32 %67, i32* @y
  %68 = load i32**, i32*** @step
  %69 = load i32, i32* @x
  %70 = add i32 %69, 1
  %71 = getelementptr i32*, i32** %68, i32 %70  
  %72 = load i32*, i32** %71
  %73 = load i32, i32* @y
  %74 = add i32 %73, 1
  %75 = getelementptr i32, i32* %72, i32 %74  
  %76 = load i32, i32* %75
  store i32 %76, i32* @now
  store i32 0, i32* @j
  br label %12
12:
  %77 = load i32, i32* @j
  %78 = icmp slt i32 %77, 8
  br i8 %78, label %13, label %15
13:
  %79 = load i32, i32* @x
  %80 = load i32*, i32** @dx
  %81 = load i32, i32* @j
  %82 = add i32 %81, 1
  %83 = getelementptr i32, i32* %80, i32 %82  
  %84 = load i32, i32* %83
  %85 = add i32 %79, %84
  %86 = load i32, i32* @y
  %87 = load i32*, i32** @dy
  %88 = load i32, i32* @j
  %89 = add i32 %88, 1
  %90 = getelementptr i32, i32* %87, i32 %89  
  %91 = load i32, i32* %90
  %92 = add i32 %86, %91
  call void @addList(i32 %85  i32 %92  )
  br label %14
14:
  %93 = load i32, i32* @j
  %94 = add i32 %93, 1
  store i32 %94, i32* @j
  br label %12
15:
  %95 = load i32, i32* @ok
  %96 = icmp eq i32 %95, 1
  br i8 %96, label %16, label %17
16:
  br label %11
  br label %18
17:
  br label %18
18:
  %97 = load i32, i32* @head
  %98 = add i32 %97, 1
  store i32 %98, i32* @head
  br label %9
11:
  %99 = load i32, i32* @ok
  %100 = icmp eq i32 %99, 1
  br i8 %100, label %19, label %20
19:
  %101 = load i32**, i32*** @step
  %102 = load i32, i32* @targetx
  %103 = add i32 %102, 1
  %104 = getelementptr i32*, i32** %101, i32 %103  
  %105 = load i32*, i32** %104
  %106 = load i32, i32* @targety
  %107 = add i32 %106, 1
  %108 = getelementptr i32, i32* %105, i32 %107  
  %109 = load i32, i32* %108
  %110 = call string @toString(i32 %109  )
  call void @println(string %110  )
  br label %21
20:
  call void @print(string $str1  )
  br label %21
21:
  ret 0
}

