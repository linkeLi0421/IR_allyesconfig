; ModuleID = '/llk/IR_all_yes/init/version.c_pt.bc'
source_filename = "../init/version.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+init_uts_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_init_uts_ns\09\09\09\09"
module asm "\09.long\09__crc_init_uts_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_uts_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22init_uts_ns\22\09\09\09\09\09"
module asm "__kstrtabns_init_uts_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.user_namespace = type opaque
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.24 = type { %struct.elf32_note, [6 x i8], [2 x i8], [1 x i8] }
%struct.elf32_note = type { i32, i32, i32 }
%struct.anon.25 = type { %struct.elf32_note, [6 x i8], i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 1
@utsns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@init_uts_ns = dso_local global { %struct.uts_namespace, [96 x i8] } { %struct.uts_namespace { %struct.new_utsname { [65 x i8] c"Linux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"(none)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"5.17.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"#2 SMP Fri May 6 12:29:42 UTC 2022\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [65 x i8] c"(none)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, ptr @init_user_ns, ptr null, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr @utsns_operations, i32 -268435458, %struct.refcount_struct { %struct.atomic_t { i32 2 } } } }, [96 x i8] zeroinitializer }, align 32
@__kstrtab_init_uts_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_uts_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_init_uts_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_uts_ns to i32), ptr @__kstrtab_init_uts_ns, ptr @__kstrtabns_init_uts_ns }, section "___ksymtab_gpl+init_uts_ns", align 4
@linux_banner = dso_local constant { [241 x i8], [47 x i8] } { [241 x i8] c"Linux version 5.17.0 (root@a4930c8ddf7d) (clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe), GNU ld (GNU Binutils for Ubuntu) 2.34) #2 SMP Fri May 6 12:29:42 UTC 2022\0A\00", [47 x i8] zeroinitializer }, align 32
@linux_proc_banner = dso_local constant { [202 x i8], [54 x i8] } { [202 x i8] c"%s version %s (root@a4930c8ddf7d) (clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe), GNU ld (GNU Binutils for Ubuntu) 2.34) %s\0A\00", [54 x i8] zeroinitializer }, align 32
@_note_48 = internal constant %struct.anon.24 { %struct.elf32_note { i32 6, i32 1, i32 256 }, [6 x i8] c"Linux\00", [2 x i8] undef, [1 x i8] zeroinitializer }, section ".note.Linux", align 4
@_note_49 = internal constant %struct.anon.25 { %struct.elf32_note { i32 6, i32 4, i32 257 }, [6 x i8] c"Linux\00", i32 0 }, section ".note.Linux", align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"init_uts_ns\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 20, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"linux_banner\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 39, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"linux_proc_banner\00", align 1
@___asan_gen_.8 = private constant [18 x i8] c"../init/version.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 43, i32 12 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_init_uts_ns, ptr @_note_48, ptr @_note_49, ptr @init_uts_ns, ptr @linux_banner, ptr @linux_proc_banner], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_uts_ns to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linux_banner to i32), i32 241, i32 288, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linux_proc_banner to i32), i32 202, i32 256, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @init_uts_ns, !1, !"init_uts_ns", i1 false, i1 false}
!1 = !{!"../init/version.c", i32 20, i32 22}
!2 = !{ptr @__ksymtab_init_uts_ns, !3, !"__ksymtab_init_uts_ns", i1 false, i1 false}
!3 = !{!"../init/version.c", i32 36, i32 1}
!4 = !{ptr @linux_banner, !5, !"linux_banner", i1 false, i1 false}
!5 = !{!"../init/version.c", i32 39, i32 12}
!6 = !{ptr @linux_proc_banner, !7, !"linux_proc_banner", i1 false, i1 false}
!7 = !{!"../init/version.c", i32 43, i32 12}
!8 = !{ptr @_note_48, !9, !"_note_48", i1 false, i1 false}
!9 = !{!"../init/version.c", i32 48, i32 1}
!10 = !{ptr @_note_49, !11, !"_note_49", i1 false, i1 false}
!11 = !{!"../init/version.c", i32 49, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
