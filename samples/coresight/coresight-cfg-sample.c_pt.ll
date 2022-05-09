; ModuleID = '/llk/IR_all_yes/samples/coresight/coresight-cfg-sample.c_pt.bc'
source_filename = "../samples/coresight/coresight-cfg-sample.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cscfg_config_desc = type { ptr, ptr, %struct.list_head, i32, ptr, i32, i32, ptr, ptr, %struct.atomic_t, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cscfg_load_owner_info = type { %struct.list_head, i32, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"autofdo2\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"Setup ETMs with strobing for autofdo\0ASupplied presets allow experimentation with mark-space ratio for various loads\0A\00", [43 x i8] zeroinitializer }, align 32
@afdo2_ref_names = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.2], [28 x i8] zeroinitializer }, align 32
@afdo2_presets = internal global { [4 x [2 x i64]], [32 x i8] } { [4 x [2 x i64]] [[2 x i64] [i64 1000, i64 100], [2 x i64] [i64 1000, i64 1000], [2 x i64] [i64 1000, i64 5000], [2 x i64] [i64 1000, i64 10000]], [32 x i8] zeroinitializer }, align 32
@afdo2 = dso_local global { %struct.cscfg_config_desc, [44 x i8] } { %struct.cscfg_config_desc { ptr @.str, ptr @.str.1, %struct.list_head zeroinitializer, i32 1, ptr @afdo2_ref_names, i32 4, i32 2, ptr @afdo2_presets, ptr null, %struct.atomic_t zeroinitializer, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_license250 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [42 x i8] c"author=Mike Leach <mike.leach@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [37 x i8] c"description=CoreSight Syscfg Example\00", section ".modinfo", align 1
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"strobing\00", [23 x i8] zeroinitializer }, align 32
@sample_cfgs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @afdo2, ptr null], [24 x i8] zeroinitializer }, align 32
@sample_feats = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@mod_owner = internal global { %struct.cscfg_load_owner_info, [16 x i8] } { %struct.cscfg_load_owner_info { %struct.list_head zeroinitializer, i32 1, ptr @__this_module }, [16 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 33, i32 10 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 34, i32 17 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"afdo2_ref_names\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 17, i32 20 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"afdo2_presets\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 25, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"afdo2\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 32, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 18, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"sample_cfgs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 47, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"sample_feats\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 43, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"mod_owner\00", align 1
@___asan_gen_.28 = private constant [44 x i8] c"../samples/coresight/coresight-cfg-sample.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 52, i32 37 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license250, ptr @.str, ptr @.str.1, ptr @afdo2_ref_names, ptr @afdo2_presets, ptr @afdo2, ptr @.str.2, ptr @sample_cfgs, ptr @sample_feats, ptr @mod_owner], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afdo2_ref_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afdo2_presets to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afdo2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_cfgs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_feats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_owner to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cscfg_load_config_sets(ptr noundef nonnull @sample_cfgs, ptr noundef nonnull @sample_feats, ptr noundef nonnull @mod_owner) #2
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @cscfg_unload_config_sets(ptr noundef nonnull @mod_owner) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cscfg_load_config_sets(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cscfg_unload_config_sets(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 33, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 34, i32 17}
!4 = !{ptr @afdo2, !5, !"afdo2", i1 false, i1 false}
!5 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 32, i32 26}
!6 = !{ptr @__UNIQUE_ID_license250, !7, !"__UNIQUE_ID_license250", i1 false, i1 false}
!7 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 71, i32 1}
!8 = !{ptr @__UNIQUE_ID_author251, !9, !"__UNIQUE_ID_author251", i1 false, i1 false}
!9 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 72, i32 1}
!10 = !{ptr @__UNIQUE_ID_description252, !11, !"__UNIQUE_ID_description252", i1 false, i1 false}
!11 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 73, i32 1}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 18, i32 2}
!14 = !{ptr @afdo2_ref_names, !15, !"afdo2_ref_names", i1 false, i1 false}
!15 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 17, i32 20}
!16 = !{ptr @afdo2_presets, !17, !"afdo2_presets", i1 false, i1 false}
!17 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 25, i32 12}
!18 = !{ptr @sample_cfgs, !19, !"sample_cfgs", i1 false, i1 false}
!19 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 47, i32 34}
!20 = !{ptr @sample_feats, !21, !"sample_feats", i1 false, i1 false}
!21 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 43, i32 35}
!22 = !{ptr @mod_owner, !23, !"mod_owner", i1 false, i1 false}
!23 = !{!"../samples/coresight/coresight-cfg-sample.c", i32 52, i32 37}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
