define i32 @gcd(i32 %1  i32 %2  i32 %3  i32 %4  i32 %5  i32 %6  i32 %7  i32 %8  i32 %9  i32 %10  i32 %11  i32 %12  i32 %13  i32 %14  i32 %15  i32 %16  i32 %17  i32 %18  i32 %19  i32 %20  i32 %21  i32 %22  i32 %23  i32 %24  i32 %25  i32 %26  i32 %27  i32 %28  i32 %29  i32 %30  i32 %31  i32 %32  ) {
  %33 = alloca i32
  %34 = alloca i32
  %35 = alloca i32
  %36 = alloca i32
  %37 = alloca i32
  %38 = alloca i32
  %39 = alloca i32
  %40 = alloca i32
  %41 = alloca i32
  %42 = alloca i32
  %43 = alloca i32
  %44 = alloca i32
  %45 = alloca i32
  %46 = alloca i32
  %47 = alloca i32
  %48 = alloca i32
  %49 = alloca i32
  %50 = alloca i32
  %51 = alloca i32
  %52 = alloca i32
  %53 = alloca i32
  %54 = alloca i32
  %55 = alloca i32
  %56 = alloca i32
  %57 = alloca i32
  %58 = alloca i32
  %59 = alloca i32
  %60 = alloca i32
  %61 = alloca i32
  %62 = alloca i32
  %63 = alloca i32
  %64 = alloca i32
  %65 = alloca i32
  %66 = alloca i32
0:
  store i32 %1, i32* %33
  store i32 %2, i32* %34
  store i32 %3, i32* %35
  store i32 %4, i32* %36
  store i32 %5, i32* %37
  store i32 %6, i32* %38
  store i32 %7, i32* %39
  store i32 %8, i32* %40
  store i32 %9, i32* %41
  store i32 %10, i32* %42
  store i32 %11, i32* %43
  store i32 %12, i32* %44
  store i32 %13, i32* %45
  store i32 %14, i32* %46
  store i32 %15, i32* %47
  store i32 %16, i32* %48
  store i32 %17, i32* %49
  store i32 %18, i32* %50
  store i32 %19, i32* %51
  store i32 %20, i32* %52
  store i32 %21, i32* %53
  store i32 %22, i32* %54
  store i32 %23, i32* %55
  store i32 %24, i32* %56
  store i32 %25, i32* %57
  store i32 %26, i32* %58
  store i32 %27, i32* %59
  store i32 %28, i32* %60
  store i32 %29, i32* %61
  store i32 %30, i32* %62
  store i32 %31, i32* %63
  store i32 %32, i32* %64
  store i32 0, i32* %65
  br label %1
1:
  %67 = load i32, i32* %65
  %68 = icmp sle i32 %67, 10
  br i8 %68, label %2, label %4
2:
  %69 = load i32, i32* %35
  %70 = load i32, i32* %36
  %71 = add i32 %69, %70
  %72 = load i32, i32* %37
  %73 = add i32 %71, %72
  %74 = load i32, i32* %38
  %75 = add i32 %73, %74
  %76 = load i32, i32* %39
  %77 = add i32 %75, %76
  %78 = load i32, i32* %40
  %79 = add i32 %77, %78
  %80 = load i32, i32* %41
  %81 = add i32 %79, %80
  %82 = load i32, i32* %42
  %83 = add i32 %81, %82
  %84 = load i32, i32* %43
  %85 = add i32 %83, %84
  %86 = load i32, i32* %44
  %87 = add i32 %85, %86
  %88 = load i32, i32* %45
  %89 = add i32 %87, %88
  %90 = load i32, i32* %46
  %91 = add i32 %89, %90
  %92 = load i32, i32* %47
  %93 = add i32 %91, %92
  %94 = load i32, i32* %48
  %95 = add i32 %93, %94
  %96 = load i32, i32* %49
  %97 = add i32 %95, %96
  %98 = load i32, i32* %50
  %99 = add i32 %97, %98
  %100 = load i32, i32* %51
  %101 = add i32 %99, %100
  %102 = load i32, i32* %52
  %103 = add i32 %101, %102
  %104 = load i32, i32* %53
  %105 = add i32 %103, %104
  %106 = load i32, i32* %54
  %107 = add i32 %105, %106
  %108 = load i32, i32* %55
  %109 = add i32 %107, %108
  %110 = load i32, i32* %56
  %111 = add i32 %109, %110
  %112 = load i32, i32* %57
  %113 = add i32 %111, %112
  %114 = load i32, i32* %58
  %115 = add i32 %113, %114
  %116 = load i32, i32* %59
  %117 = add i32 %115, %116
  %118 = load i32, i32* %60
  %119 = add i32 %117, %118
  %120 = load i32, i32* %61
  %121 = add i32 %119, %120
  %122 = load i32, i32* %62
  %123 = add i32 %121, %122
  %124 = load i32, i32* %63
  %125 = add i32 %123, %124
  %126 = load i32, i32* %64
  %127 = add i32 %125, %126
  %128 = srem i32 %127, 100
  store i32 %128, i32* %66
  br label %3
3:
  %129 = load i32, i32* %65
  %130 = add i32 %129, 1
  store i32 %130, i32* %65
  br label %1
4:
  %131 = load i32, i32* %33
  %132 = load i32, i32* %34
  %133 = srem i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i8 %134, label %5, label %6
5:
  %135 = load i32, i32* %34
  ret i32 %135
  br label %7
6:
  %136 = load i32, i32* %34
  %137 = load i32, i32* %33
  %138 = load i32, i32* %34
  %139 = srem i32 %137, %138
  %140 = load i32, i32* %66
  %141 = call i32 @gcd(i32 10  i32 68  i32 0  i32 2  i32 4  i32 6  i32 8  i32 10  i32 12  i32 14  i32 16  i32 18  i32 20  i32 22  i32 24  i32 26  i32 28  i32 30  i32 32  i32 34  i32 36  i32 38  i32 40  i32 42  i32 44  i32 46  i32 48  i32 50  i32 52  i32 54  i32 56  i32 58  )
  %142 = load i32, i32* %37
  %143 = load i32, i32* %38
  %144 = load i32, i32* %39
  %145 = load i32, i32* %40
  %146 = load i32, i32* %41
  %147 = load i32, i32* %42
  %148 = load i32, i32* %43
  %149 = load i32, i32* %44
  %150 = load i32, i32* %45
  %151 = load i32, i32* %46
  %152 = load i32, i32* %47
  %153 = load i32, i32* %48
  %154 = load i32, i32* %49
  %155 = load i32, i32* %50
  %156 = load i32, i32* %51
  %157 = load i32, i32* %52
  %158 = load i32, i32* %53
  %159 = load i32, i32* %54
  %160 = load i32, i32* %55
  %161 = load i32, i32* %56
  %162 = load i32, i32* %57
  %163 = load i32, i32* %58
  %164 = load i32, i32* %59
  %165 = load i32, i32* %60
  %166 = load i32, i32* %61
  %167 = load i32, i32* %62
  %168 = load i32, i32* %63
  %169 = load i32, i32* %64
  %170 = call i32 @gcd1(i32 %136  i32 %139  i32 %140  i32 %141  i32 %142  i32 %143  i32 %144  i32 %145  i32 %146  i32 %147  i32 %148  i32 %149  i32 %150  i32 %151  i32 %152  i32 %153  i32 %154  i32 %155  i32 %156  i32 %157  i32 %158  i32 %159  i32 %160  i32 %161  i32 %162  i32 %163  i32 %164  i32 %165  i32 %166  i32 %167  i32 %168  i32 %169  )
  ret i32 %170
  br label %7
7:
}

define i32 @gcd1(i32 %1  i32 %2  i32 %3  i32 %4  i32 %5  i32 %6  i32 %7  i32 %8  i32 %9  i32 %10  i32 %11  i32 %12  i32 %13  i32 %14  i32 %15  i32 %16  i32 %17  i32 %18  i32 %19  i32 %20  i32 %21  i32 %22  i32 %23  i32 %24  i32 %25  i32 %26  i32 %27  i32 %28  i32 %29  i32 %30  i32 %31  i32 %32  ) {
  %33 = alloca i32
  %34 = alloca i32
  %35 = alloca i32
  %36 = alloca i32
  %37 = alloca i32
  %38 = alloca i32
  %39 = alloca i32
  %40 = alloca i32
  %41 = alloca i32
  %42 = alloca i32
  %43 = alloca i32
  %44 = alloca i32
  %45 = alloca i32
  %46 = alloca i32
  %47 = alloca i32
  %48 = alloca i32
  %49 = alloca i32
  %50 = alloca i32
  %51 = alloca i32
  %52 = alloca i32
  %53 = alloca i32
  %54 = alloca i32
  %55 = alloca i32
  %56 = alloca i32
  %57 = alloca i32
  %58 = alloca i32
  %59 = alloca i32
  %60 = alloca i32
  %61 = alloca i32
  %62 = alloca i32
  %63 = alloca i32
  %64 = alloca i32
  %65 = alloca i32
0:
  store i32 %1, i32* %33
  store i32 %2, i32* %34
  store i32 %3, i32* %35
  store i32 %4, i32* %36
  store i32 %5, i32* %37
  store i32 %6, i32* %38
  store i32 %7, i32* %39
  store i32 %8, i32* %40
  store i32 %9, i32* %41
  store i32 %10, i32* %42
  store i32 %11, i32* %43
  store i32 %12, i32* %44
  store i32 %13, i32* %45
  store i32 %14, i32* %46
  store i32 %15, i32* %47
  store i32 %16, i32* %48
  store i32 %17, i32* %49
  store i32 %18, i32* %50
  store i32 %19, i32* %51
  store i32 %20, i32* %52
  store i32 %21, i32* %53
  store i32 %22, i32* %54
  store i32 %23, i32* %55
  store i32 %24, i32* %56
  store i32 %25, i32* %57
  store i32 %26, i32* %58
  store i32 %27, i32* %59
  store i32 %28, i32* %60
  store i32 %29, i32* %61
  store i32 %30, i32* %62
  store i32 %31, i32* %63
  store i32 %32, i32* %64
  %66 = load i32, i32* %35
  %67 = load i32, i32* %36
  %68 = add i32 %66, %67
  %69 = load i32, i32* %37
  %70 = add i32 %68, %69
  %71 = load i32, i32* %38
  %72 = add i32 %70, %71
  %73 = load i32, i32* %39
  %74 = add i32 %72, %73
  %75 = load i32, i32* %40
  %76 = add i32 %74, %75
  %77 = load i32, i32* %41
  %78 = add i32 %76, %77
  %79 = load i32, i32* %42
  %80 = add i32 %78, %79
  %81 = load i32, i32* %43
  %82 = add i32 %80, %81
  %83 = load i32, i32* %44
  %84 = add i32 %82, %83
  %85 = load i32, i32* %45
  %86 = add i32 %84, %85
  %87 = load i32, i32* %46
  %88 = add i32 %86, %87
  %89 = load i32, i32* %47
  %90 = add i32 %88, %89
  %91 = load i32, i32* %48
  %92 = add i32 %90, %91
  %93 = load i32, i32* %49
  %94 = add i32 %92, %93
  %95 = load i32, i32* %50
  %96 = add i32 %94, %95
  %97 = load i32, i32* %51
  %98 = add i32 %96, %97
  %99 = load i32, i32* %52
  %100 = add i32 %98, %99
  %101 = load i32, i32* %53
  %102 = add i32 %100, %101
  %103 = load i32, i32* %54
  %104 = add i32 %102, %103
  %105 = load i32, i32* %55
  %106 = add i32 %104, %105
  %107 = load i32, i32* %56
  %108 = add i32 %106, %107
  %109 = load i32, i32* %57
  %110 = add i32 %108, %109
  %111 = load i32, i32* %58
  %112 = add i32 %110, %111
  %113 = load i32, i32* %59
  %114 = add i32 %112, %113
  %115 = load i32, i32* %60
  %116 = add i32 %114, %115
  %117 = load i32, i32* %61
  %118 = add i32 %116, %117
  %119 = load i32, i32* %62
  %120 = add i32 %118, %119
  %121 = load i32, i32* %63
  %122 = add i32 %120, %121
  %123 = load i32, i32* %64
  %124 = add i32 %122, %123
  %125 = srem i32 %124, 100
  store i32 %125, i32* %65
  %126 = load i32, i32* %33
  %127 = load i32, i32* %34
  %128 = srem i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i8 %129, label %1, label %2
1:
  %130 = load i32, i32* %34
  ret i32 %130
  br label %3
2:
  %131 = load i32, i32* %34
  %132 = load i32, i32* %33
  %133 = load i32, i32* %34
  %134 = srem i32 %132, %133
  %135 = load i32, i32* %65
  %136 = load i32, i32* %36
  %137 = load i32, i32* %37
  %138 = load i32, i32* %38
  %139 = load i32, i32* %39
  %140 = load i32, i32* %40
  %141 = load i32, i32* %41
  %142 = load i32, i32* %42
  %143 = load i32, i32* %43
  %144 = load i32, i32* %44
  %145 = load i32, i32* %45
  %146 = load i32, i32* %46
  %147 = load i32, i32* %47
  %148 = load i32, i32* %48
  %149 = load i32, i32* %49
  %150 = load i32, i32* %50
  %151 = load i32, i32* %51
  %152 = load i32, i32* %52
  %153 = load i32, i32* %53
  %154 = load i32, i32* %54
  %155 = load i32, i32* %55
  %156 = load i32, i32* %56
  %157 = load i32, i32* %57
  %158 = load i32, i32* %58
  %159 = load i32, i32* %59
  %160 = load i32, i32* %60
  %161 = load i32, i32* %61
  %162 = load i32, i32* %62
  %163 = load i32, i32* %63
  %164 = load i32, i32* %64
  %165 = call i32 @gcd2(i32 %131  i32 %134  i32 %135  i32 %136  i32 %137  i32 %138  i32 %139  i32 %140  i32 %141  i32 %142  i32 %143  i32 %144  i32 %145  i32 %146  i32 %147  i32 %148  i32 %149  i32 %150  i32 %151  i32 %152  i32 %153  i32 %154  i32 %155  i32 %156  i32 %157  i32 %158  i32 %159  i32 %160  i32 %161  i32 %162  i32 %163  i32 %164  )
  ret i32 %165
  br label %3
3:
}

define i32 @gcd2(i32 %1  i32 %2  i32 %3  i32 %4  i32 %5  i32 %6  i32 %7  i32 %8  i32 %9  i32 %10  i32 %11  i32 %12  i32 %13  i32 %14  i32 %15  i32 %16  i32 %17  i32 %18  i32 %19  i32 %20  i32 %21  i32 %22  i32 %23  i32 %24  i32 %25  i32 %26  i32 %27  i32 %28  i32 %29  i32 %30  i32 %31  i32 %32  ) {
  %33 = alloca i32
  %34 = alloca i32
  %35 = alloca i32
  %36 = alloca i32
  %37 = alloca i32
  %38 = alloca i32
  %39 = alloca i32
  %40 = alloca i32
  %41 = alloca i32
  %42 = alloca i32
  %43 = alloca i32
  %44 = alloca i32
  %45 = alloca i32
  %46 = alloca i32
  %47 = alloca i32
  %48 = alloca i32
  %49 = alloca i32
  %50 = alloca i32
  %51 = alloca i32
  %52 = alloca i32
  %53 = alloca i32
  %54 = alloca i32
  %55 = alloca i32
  %56 = alloca i32
  %57 = alloca i32
  %58 = alloca i32
  %59 = alloca i32
  %60 = alloca i32
  %61 = alloca i32
  %62 = alloca i32
  %63 = alloca i32
  %64 = alloca i32
  %65 = alloca i32
0:
  store i32 %1, i32* %33
  store i32 %2, i32* %34
  store i32 %3, i32* %35
  store i32 %4, i32* %36
  store i32 %5, i32* %37
  store i32 %6, i32* %38
  store i32 %7, i32* %39
  store i32 %8, i32* %40
  store i32 %9, i32* %41
  store i32 %10, i32* %42
  store i32 %11, i32* %43
  store i32 %12, i32* %44
  store i32 %13, i32* %45
  store i32 %14, i32* %46
  store i32 %15, i32* %47
  store i32 %16, i32* %48
  store i32 %17, i32* %49
  store i32 %18, i32* %50
  store i32 %19, i32* %51
  store i32 %20, i32* %52
  store i32 %21, i32* %53
  store i32 %22, i32* %54
  store i32 %23, i32* %55
  store i32 %24, i32* %56
  store i32 %25, i32* %57
  store i32 %26, i32* %58
  store i32 %27, i32* %59
  store i32 %28, i32* %60
  store i32 %29, i32* %61
  store i32 %30, i32* %62
  store i32 %31, i32* %63
  store i32 %32, i32* %64
  %66 = load i32, i32* %35
  %67 = load i32, i32* %36
  %68 = add i32 %66, %67
  %69 = load i32, i32* %37
  %70 = add i32 %68, %69
  %71 = load i32, i32* %38
  %72 = add i32 %70, %71
  %73 = load i32, i32* %39
  %74 = add i32 %72, %73
  %75 = load i32, i32* %40
  %76 = add i32 %74, %75
  %77 = load i32, i32* %41
  %78 = add i32 %76, %77
  %79 = load i32, i32* %42
  %80 = add i32 %78, %79
  %81 = load i32, i32* %43
  %82 = add i32 %80, %81
  %83 = load i32, i32* %44
  %84 = add i32 %82, %83
  %85 = load i32, i32* %45
  %86 = add i32 %84, %85
  %87 = load i32, i32* %46
  %88 = add i32 %86, %87
  %89 = load i32, i32* %47
  %90 = add i32 %88, %89
  %91 = load i32, i32* %48
  %92 = add i32 %90, %91
  %93 = load i32, i32* %49
  %94 = add i32 %92, %93
  %95 = load i32, i32* %50
  %96 = add i32 %94, %95
  %97 = load i32, i32* %51
  %98 = add i32 %96, %97
  %99 = load i32, i32* %52
  %100 = add i32 %98, %99
  %101 = load i32, i32* %53
  %102 = add i32 %100, %101
  %103 = load i32, i32* %54
  %104 = add i32 %102, %103
  %105 = load i32, i32* %55
  %106 = add i32 %104, %105
  %107 = load i32, i32* %56
  %108 = add i32 %106, %107
  %109 = load i32, i32* %57
  %110 = add i32 %108, %109
  %111 = load i32, i32* %58
  %112 = add i32 %110, %111
  %113 = load i32, i32* %59
  %114 = add i32 %112, %113
  %115 = load i32, i32* %60
  %116 = add i32 %114, %115
  %117 = load i32, i32* %61
  %118 = add i32 %116, %117
  %119 = load i32, i32* %62
  %120 = add i32 %118, %119
  %121 = load i32, i32* %63
  %122 = add i32 %120, %121
  %123 = load i32, i32* %64
  %124 = add i32 %122, %123
  %125 = srem i32 %124, 100
  store i32 %125, i32* %65
  %126 = load i32, i32* %33
  %127 = load i32, i32* %34
  %128 = srem i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i8 %129, label %1, label %2
1:
  %130 = load i32, i32* %34
  ret i32 %130
  br label %3
2:
  %131 = load i32, i32* %34
  %132 = load i32, i32* %33
  %133 = load i32, i32* %34
  %134 = srem i32 %132, %133
  %135 = load i32, i32* %35
  %136 = load i32, i32* %36
  %137 = load i32, i32* %37
  %138 = load i32, i32* %38
  %139 = load i32, i32* %39
  %140 = load i32, i32* %40
  %141 = load i32, i32* %41
  %142 = load i32, i32* %42
  %143 = load i32, i32* %43
  %144 = load i32, i32* %44
  %145 = load i32, i32* %45
  %146 = load i32, i32* %46
  %147 = load i32, i32* %47
  %148 = load i32, i32* %48
  %149 = load i32, i32* %49
  %150 = load i32, i32* %50
  %151 = load i32, i32* %51
  %152 = load i32, i32* %52
  %153 = load i32, i32* %53
  %154 = load i32, i32* %54
  %155 = load i32, i32* %55
  %156 = load i32, i32* %56
  %157 = load i32, i32* %57
  %158 = load i32, i32* %58
  %159 = load i32, i32* %59
  %160 = load i32, i32* %60
  %161 = load i32, i32* %61
  %162 = load i32, i32* %62
  %163 = load i32, i32* %63
  %164 = load i32, i32* %64
  %165 = call i32 @gcd(i32 %131  i32 %134  i32 %135  i32 %136  i32 %137  i32 %138  i32 %139  i32 %140  i32 %141  i32 %142  i32 %143  i32 %144  i32 %145  i32 %146  i32 %147  i32 %148  i32 %149  i32 %150  i32 %151  i32 %152  i32 %153  i32 %154  i32 %155  i32 %156  i32 %157  i32 %158  i32 %159  i32 %160  i32 %161  i32 %162  i32 %163  i32 %164  )
  ret i32 %165
  br label %3
3:
}

define void @globalinit() {
0:
}

define i32 @main() {
0:
  %1 = call i32 @gcd(i32 10  i32 1  i32 0  i32 2  i32 4  i32 6  i32 8  i32 10  i32 12  i32 14  i32 16  i32 18  i32 20  i32 22  i32 24  i32 26  i32 28  i32 30  i32 32  i32 34  i32 36  i32 38  i32 40  i32 42  i32 44  i32 46  i32 48  i32 50  i32 52  i32 54  i32 56  i32 58  )
  %2 = add i32 %1, 1024
  %3 = call string @toString(i32 %2  )
  call void @println(string %3  )
  ret 0
}

