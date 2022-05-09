; ModuleID = '/llk/IR_all_yes/security/keys/sysctl.c_pt.bc'
source_filename = "../security/keys/sysctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"maxkeys\00", [24 x i8] zeroinitializer }, align 32
@key_quota_maxkeys = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxbytes\00", [23 x i8] zeroinitializer }, align 32
@key_quota_maxbytes = external dso_local global i32, align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"root_maxkeys\00", [19 x i8] zeroinitializer }, align 32
@key_quota_root_maxkeys = external dso_local global i32, align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"root_maxbytes\00", [18 x i8] zeroinitializer }, align 32
@key_quota_root_maxbytes = external dso_local global i32, align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gc_delay\00", [23 x i8] zeroinitializer }, align 32
@key_gc_delay = external dso_local global i32, align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"persistent_keyring_expiry\00", [38 x i8] zeroinitializer }, align 32
@persistent_keyring_expiry = external dso_local global i32, align 4
@key_sysctls = dso_local global { [7 x %struct.ctl_table], [36 x i8] } { [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr @key_quota_maxkeys, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.1, ptr @key_quota_maxbytes, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.2, ptr @key_quota_root_maxkeys, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.3, ptr @key_quota_root_maxbytes, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.4, ptr @key_gc_delay, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.5, ptr @persistent_keyring_expiry, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 14, i32 15 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 23, i32 15 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 32, i32 15 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 41, i32 15 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 50, i32 15 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 60, i32 15 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"key_sysctls\00", align 1
@___asan_gen_.25 = private constant [26 x i8] c"../security/keys/sysctl.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 12, i32 18 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @key_sysctls], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_sysctls to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/sysctl.c", i32 14, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/keys/sysctl.c", i32 23, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/keys/sysctl.c", i32 32, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/keys/sysctl.c", i32 41, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/keys/sysctl.c", i32 50, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/keys/sysctl.c", i32 60, i32 15}
!12 = !{ptr @key_sysctls, !13, !"key_sysctls", i1 false, i1 false}
!13 = !{!"../security/keys/sysctl.c", i32 12, i32 18}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
