declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg)
declare i32 @putchar(i32)
declare i32 @getchar()

define i32 @main() {
%arr = alloca [30000 x i8]
call void @llvm.memset.p0.i64(ptr %arr, i8 0, i64 30000, i1 false)
%idx = alloca i32
store i32 0, i32* %idx
%1 = load i32, i32* %idx
%arrayidx1 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %1
%2 = load i8, i8* %arrayidx1
%3 = add i8 %2, 1
store i8 %3, i8* %arrayidx1
%4 = load i32, i32* %idx
%arrayidx4 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %4
%5 = load i8, i8* %arrayidx4
%6 = add i8 %5, 1
store i8 %6, i8* %arrayidx4
%7 = load i32, i32* %idx
%arrayidx7 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %7
%8 = load i8, i8* %arrayidx7
%9 = add i8 %8, 1
store i8 %9, i8* %arrayidx7
%10 = load i32, i32* %idx
%arrayidx10 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %10
%11 = load i8, i8* %arrayidx10
%12 = add i8 %11, 1
store i8 %12, i8* %arrayidx10
%13 = load i32, i32* %idx
%arrayidx13 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %13
%14 = load i8, i8* %arrayidx13
%15 = add i8 %14, 1
store i8 %15, i8* %arrayidx13
%16 = load i32, i32* %idx
%arrayidx16 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %16
%17 = load i8, i8* %arrayidx16
%18 = add i8 %17, 1
store i8 %18, i8* %arrayidx16
%19 = load i32, i32* %idx
%arrayidx19 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %19
%20 = load i8, i8* %arrayidx19
%21 = add i8 %20, 1
store i8 %21, i8* %arrayidx19
%22 = load i32, i32* %idx
%arrayidx22 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %22
%23 = load i8, i8* %arrayidx22
%24 = add i8 %23, 1
store i8 %24, i8* %arrayidx22
%25 = load i32, i32* %idx
%arrayidx25 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %25
%26 = load i8, i8* %arrayidx25
%27 = add i8 %26, 1
store i8 %27, i8* %arrayidx25
%28 = load i32, i32* %idx
%arrayidx28 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %28
%29 = load i8, i8* %arrayidx28
%30 = add i8 %29, 1
store i8 %30, i8* %arrayidx28
%31 = load i32, i32* %idx
%arrayidx31 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %31
%32 = load i8, i8* %arrayidx31
%33 = icmp ne i8 %32, 0
br i1 %33, label %loop0, label %loop0.end
loop0:
%34 = load i32, i32* %idx
%35 = add i32 %34, 1
store i32 %35, i32* %idx
%36 = load i32, i32* %idx
%arrayidx36 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %36
%37 = load i8, i8* %arrayidx36
%38 = add i8 %37, 1
store i8 %38, i8* %arrayidx36
%39 = load i32, i32* %idx
%arrayidx39 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %39
%40 = load i8, i8* %arrayidx39
%41 = add i8 %40, 1
store i8 %41, i8* %arrayidx39
%42 = load i32, i32* %idx
%arrayidx42 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %42
%43 = load i8, i8* %arrayidx42
%44 = add i8 %43, 1
store i8 %44, i8* %arrayidx42
%45 = load i32, i32* %idx
%46 = add i32 %45, 1
store i32 %46, i32* %idx
%47 = load i32, i32* %idx
%arrayidx47 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %47
%48 = load i8, i8* %arrayidx47
%49 = add i8 %48, 1
store i8 %49, i8* %arrayidx47
%50 = load i32, i32* %idx
%arrayidx50 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %50
%51 = load i8, i8* %arrayidx50
%52 = add i8 %51, 1
store i8 %52, i8* %arrayidx50
%53 = load i32, i32* %idx
%arrayidx53 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %53
%54 = load i8, i8* %arrayidx53
%55 = add i8 %54, 1
store i8 %55, i8* %arrayidx53
%56 = load i32, i32* %idx
%arrayidx56 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %56
%57 = load i8, i8* %arrayidx56
%58 = add i8 %57, 1
store i8 %58, i8* %arrayidx56
%59 = load i32, i32* %idx
%arrayidx59 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %59
%60 = load i8, i8* %arrayidx59
%61 = add i8 %60, 1
store i8 %61, i8* %arrayidx59
%62 = load i32, i32* %idx
%arrayidx62 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %62
%63 = load i8, i8* %arrayidx62
%64 = add i8 %63, 1
store i8 %64, i8* %arrayidx62
%65 = load i32, i32* %idx
%arrayidx65 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %65
%66 = load i8, i8* %arrayidx65
%67 = add i8 %66, 1
store i8 %67, i8* %arrayidx65
%68 = load i32, i32* %idx
%69 = add i32 %68, 1
store i32 %69, i32* %idx
%70 = load i32, i32* %idx
%arrayidx70 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %70
%71 = load i8, i8* %arrayidx70
%72 = add i8 %71, 1
store i8 %72, i8* %arrayidx70
%73 = load i32, i32* %idx
%arrayidx73 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %73
%74 = load i8, i8* %arrayidx73
%75 = add i8 %74, 1
store i8 %75, i8* %arrayidx73
%76 = load i32, i32* %idx
%arrayidx76 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %76
%77 = load i8, i8* %arrayidx76
%78 = add i8 %77, 1
store i8 %78, i8* %arrayidx76
%79 = load i32, i32* %idx
%arrayidx79 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %79
%80 = load i8, i8* %arrayidx79
%81 = add i8 %80, 1
store i8 %81, i8* %arrayidx79
%82 = load i32, i32* %idx
%arrayidx82 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %82
%83 = load i8, i8* %arrayidx82
%84 = add i8 %83, 1
store i8 %84, i8* %arrayidx82
%85 = load i32, i32* %idx
%arrayidx85 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %85
%86 = load i8, i8* %arrayidx85
%87 = add i8 %86, 1
store i8 %87, i8* %arrayidx85
%88 = load i32, i32* %idx
%arrayidx88 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %88
%89 = load i8, i8* %arrayidx88
%90 = add i8 %89, 1
store i8 %90, i8* %arrayidx88
%91 = load i32, i32* %idx
%arrayidx91 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %91
%92 = load i8, i8* %arrayidx91
%93 = add i8 %92, 1
store i8 %93, i8* %arrayidx91
%94 = load i32, i32* %idx
%arrayidx94 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %94
%95 = load i8, i8* %arrayidx94
%96 = add i8 %95, 1
store i8 %96, i8* %arrayidx94
%97 = load i32, i32* %idx
%98 = add i32 %97, 1
store i32 %98, i32* %idx
%99 = load i32, i32* %idx
%arrayidx99 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %99
%100 = load i8, i8* %arrayidx99
%101 = add i8 %100, 1
store i8 %101, i8* %arrayidx99
%102 = load i32, i32* %idx
%arrayidx102 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %102
%103 = load i8, i8* %arrayidx102
%104 = add i8 %103, 1
store i8 %104, i8* %arrayidx102
%105 = load i32, i32* %idx
%arrayidx105 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %105
%106 = load i8, i8* %arrayidx105
%107 = add i8 %106, 1
store i8 %107, i8* %arrayidx105
%108 = load i32, i32* %idx
%arrayidx108 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %108
%109 = load i8, i8* %arrayidx108
%110 = add i8 %109, 1
store i8 %110, i8* %arrayidx108
%111 = load i32, i32* %idx
%arrayidx111 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %111
%112 = load i8, i8* %arrayidx111
%113 = add i8 %112, 1
store i8 %113, i8* %arrayidx111
%114 = load i32, i32* %idx
%arrayidx114 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %114
%115 = load i8, i8* %arrayidx114
%116 = add i8 %115, 1
store i8 %116, i8* %arrayidx114
%117 = load i32, i32* %idx
%arrayidx117 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %117
%118 = load i8, i8* %arrayidx117
%119 = add i8 %118, 1
store i8 %119, i8* %arrayidx117
%120 = load i32, i32* %idx
%arrayidx120 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %120
%121 = load i8, i8* %arrayidx120
%122 = add i8 %121, 1
store i8 %122, i8* %arrayidx120
%123 = load i32, i32* %idx
%arrayidx123 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %123
%124 = load i8, i8* %arrayidx123
%125 = add i8 %124, 1
store i8 %125, i8* %arrayidx123
%126 = load i32, i32* %idx
%arrayidx126 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %126
%127 = load i8, i8* %arrayidx126
%128 = add i8 %127, 1
store i8 %128, i8* %arrayidx126
%129 = load i32, i32* %idx
%130 = add i32 %129, 1
store i32 %130, i32* %idx
%131 = load i32, i32* %idx
%arrayidx131 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %131
%132 = load i8, i8* %arrayidx131
%133 = add i8 %132, 1
store i8 %133, i8* %arrayidx131
%134 = load i32, i32* %idx
%arrayidx134 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %134
%135 = load i8, i8* %arrayidx134
%136 = add i8 %135, 1
store i8 %136, i8* %arrayidx134
%137 = load i32, i32* %idx
%arrayidx137 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %137
%138 = load i8, i8* %arrayidx137
%139 = add i8 %138, 1
store i8 %139, i8* %arrayidx137
%140 = load i32, i32* %idx
%arrayidx140 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %140
%141 = load i8, i8* %arrayidx140
%142 = add i8 %141, 1
store i8 %142, i8* %arrayidx140
%143 = load i32, i32* %idx
%arrayidx143 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %143
%144 = load i8, i8* %arrayidx143
%145 = add i8 %144, 1
store i8 %145, i8* %arrayidx143
%146 = load i32, i32* %idx
%arrayidx146 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %146
%147 = load i8, i8* %arrayidx146
%148 = add i8 %147, 1
store i8 %148, i8* %arrayidx146
%149 = load i32, i32* %idx
%arrayidx149 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %149
%150 = load i8, i8* %arrayidx149
%151 = add i8 %150, 1
store i8 %151, i8* %arrayidx149
%152 = load i32, i32* %idx
%arrayidx152 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %152
%153 = load i8, i8* %arrayidx152
%154 = add i8 %153, 1
store i8 %154, i8* %arrayidx152
%155 = load i32, i32* %idx
%arrayidx155 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %155
%156 = load i8, i8* %arrayidx155
%157 = add i8 %156, 1
store i8 %157, i8* %arrayidx155
%158 = load i32, i32* %idx
%arrayidx158 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %158
%159 = load i8, i8* %arrayidx158
%160 = add i8 %159, 1
store i8 %160, i8* %arrayidx158
%161 = load i32, i32* %idx
%arrayidx161 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %161
%162 = load i8, i8* %arrayidx161
%163 = add i8 %162, 1
store i8 %163, i8* %arrayidx161
%164 = load i32, i32* %idx
%165 = sub i32 %164, 1
store i32 %165, i32* %idx
%166 = load i32, i32* %idx
%167 = sub i32 %166, 1
store i32 %167, i32* %idx
%168 = load i32, i32* %idx
%169 = sub i32 %168, 1
store i32 %169, i32* %idx
%170 = load i32, i32* %idx
%171 = sub i32 %170, 1
store i32 %171, i32* %idx
%172 = load i32, i32* %idx
%173 = sub i32 %172, 1
store i32 %173, i32* %idx
%174 = load i32, i32* %idx
%arrayidx174 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %174
%175 = load i8, i8* %arrayidx174
%176 = sub i8 %175, 1
store i8 %176, i8* %arrayidx174
%177 = load i32, i32* %idx
%arrayidx177 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %177
%178 = load i8, i8* %arrayidx177
%179 = icmp ne i8 %178, 0
br i1 %179, label %loop0, label %loop0.end
loop0.end:
%180 = load i32, i32* %idx
%181 = add i32 %180, 1
store i32 %181, i32* %idx
%182 = load i32, i32* %idx
%183 = add i32 %182, 1
store i32 %183, i32* %idx
%184 = load i32, i32* %idx
%arrayidx184 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %184
%185 = load i8, i8* %arrayidx184
%186 = add i8 %185, 1
store i8 %186, i8* %arrayidx184
%187 = load i32, i32* %idx
%arrayidx187 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %187
%188 = load i8, i8* %arrayidx187
%189 = add i8 %188, 1
store i8 %189, i8* %arrayidx187
%190 = load i32, i32* %idx
%arrayidx190 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %190
%191 = load i8, i8* %arrayidx190
%extended191 = zext i8 %191 to i32
%result191 = call i32 @putchar(i32 %extended191)
%192 = load i32, i32* %idx
%193 = add i32 %192, 1
store i32 %193, i32* %idx
%194 = load i32, i32* %idx
%195 = add i32 %194, 1
store i32 %195, i32* %idx
%196 = load i32, i32* %idx
%arrayidx196 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %196
%197 = load i8, i8* %arrayidx196
%198 = add i8 %197, 1
store i8 %198, i8* %arrayidx196
%199 = load i32, i32* %idx
%arrayidx199 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %199
%200 = load i8, i8* %arrayidx199
%extended200 = zext i8 %200 to i32
%result200 = call i32 @putchar(i32 %extended200)
%201 = load i32, i32* %idx
%202 = add i32 %201, 1
store i32 %202, i32* %idx
%203 = load i32, i32* %idx
%arrayidx203 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %203
%204 = load i8, i8* %arrayidx203
%205 = sub i8 %204, 1
store i8 %205, i8* %arrayidx203
%206 = load i32, i32* %idx
%arrayidx206 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %206
%207 = load i8, i8* %arrayidx206
%208 = sub i8 %207, 1
store i8 %208, i8* %arrayidx206
%209 = load i32, i32* %idx
%arrayidx209 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %209
%210 = load i8, i8* %arrayidx209
%extended210 = zext i8 %210 to i32
%result210 = call i32 @putchar(i32 %extended210)
%211 = load i32, i32* %idx
%arrayidx211 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %211
%212 = load i8, i8* %arrayidx211
%extended212 = zext i8 %212 to i32
%result212 = call i32 @putchar(i32 %extended212)
%213 = load i32, i32* %idx
%arrayidx213 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %213
%214 = load i8, i8* %arrayidx213
%215 = add i8 %214, 1
store i8 %215, i8* %arrayidx213
%216 = load i32, i32* %idx
%arrayidx216 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %216
%217 = load i8, i8* %arrayidx216
%218 = add i8 %217, 1
store i8 %218, i8* %arrayidx216
%219 = load i32, i32* %idx
%arrayidx219 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %219
%220 = load i8, i8* %arrayidx219
%221 = add i8 %220, 1
store i8 %221, i8* %arrayidx219
%222 = load i32, i32* %idx
%arrayidx222 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %222
%223 = load i8, i8* %arrayidx222
%extended223 = zext i8 %223 to i32
%result223 = call i32 @putchar(i32 %extended223)
%224 = load i32, i32* %idx
%225 = sub i32 %224, 1
store i32 %225, i32* %idx
%226 = load i32, i32* %idx
%227 = sub i32 %226, 1
store i32 %227, i32* %idx
%228 = load i32, i32* %idx
%229 = sub i32 %228, 1
store i32 %229, i32* %idx
%230 = load i32, i32* %idx
%231 = sub i32 %230, 1
store i32 %231, i32* %idx
%232 = load i32, i32* %idx
%arrayidx232 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %232
%233 = load i8, i8* %arrayidx232
%234 = add i8 %233, 1
store i8 %234, i8* %arrayidx232
%235 = load i32, i32* %idx
%arrayidx235 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %235
%236 = load i8, i8* %arrayidx235
%237 = add i8 %236, 1
store i8 %237, i8* %arrayidx235
%238 = load i32, i32* %idx
%arrayidx238 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %238
%239 = load i8, i8* %arrayidx238
%extended239 = zext i8 %239 to i32
%result239 = call i32 @putchar(i32 %extended239)
%240 = load i32, i32* %idx
%241 = add i32 %240, 1
store i32 %241, i32* %idx
%242 = load i32, i32* %idx
%243 = add i32 %242, 1
store i32 %243, i32* %idx
%244 = load i32, i32* %idx
%arrayidx244 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %244
%245 = load i8, i8* %arrayidx244
%246 = sub i8 %245, 1
store i8 %246, i8* %arrayidx244
%247 = load i32, i32* %idx
%arrayidx247 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %247
%248 = load i8, i8* %arrayidx247
%249 = sub i8 %248, 1
store i8 %249, i8* %arrayidx247
%250 = load i32, i32* %idx
%arrayidx250 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %250
%251 = load i8, i8* %arrayidx250
%252 = sub i8 %251, 1
store i8 %252, i8* %arrayidx250
%253 = load i32, i32* %idx
%arrayidx253 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %253
%254 = load i8, i8* %arrayidx253
%extended254 = zext i8 %254 to i32
%result254 = call i32 @putchar(i32 %extended254)
%255 = load i32, i32* %idx
%256 = add i32 %255, 1
store i32 %256, i32* %idx
%257 = load i32, i32* %idx
%258 = add i32 %257, 1
store i32 %258, i32* %idx
%259 = load i32, i32* %idx
%arrayidx259 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %259
%260 = load i8, i8* %arrayidx259
%extended260 = zext i8 %260 to i32
%result260 = call i32 @putchar(i32 %extended260)
%261 = load i32, i32* %idx
%arrayidx261 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %261
%262 = load i8, i8* %arrayidx261
%263 = add i8 %262, 1
store i8 %263, i8* %arrayidx261
%264 = load i32, i32* %idx
%arrayidx264 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %264
%265 = load i8, i8* %arrayidx264
%266 = add i8 %265, 1
store i8 %266, i8* %arrayidx264
%267 = load i32, i32* %idx
%arrayidx267 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %267
%268 = load i8, i8* %arrayidx267
%269 = add i8 %268, 1
store i8 %269, i8* %arrayidx267
%270 = load i32, i32* %idx
%arrayidx270 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %270
%271 = load i8, i8* %arrayidx270
%extended271 = zext i8 %271 to i32
%result271 = call i32 @putchar(i32 %extended271)
%272 = load i32, i32* %idx
%arrayidx272 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %272
%273 = load i8, i8* %arrayidx272
%274 = sub i8 %273, 1
store i8 %274, i8* %arrayidx272
%275 = load i32, i32* %idx
%arrayidx275 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %275
%276 = load i8, i8* %arrayidx275
%277 = sub i8 %276, 1
store i8 %277, i8* %arrayidx275
%278 = load i32, i32* %idx
%arrayidx278 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %278
%279 = load i8, i8* %arrayidx278
%280 = sub i8 %279, 1
store i8 %280, i8* %arrayidx278
%281 = load i32, i32* %idx
%arrayidx281 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %281
%282 = load i8, i8* %arrayidx281
%283 = sub i8 %282, 1
store i8 %283, i8* %arrayidx281
%284 = load i32, i32* %idx
%arrayidx284 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %284
%285 = load i8, i8* %arrayidx284
%286 = sub i8 %285, 1
store i8 %286, i8* %arrayidx284
%287 = load i32, i32* %idx
%arrayidx287 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %287
%288 = load i8, i8* %arrayidx287
%289 = sub i8 %288, 1
store i8 %289, i8* %arrayidx287
%290 = load i32, i32* %idx
%arrayidx290 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %290
%291 = load i8, i8* %arrayidx290
%extended291 = zext i8 %291 to i32
%result291 = call i32 @putchar(i32 %extended291)
%292 = load i32, i32* %idx
%293 = sub i32 %292, 1
store i32 %293, i32* %idx
%294 = load i32, i32* %idx
%arrayidx294 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %294
%295 = load i8, i8* %arrayidx294
%296 = sub i8 %295, 1
store i8 %296, i8* %arrayidx294
%297 = load i32, i32* %idx
%arrayidx297 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %297
%298 = load i8, i8* %arrayidx297
%extended298 = zext i8 %298 to i32
%result298 = call i32 @putchar(i32 %extended298)
%299 = load i32, i32* %idx
%300 = sub i32 %299, 1
store i32 %300, i32* %idx
%301 = load i32, i32* %idx
%302 = sub i32 %301, 1
store i32 %302, i32* %idx
%303 = load i32, i32* %idx
%304 = sub i32 %303, 1
store i32 %304, i32* %idx
%305 = load i32, i32* %idx
%arrayidx305 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %305
%306 = load i8, i8* %arrayidx305
%307 = add i8 %306, 1
store i8 %307, i8* %arrayidx305
%308 = load i32, i32* %idx
%arrayidx308 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %308
%309 = load i8, i8* %arrayidx308
%extended309 = zext i8 %309 to i32
%result309 = call i32 @putchar(i32 %extended309)
ret i32 0
}
