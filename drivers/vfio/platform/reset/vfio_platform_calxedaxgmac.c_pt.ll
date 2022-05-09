; ModuleID = '/llk/IR_all_yes/drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c_pt.bc'
source_filename = "../drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vfio_platform_reset_node = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.vfio_platform_device = type { %struct.vfio_device, ptr, i32, ptr, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8 }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vfio_platform_region = type { i64, i32, i32, i32, ptr }

@__UNIQUE_ID_alias232 = internal constant [61 x i8] c"vfio_platform_calxedaxgmac.alias=vfio-reset:calxeda,hb-xgmac\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calxeda,hb-xgmac\00", [47 x i8] zeroinitializer }, align 32
@__initcall__kmod_vfio_platform_calxedaxgmac__233_69_vfio_platform_calxedaxgmac_reset_module_init6 = internal global ptr @vfio_platform_calxedaxgmac_reset_module_init, section ".initcall6.init", align 4
@__exitcall_vfio_platform_calxedaxgmac_reset_module_exit = internal global ptr @vfio_platform_calxedaxgmac_reset_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version234 = internal constant [39 x i8] c"vfio_platform_calxedaxgmac.version=0.1\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vfio_platform_calxedaxgmac\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.3 }, section "__modver", align 4
@__UNIQUE_ID_file235 = internal constant [87 x i8] c"vfio_platform_calxedaxgmac.file=drivers/vfio/platform/reset/vfio-platform-calxedaxgmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [42 x i8] c"vfio_platform_calxedaxgmac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [69 x i8] c"vfio_platform_calxedaxgmac.author=Eric Auger <eric.auger@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [92 x i8] c"vfio_platform_calxedaxgmac.description=Reset support for Calxeda xgmac vfio platform device\00", section ".modinfo", align 1
@vfio_platform_calxedaxgmac_reset_module_init.vfio_platform_calxedaxgmac_reset_node = internal global { %struct.vfio_platform_reset_node, [44 x i8] } { %struct.vfio_platform_reset_node { %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @vfio_platform_calxedaxgmac_reset }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 71, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [38 x i8] c"vfio_platform_calxedaxgmac_reset_node\00", align 1
@___asan_gen_.17 = private constant [60 x i8] c"../drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 69, i32 1 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__UNIQUE_ID_version234, ptr @__exitcall_vfio_platform_calxedaxgmac_reset_module_exit, ptr @__initcall__kmod_vfio_platform_calxedaxgmac__233_69_vfio_platform_calxedaxgmac_reset_module_init6, ptr @__modver_attr, ptr @vfio_platform_calxedaxgmac_reset_module_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vfio_platform_calxedaxgmac_reset_module_init.vfio_platform_calxedaxgmac_reset_node], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_platform_calxedaxgmac_reset_module_init.vfio_platform_calxedaxgmac_reset_node to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vfio_platform_calxedaxgmac_reset_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @vfio_platform_unregister_reset(ptr noundef nonnull @.str, ptr noundef nonnull @vfio_platform_calxedaxgmac_reset) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_platform_unregister_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_calxedaxgmac_reset(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regions = getelementptr inbounds %struct.vfio_platform_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regions, align 4
  %ioaddr = getelementptr inbounds %struct.vfio_platform_region, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  %conv = trunc i64 %5 to i32
  %size = getelementptr inbounds %struct.vfio_platform_region, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %call = tail call ptr @ioremap(i32 noundef %conv, i32 noundef %7) #3
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %ioaddr, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !29
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 3864
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  %14 = and i32 %13, -35651585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #3, !srcloc !29
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %16 = and i32 %15, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %16) #3, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_platform_calxedaxgmac_reset_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__vfio_platform_register_reset(ptr noundef nonnull @vfio_platform_calxedaxgmac_reset_module_init.vfio_platform_calxedaxgmac_reset_node) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vfio_platform_register_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_alias232, !1, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!1 = !{!"../drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c", i32 69, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_vfio_platform_calxedaxgmac__233_69_vfio_platform_calxedaxgmac_reset_module_init6, !1, !"__initcall__kmod_vfio_platform_calxedaxgmac__233_69_vfio_platform_calxedaxgmac_reset_module_init6", i1 false, i1 false}
!4 = !{ptr @__exitcall_vfio_platform_calxedaxgmac_reset_module_exit, !1, !"__exitcall_vfio_platform_calxedaxgmac_reset_module_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version234, !6, !"__UNIQUE_ID_version234", i1 false, i1 false}
!6 = !{!"../drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c", i32 71, i32 1}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_file235, !12, !"__UNIQUE_ID_file235", i1 false, i1 false}
!12 = !{!"../drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c", i32 72, i32 1}
!13 = !{ptr @__UNIQUE_ID_license236, !12, !"__UNIQUE_ID_license236", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author237, !15, !"__UNIQUE_ID_author237", i1 false, i1 false}
!15 = !{!"../drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c", i32 73, i32 1}
!16 = !{ptr @__UNIQUE_ID_description238, !17, !"__UNIQUE_ID_description238", i1 false, i1 false}
!17 = !{!"../drivers/vfio/platform/reset/vfio_platform_calxedaxgmac.c", i32 74, i32 1}
!18 = !{ptr @vfio_platform_calxedaxgmac_reset_module_init.vfio_platform_calxedaxgmac_reset_node, !1, !"vfio_platform_calxedaxgmac_reset_node", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2154289367}
!29 = !{i64 4035939}
!30 = !{i64 4036357}
!31 = !{i64 2154287753}
!32 = !{i64 2154288004}
!33 = !{i64 2154288692}
!34 = !{i64 2154288943}
