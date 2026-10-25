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
%3 = add i8 %2, 10
store i8 %3, i8* %arrayidx1
%4 = load i32, i32* %idx
%arrayidx4 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %4
%5 = load i8, i8* %arrayidx4
%6 = icmp ne i8 %5, 0
br i1 %6, label %loop0, label %loop0.end
loop0:
%7 = load i32, i32* %idx
%8 = add i32 %7, 1
store i32 %8, i32* %idx
%9 = load i32, i32* %idx
%arrayidx9 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %9
%10 = load i8, i8* %arrayidx9
%11 = add i8 %10, 3
store i8 %11, i8* %arrayidx9
%12 = load i32, i32* %idx
%13 = add i32 %12, 1
store i32 %13, i32* %idx
%14 = load i32, i32* %idx
%arrayidx14 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %14
%15 = load i8, i8* %arrayidx14
%16 = add i8 %15, 7
store i8 %16, i8* %arrayidx14
%17 = load i32, i32* %idx
%18 = add i32 %17, 1
store i32 %18, i32* %idx
%19 = load i32, i32* %idx
%arrayidx19 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %19
%20 = load i8, i8* %arrayidx19
%21 = add i8 %20, 9
store i8 %21, i8* %arrayidx19
%22 = load i32, i32* %idx
%23 = add i32 %22, 1
store i32 %23, i32* %idx
%24 = load i32, i32* %idx
%arrayidx24 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %24
%25 = load i8, i8* %arrayidx24
%26 = add i8 %25, 10
store i8 %26, i8* %arrayidx24
%27 = load i32, i32* %idx
%28 = add i32 %27, 1
store i32 %28, i32* %idx
%29 = load i32, i32* %idx
%arrayidx29 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %29
%30 = load i8, i8* %arrayidx29
%31 = add i8 %30, 11
store i8 %31, i8* %arrayidx29
%32 = load i32, i32* %idx
%33 = sub i32 %32, 5
store i32 %33, i32* %idx
%34 = load i32, i32* %idx
%arrayidx34 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %34
%35 = load i8, i8* %arrayidx34
%36 = sub i8 %35, 1
store i8 %36, i8* %arrayidx34
%37 = load i32, i32* %idx
%arrayidx37 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %37
%38 = load i8, i8* %arrayidx37
%39 = icmp ne i8 %38, 0
br i1 %39, label %loop0, label %loop0.end
loop0.end:
%40 = load i32, i32* %idx
%41 = add i32 %40, 2
store i32 %41, i32* %idx
%42 = load i32, i32* %idx
%arrayidx42 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %42
%43 = load i8, i8* %arrayidx42
%44 = add i8 %43, 2
store i8 %44, i8* %arrayidx42
%45 = load i32, i32* %idx
%arrayidx45 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %45
%46 = load i8, i8* %arrayidx45
%extended46 = zext i8 %46 to i32
%result46 = call i32 @putchar(i32 %extended46)
%47 = load i32, i32* %idx
%48 = add i32 %47, 2
store i32 %48, i32* %idx
%49 = load i32, i32* %idx
%arrayidx49 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %49
%50 = load i8, i8* %arrayidx49
%51 = add i8 %50, 1
store i8 %51, i8* %arrayidx49
%52 = load i32, i32* %idx
%arrayidx52 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %52
%53 = load i8, i8* %arrayidx52
%extended53 = zext i8 %53 to i32
%result53 = call i32 @putchar(i32 %extended53)
%54 = load i32, i32* %idx
%55 = add i32 %54, 1
store i32 %55, i32* %idx
%56 = load i32, i32* %idx
%arrayidx56 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %56
%57 = load i8, i8* %arrayidx56
%58 = sub i8 %57, 2
store i8 %58, i8* %arrayidx56
%59 = load i32, i32* %idx
%arrayidx59 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %59
%60 = load i8, i8* %arrayidx59
%extended60 = zext i8 %60 to i32
%result60 = call i32 @putchar(i32 %extended60)
%61 = load i32, i32* %idx
%arrayidx61 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %61
%62 = load i8, i8* %arrayidx61
%extended62 = zext i8 %62 to i32
%result62 = call i32 @putchar(i32 %extended62)
%63 = load i32, i32* %idx
%arrayidx63 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %63
%64 = load i8, i8* %arrayidx63
%65 = add i8 %64, 3
store i8 %65, i8* %arrayidx63
%66 = load i32, i32* %idx
%arrayidx66 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %66
%67 = load i8, i8* %arrayidx66
%extended67 = zext i8 %67 to i32
%result67 = call i32 @putchar(i32 %extended67)
%68 = load i32, i32* %idx
%69 = sub i32 %68, 4
store i32 %69, i32* %idx
%70 = load i32, i32* %idx
%arrayidx70 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %70
%71 = load i8, i8* %arrayidx70
%72 = add i8 %71, 2
store i8 %72, i8* %arrayidx70
%73 = load i32, i32* %idx
%arrayidx73 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %73
%74 = load i8, i8* %arrayidx73
%extended74 = zext i8 %74 to i32
%result74 = call i32 @putchar(i32 %extended74)
%75 = load i32, i32* %idx
%76 = add i32 %75, 2
store i32 %76, i32* %idx
%77 = load i32, i32* %idx
%arrayidx77 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %77
%78 = load i8, i8* %arrayidx77
%79 = sub i8 %78, 3
store i8 %79, i8* %arrayidx77
%80 = load i32, i32* %idx
%arrayidx80 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %80
%81 = load i8, i8* %arrayidx80
%extended81 = zext i8 %81 to i32
%result81 = call i32 @putchar(i32 %extended81)
%82 = load i32, i32* %idx
%83 = add i32 %82, 2
store i32 %83, i32* %idx
%84 = load i32, i32* %idx
%arrayidx84 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %84
%85 = load i8, i8* %arrayidx84
%extended85 = zext i8 %85 to i32
%result85 = call i32 @putchar(i32 %extended85)
%86 = load i32, i32* %idx
%arrayidx86 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %86
%87 = load i8, i8* %arrayidx86
%88 = add i8 %87, 3
store i8 %88, i8* %arrayidx86
%89 = load i32, i32* %idx
%arrayidx89 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %89
%90 = load i8, i8* %arrayidx89
%extended90 = zext i8 %90 to i32
%result90 = call i32 @putchar(i32 %extended90)
%91 = load i32, i32* %idx
%arrayidx91 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %91
%92 = load i8, i8* %arrayidx91
%93 = sub i8 %92, 6
store i8 %93, i8* %arrayidx91
%94 = load i32, i32* %idx
%arrayidx94 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %94
%95 = load i8, i8* %arrayidx94
%extended95 = zext i8 %95 to i32
%result95 = call i32 @putchar(i32 %extended95)
%96 = load i32, i32* %idx
%97 = sub i32 %96, 1
store i32 %97, i32* %idx
%98 = load i32, i32* %idx
%arrayidx98 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %98
%99 = load i8, i8* %arrayidx98
%100 = sub i8 %99, 1
store i8 %100, i8* %arrayidx98
%101 = load i32, i32* %idx
%arrayidx101 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %101
%102 = load i8, i8* %arrayidx101
%extended102 = zext i8 %102 to i32
%result102 = call i32 @putchar(i32 %extended102)
%103 = load i32, i32* %idx
%104 = sub i32 %103, 3
store i32 %104, i32* %idx
%105 = load i32, i32* %idx
%arrayidx105 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %105
%106 = load i8, i8* %arrayidx105
%107 = add i8 %106, 1
store i8 %107, i8* %arrayidx105
%108 = load i32, i32* %idx
%arrayidx108 = getelementptr inbounds [30000 x i8], [30000 x i8]* %arr, i32 0, i32 %108
%109 = load i8, i8* %arrayidx108
%extended109 = zext i8 %109 to i32
%result109 = call i32 @putchar(i32 %extended109)
ret i32 0
}
