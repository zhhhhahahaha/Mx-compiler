define void @origin(i32 %1  ) {
  %2 = alloca i32
0:
  store i32 %1, i32* %2
  %4 = load i32, i32* %2
  %5 = mul i32 %4, 4
  %6 = add i32 %5, 4
  %3 = call i32* @malloc(i32 %6  )
  store i32 %4, i32* %3
  store i32** %3, i32*** @make
  store i32 0, i32* @i
  br label %1
1:
  %7 = load i32, i32* @i
  %8 = load i32, i32* %2
  %9 = icmp slt i32 %7, %8
  br i8 %9, label %2, label %4
2:
  %10 = load i32**, i32*** @make
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
  %21 = load i32**, i32*** @make
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

define void @search(i32 %1  i32 %2  i32 %3  ) {
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  %7 = alloca i32
  %8 = alloca i32
  %9 = alloca i32
  %12 = alloca i8
  %17 = alloca i8
  %22 = alloca i8
  %54 = alloca i8
  %101 = alloca i8
  %123 = alloca i8
  %145 = alloca i8
  %167 = alloca i8
  %189 = alloca i8
  %211 = alloca i8
  %293 = alloca i8
  %306 = alloca i8
0:
  store i32 %1, i32* %4
  store i32 %2, i32* %5
  store i32 %3, i32* %6
  %10 = load i32, i32* %5
  %11 = icmp sgt i32 %10, 0
  %13 = or i8 %11, false
  store i8 %11, i8* %12
  br i8 %13, label %5, label %4
4:
  %14 = load i32, i32* %5
  %15 = icmp slt i32 %14, 0
  store i8 %15, i8* %12
  br label %5
5:
  %16 = load i8, i8* %12
  %18 = or i8 %16, false
  store i8 %16, i8* %17
  br i8 %18, label %7, label %6
6:
  %19 = load i32, i32* %4
  %20 = icmp eq i32 %19, 0
  store i8 %20, i8* %17
  br label %7
7:
  %21 = load i8, i8* %17
  %23 = or i8 %21, false
  store i8 %21, i8* %22
  br i8 %23, label %9, label %8
8:
  %24 = load i32**, i32*** @make
  %25 = load i32, i32* %4
  %26 = sub i32 %25, 1
  %27 = add i32 %26, 1
  %28 = getelementptr i32*, i32** %24, i32 %27  
  %29 = load i32*, i32** %28
  %30 = getelementptr i32, i32* %29, i32 1  
  %31 = load i32, i32* %30
  %32 = load i32**, i32*** @make
  %33 = load i32, i32* %4
  %34 = sub i32 %33, 1
  %35 = add i32 %34, 1
  %36 = getelementptr i32*, i32** %32, i32 %35  
  %37 = load i32*, i32** %36
  %38 = getelementptr i32, i32* %37, i32 2  
  %39 = load i32, i32* %38
  %40 = add i32 %31, %39
  %41 = load i32**, i32*** @make
  %42 = load i32, i32* %4
  %43 = sub i32 %42, 1
  %44 = add i32 %43, 1
  %45 = getelementptr i32*, i32** %41, i32 %44  
  %46 = load i32*, i32** %45
  %47 = getelementptr i32, i32* %46, i32 3  
  %48 = load i32, i32* %47
  %49 = add i32 %40, %48
  %50 = icmp eq i32 %49, 15
  store i8 %50, i8* %22
  br label %9
9:
  %51 = load i8, i8* %22
  br i8 %51, label %1, label %2
1:
  %52 = load i32, i32* %4
  %53 = icmp eq i32 %52, 2
  %55 = xor i8 %53, true
  store i8 %53, i8* %54
  br i8 %55, label %14, label %13
13:
  %56 = load i32, i32* %5
  %57 = icmp eq i32 %56, 2
  store i8 %57, i8* %54
  br label %14
14:
  %58 = load i8, i8* %54
  br i8 %58, label %10, label %11
10:
  %59 = load i32**, i32*** @make
  %60 = getelementptr i32*, i32** %59, i32 3  
  %61 = load i32*, i32** %60
  %62 = getelementptr i32, i32* %61, i32 3  
  %63 = load i32, i32* %6
  %64 = sub i32 45, %63
  store i32 %64, i32* %62
  %65 = load i32**, i32*** @make
  %66 = getelementptr i32*, i32** %65, i32 1  
  %67 = load i32*, i32** %66
  %68 = getelementptr i32, i32* %67, i32 1  
  %69 = load i32, i32* %68
  %70 = load i32**, i32*** @make
  %71 = getelementptr i32*, i32** %70, i32 1  
  %72 = load i32*, i32** %71
  %73 = getelementptr i32, i32* %72, i32 2  
  %74 = load i32, i32* %73
  %75 = add i32 %69, %74
  %76 = load i32**, i32*** @make
  %77 = getelementptr i32*, i32** %76, i32 1  
  %78 = load i32*, i32** %77
  %79 = getelementptr i32, i32* %78, i32 3  
  %80 = load i32, i32* %79
  %81 = add i32 %75, %80
  store i32 %81, i32* %7
  %82 = load i32**, i32*** @make
  %83 = getelementptr i32*, i32** %82, i32 2  
  %84 = load i32*, i32** %83
  %85 = getelementptr i32, i32* %84, i32 1  
  %86 = load i32, i32* %85
  %87 = load i32**, i32*** @make
  %88 = getelementptr i32*, i32** %87, i32 2  
  %89 = load i32*, i32** %88
  %90 = getelementptr i32, i32* %89, i32 2  
  %91 = load i32, i32* %90
  %92 = add i32 %86, %91
  %93 = load i32**, i32*** @make
  %94 = getelementptr i32*, i32** %93, i32 2  
  %95 = load i32*, i32** %94
  %96 = getelementptr i32, i32* %95, i32 3  
  %97 = load i32, i32* %96
  %98 = add i32 %92, %97
  %99 = load i32, i32* %7
  %100 = icmp eq i32 %98, %99
  %102 = xor i8 %100, true
  store i8 %100, i8* %101
  br i8 %102, label %19, label %18
18:
  %103 = load i32**, i32*** @make
  %104 = getelementptr i32*, i32** %103, i32 3  
  %105 = load i32*, i32** %104
  %106 = getelementptr i32, i32* %105, i32 1  
  %107 = load i32, i32* %106
  %108 = load i32**, i32*** @make
  %109 = getelementptr i32*, i32** %108, i32 3  
  %110 = load i32*, i32** %109
  %111 = getelementptr i32, i32* %110, i32 2  
  %112 = load i32, i32* %111
  %113 = add i32 %107, %112
  %114 = load i32**, i32*** @make
  %115 = getelementptr i32*, i32** %114, i32 3  
  %116 = load i32*, i32** %115
  %117 = getelementptr i32, i32* %116, i32 3  
  %118 = load i32, i32* %117
  %119 = add i32 %113, %118
  %120 = load i32, i32* %7
  %121 = icmp eq i32 %119, %120
  store i8 %121, i8* %101
  br label %19
19:
  %122 = load i8, i8* %101
  %124 = xor i8 %122, true
  store i8 %122, i8* %123
  br i8 %124, label %21, label %20
20:
  %125 = load i32**, i32*** @make
  %126 = getelementptr i32*, i32** %125, i32 1  
  %127 = load i32*, i32** %126
  %128 = getelementptr i32, i32* %127, i32 1  
  %129 = load i32, i32* %128
  %130 = load i32**, i32*** @make
  %131 = getelementptr i32*, i32** %130, i32 2  
  %132 = load i32*, i32** %131
  %133 = getelementptr i32, i32* %132, i32 1  
  %134 = load i32, i32* %133
  %135 = add i32 %129, %134
  %136 = load i32**, i32*** @make
  %137 = getelementptr i32*, i32** %136, i32 3  
  %138 = load i32*, i32** %137
  %139 = getelementptr i32, i32* %138, i32 1  
  %140 = load i32, i32* %139
  %141 = add i32 %135, %140
  %142 = load i32, i32* %7
  %143 = icmp eq i32 %141, %142
  store i8 %143, i8* %123
  br label %21
21:
  %144 = load i8, i8* %123
  %146 = xor i8 %144, true
  store i8 %144, i8* %145
  br i8 %146, label %23, label %22
22:
  %147 = load i32**, i32*** @make
  %148 = getelementptr i32*, i32** %147, i32 1  
  %149 = load i32*, i32** %148
  %150 = getelementptr i32, i32* %149, i32 2  
  %151 = load i32, i32* %150
  %152 = load i32**, i32*** @make
  %153 = getelementptr i32*, i32** %152, i32 2  
  %154 = load i32*, i32** %153
  %155 = getelementptr i32, i32* %154, i32 2  
  %156 = load i32, i32* %155
  %157 = add i32 %151, %156
  %158 = load i32**, i32*** @make
  %159 = getelementptr i32*, i32** %158, i32 3  
  %160 = load i32*, i32** %159
  %161 = getelementptr i32, i32* %160, i32 2  
  %162 = load i32, i32* %161
  %163 = add i32 %157, %162
  %164 = load i32, i32* %7
  %165 = icmp eq i32 %163, %164
  store i8 %165, i8* %145
  br label %23
23:
  %166 = load i8, i8* %145
  %168 = xor i8 %166, true
  store i8 %166, i8* %167
  br i8 %168, label %25, label %24
24:
  %169 = load i32**, i32*** @make
  %170 = getelementptr i32*, i32** %169, i32 1  
  %171 = load i32*, i32** %170
  %172 = getelementptr i32, i32* %171, i32 3  
  %173 = load i32, i32* %172
  %174 = load i32**, i32*** @make
  %175 = getelementptr i32*, i32** %174, i32 2  
  %176 = load i32*, i32** %175
  %177 = getelementptr i32, i32* %176, i32 3  
  %178 = load i32, i32* %177
  %179 = add i32 %173, %178
  %180 = load i32**, i32*** @make
  %181 = getelementptr i32*, i32** %180, i32 3  
  %182 = load i32*, i32** %181
  %183 = getelementptr i32, i32* %182, i32 3  
  %184 = load i32, i32* %183
  %185 = add i32 %179, %184
  %186 = load i32, i32* %7
  %187 = icmp eq i32 %185, %186
  store i8 %187, i8* %167
  br label %25
25:
  %188 = load i8, i8* %167
  %190 = xor i8 %188, true
  store i8 %188, i8* %189
  br i8 %190, label %27, label %26
26:
  %191 = load i32**, i32*** @make
  %192 = getelementptr i32*, i32** %191, i32 1  
  %193 = load i32*, i32** %192
  %194 = getelementptr i32, i32* %193, i32 1  
  %195 = load i32, i32* %194
  %196 = load i32**, i32*** @make
  %197 = getelementptr i32*, i32** %196, i32 2  
  %198 = load i32*, i32** %197
  %199 = getelementptr i32, i32* %198, i32 2  
  %200 = load i32, i32* %199
  %201 = add i32 %195, %200
  %202 = load i32**, i32*** @make
  %203 = getelementptr i32*, i32** %202, i32 3  
  %204 = load i32*, i32** %203
  %205 = getelementptr i32, i32* %204, i32 3  
  %206 = load i32, i32* %205
  %207 = add i32 %201, %206
  %208 = load i32, i32* %7
  %209 = icmp eq i32 %207, %208
  store i8 %209, i8* %189
  br label %27
27:
  %210 = load i8, i8* %189
  %212 = xor i8 %210, true
  store i8 %210, i8* %211
  br i8 %212, label %29, label %28
28:
  %213 = load i32**, i32*** @make
  %214 = getelementptr i32*, i32** %213, i32 3  
  %215 = load i32*, i32** %214
  %216 = getelementptr i32, i32* %215, i32 1  
  %217 = load i32, i32* %216
  %218 = load i32**, i32*** @make
  %219 = getelementptr i32*, i32** %218, i32 2  
  %220 = load i32*, i32** %219
  %221 = getelementptr i32, i32* %220, i32 2  
  %222 = load i32, i32* %221
  %223 = add i32 %217, %222
  %224 = load i32**, i32*** @make
  %225 = getelementptr i32*, i32** %224, i32 1  
  %226 = load i32*, i32** %225
  %227 = getelementptr i32, i32* %226, i32 3  
  %228 = load i32, i32* %227
  %229 = add i32 %223, %228
  %230 = load i32, i32* %7
  %231 = icmp eq i32 %229, %230
  store i8 %231, i8* %211
  br label %29
29:
  %232 = load i8, i8* %211
  br i8 %232, label %15, label %16
15:
  %233 = load i32*, i32** @count
  %234 = getelementptr i32, i32* %233, i32 1  
  %235 = load i32*, i32** @count
  %236 = getelementptr i32, i32* %235, i32 1  
  %237 = load i32, i32* %236
  %238 = add i32 %237, 1
  store i32 %238, i32* %234
  store i32 0, i32* %8
  br label %30
30:
  %239 = load i32, i32* %8
  %240 = icmp sle i32 %239, 2
  br i8 %240, label %31, label %33
31:
  store i32 0, i32* %9
  br label %34
34:
  %241 = load i32, i32* %9
  %242 = icmp sle i32 %241, 2
  br i8 %242, label %35, label %37
35:
  %243 = load i32**, i32*** @make
  %244 = load i32, i32* %8
  %245 = add i32 %244, 1
  %246 = getelementptr i32*, i32** %243, i32 %245  
  %247 = load i32*, i32** %246
  %248 = load i32, i32* %9
  %249 = add i32 %248, 1
  %250 = getelementptr i32, i32* %247, i32 %249  
  %251 = load i32, i32* %250
  %252 = call string @toString(i32 %251  )
  call void @print(string %252  )
  call void @print(string $str1  )
  br label %36
36:
  %253 = load i32, i32* %9
  %254 = add i32 %253, 1
  store i32 %254, i32* %9
  br label %34
37:
  call void @print(string $str2  )
  br label %32
32:
  %255 = load i32, i32* %8
  %256 = add i32 %255, 1
  store i32 %256, i32* %8
  br label %30
33:
  call void @print(string $str3  )
  br label %17
16:
  br label %17
17:
  br label %12
11:
  %257 = load i32, i32* %5
  %258 = icmp eq i32 %257, 2
  br i8 %258, label %38, label %39
38:
  %259 = load i32**, i32*** @make
  %260 = load i32, i32* %4
  %261 = add i32 %260, 1
  %262 = getelementptr i32*, i32** %259, i32 %261  
  %263 = load i32*, i32** %262
  %264 = load i32, i32* %5
  %265 = add i32 %264, 1
  %266 = getelementptr i32, i32* %263, i32 %265  
  %267 = load i32**, i32*** @make
  %268 = load i32, i32* %4
  %269 = add i32 %268, 1
  %270 = getelementptr i32*, i32** %267, i32 %269  
  %271 = load i32*, i32** %270
  %272 = getelementptr i32, i32* %271, i32 1  
  %273 = load i32, i32* %272
  %274 = sub i32 15, %273
  %275 = load i32**, i32*** @make
  %276 = load i32, i32* %4
  %277 = add i32 %276, 1
  %278 = getelementptr i32*, i32** %275, i32 %277  
  %279 = load i32*, i32** %278
  %280 = getelementptr i32, i32* %279, i32 2  
  %281 = load i32, i32* %280
  %282 = sub i32 %274, %281
  store i32 %282, i32* %266
  %283 = load i32**, i32*** @make
  %284 = load i32, i32* %4
  %285 = add i32 %284, 1
  %286 = getelementptr i32*, i32** %283, i32 %285  
  %287 = load i32*, i32** %286
  %288 = load i32, i32* %5
  %289 = add i32 %288, 1
  %290 = getelementptr i32, i32* %287, i32 %289  
  %291 = load i32, i32* %290
  %292 = icmp sgt i32 %291, 0
  %294 = xor i8 %292, true
  store i8 %292, i8* %293
  br i8 %294, label %45, label %44
44:
  %295 = load i32**, i32*** @make
  %296 = load i32, i32* %4
  %297 = add i32 %296, 1
  %298 = getelementptr i32*, i32** %295, i32 %297  
  %299 = load i32*, i32** %298
  %300 = load i32, i32* %5
  %301 = add i32 %300, 1
  %302 = getelementptr i32, i32* %299, i32 %301  
  %303 = load i32, i32* %302
  %304 = icmp slt i32 %303, 10
  store i8 %304, i8* %293
  br label %45
45:
  %305 = load i8, i8* %293
  %307 = xor i8 %305, true
  store i8 %305, i8* %306
  br i8 %307, label %47, label %46
46:
  %308 = load i32*, i32** @color
  %309 = load i32**, i32*** @make
  %310 = load i32, i32* %4
  %311 = add i32 %310, 1
  %312 = getelementptr i32*, i32** %309, i32 %311  
  %313 = load i32*, i32** %312
  %314 = load i32, i32* %5
  %315 = add i32 %314, 1
  %316 = getelementptr i32, i32* %313, i32 %315  
  %317 = load i32, i32* %316
  %318 = add i32 %317, 1
  %319 = getelementptr i32, i32* %308, i32 %318  
  %320 = load i32, i32* %319
  %321 = icmp eq i32 %320, 0
  store i8 %321, i8* %306
  br label %47
47:
  %322 = load i8, i8* %306
  br i8 %322, label %41, label %42
41:
  %323 = load i32*, i32** @color
  %324 = load i32**, i32*** @make
  %325 = load i32, i32* %4
  %326 = add i32 %325, 1
  %327 = getelementptr i32*, i32** %324, i32 %326  
  %328 = load i32*, i32** %327
  %329 = load i32, i32* %5
  %330 = add i32 %329, 1
  %331 = getelementptr i32, i32* %328, i32 %330  
  %332 = load i32, i32* %331
  %333 = add i32 %332, 1
  %334 = getelementptr i32, i32* %323, i32 %333  
  store i32 1, i32* %334
  %335 = load i32, i32* %5
  %336 = icmp eq i32 %335, 2
  br i8 %336, label %48, label %49
48:
  %337 = load i32, i32* %4
  %338 = add i32 %337, 1
  %339 = load i32, i32* %6
  %340 = load i32**, i32*** @make
  %341 = load i32, i32* %4
  %342 = add i32 %341, 1
  %343 = getelementptr i32*, i32** %340, i32 %342  
  %344 = load i32*, i32** %343
  %345 = load i32, i32* %5
  %346 = add i32 %345, 1
  %347 = getelementptr i32, i32* %344, i32 %346  
  %348 = load i32, i32* %347
  %349 = add i32 %339, %348
  call void @search(i32 %338  i32 0  i32 %349  )
  br label %50
49:
  %350 = load i32, i32* %4
  %351 = load i32, i32* %5
  %352 = add i32 %351, 1
  %353 = load i32, i32* %6
  %354 = load i32**, i32*** @make
  %355 = load i32, i32* %4
  %356 = add i32 %355, 1
  %357 = getelementptr i32*, i32** %354, i32 %356  
  %358 = load i32*, i32** %357
  %359 = load i32, i32* %5
  %360 = add i32 %359, 1
  %361 = getelementptr i32, i32* %358, i32 %360  
  %362 = load i32, i32* %361
  %363 = add i32 %353, %362
  call void @search(i32 %350  i32 %352  i32 %363  )
  br label %50
50:
  %364 = load i32*, i32** @color
  %365 = load i32**, i32*** @make
  %366 = load i32, i32* %4
  %367 = add i32 %366, 1
  %368 = getelementptr i32*, i32** %365, i32 %367  
  %369 = load i32*, i32** %368
  %370 = load i32, i32* %5
  %371 = add i32 %370, 1
  %372 = getelementptr i32, i32* %369, i32 %371  
  %373 = load i32, i32* %372
  %374 = add i32 %373, 1
  %375 = getelementptr i32, i32* %364, i32 %374  
  store i32 0, i32* %375
  br label %43
42:
  br label %43
43:
  br label %40
39:
  store i32 1, i32* %8
  br label %51
51:
  %376 = load i32, i32* %8
  %377 = icmp sle i32 %376, 9
  br i8 %377, label %52, label %54
52:
  %378 = load i32*, i32** @color
  %379 = load i32, i32* %8
  %380 = add i32 %379, 1
  %381 = getelementptr i32, i32* %378, i32 %380  
  %382 = load i32, i32* %381
  %383 = icmp eq i32 %382, 0
  br i8 %383, label %55, label %56
55:
  %384 = load i32*, i32** @color
  %385 = load i32, i32* %8
  %386 = add i32 %385, 1
  %387 = getelementptr i32, i32* %384, i32 %386  
  store i32 1, i32* %387
  %388 = load i32**, i32*** @make
  %389 = load i32, i32* %4
  %390 = add i32 %389, 1
  %391 = getelementptr i32*, i32** %388, i32 %390  
  %392 = load i32*, i32** %391
  %393 = load i32, i32* %5
  %394 = add i32 %393, 1
  %395 = getelementptr i32, i32* %392, i32 %394  
  %396 = load i32, i32* %8
  store i32 %396, i32* %395
  %397 = load i32, i32* %5
  %398 = icmp eq i32 %397, 2
  br i8 %398, label %58, label %59
58:
  %399 = load i32, i32* %4
  %400 = add i32 %399, 1
  %401 = load i32, i32* %6
  %402 = load i32, i32* %8
  %403 = add i32 %401, %402
  call void @search(i32 %400  i32 0  i32 %403  )
  br label %60
59:
  %404 = load i32, i32* %4
  %405 = load i32, i32* %5
  %406 = add i32 %405, 1
  %407 = load i32, i32* %6
  %408 = load i32, i32* %8
  %409 = add i32 %407, %408
  call void @search(i32 %404  i32 %406  i32 %409  )
  br label %60
60:
  %410 = load i32**, i32*** @make
  %411 = load i32, i32* %4
  %412 = add i32 %411, 1
  %413 = getelementptr i32*, i32** %410, i32 %412  
  %414 = load i32*, i32** %413
  %415 = load i32, i32* %5
  %416 = add i32 %415, 1
  %417 = getelementptr i32, i32* %414, i32 %416  
  store i32 0, i32* %417
  %418 = load i32*, i32** @color
  %419 = load i32, i32* %8
  %420 = add i32 %419, 1
  %421 = getelementptr i32, i32* %418, i32 %420  
  store i32 0, i32* %421
  br label %57
56:
  br label %57
57:
  br label %53
53:
  %422 = load i32, i32* %8
  %423 = add i32 %422, 1
  store i32 %423, i32* %8
  br label %51
54:
  br label %40
40:
  br label %12
12:
  br label %3
2:
  br label %3
3:
}

@make = global i32** 0
@color = global i32* 0
@count = global i32* 0
@i = global i32 0
@j = global i32 0
$str1 = global string " "
$str2 = global string "\n"
$str3 = global string "\n"
define void @globalinit() {
0:
  %1 = load i32**, i32*** @make
  %2 = load i32*, i32** @color
  %3 = call i32* @malloc(i32 44  )
  store i32 10, i32* %3
  store i32* %3, i32** @color
  %4 = load i32*, i32** @count
  %5 = call i32* @malloc(i32 8  )
  store i32 1, i32* %5
  store i32* %5, i32** @count
  %6 = load i32, i32* @i
  %7 = load i32, i32* @j
}

define i32 @main() {
0:
  %1 = load i32*, i32** @count
  %2 = getelementptr i32, i32* %1, i32 1  
  store i32 0, i32* %2
  call void @origin(i32 3  )
  call void @search(i32 0  i32 0  i32 0  )
  %3 = load i32*, i32** @count
  %4 = getelementptr i32, i32* %3, i32 1  
  %5 = load i32, i32* %4
  %6 = call string @toString(i32 %5  )
  call void @println(string %6  )
  ret 0
}

