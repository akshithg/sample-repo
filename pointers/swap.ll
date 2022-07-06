; ModuleID = 'swap.c'
source_filename = "swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @swap(i8** %p, i8** %q) #0 {
entry:
  %p.addr = alloca i8**, align 8
  %q.addr = alloca i8**, align 8
  %t = alloca i8*, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8** %q, i8*** %q.addr, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %t, align 8
  %2 = load i8**, i8*** %q.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8**, i8*** %p.addr, align 8
  store i8* %3, i8** %4, align 8
  %5 = load i8*, i8** %t, align 8
  %6 = load i8**, i8*** %q.addr, align 8
  store i8* %5, i8** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %a1 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i8* %a1, i8** %a, align 8
  store i8* %b1, i8** %b, align 8
  call void @swap(i8** %a, i8** %b)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
