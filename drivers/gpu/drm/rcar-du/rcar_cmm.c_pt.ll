; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_cmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_cmm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rcar_cmm_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_rcar_cmm_setup\09\09\09\09"
module asm "\09.long\09__crc_rcar_cmm_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_cmm_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_cmm_setup\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_cmm_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rcar_cmm_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_rcar_cmm_enable\09\09\09\09"
module asm "\09.long\09__crc_rcar_cmm_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_cmm_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_cmm_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_cmm_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rcar_cmm_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_rcar_cmm_disable\09\09\09\09"
module asm "\09.long\09__crc_rcar_cmm_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_cmm_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_cmm_disable\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_cmm_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rcar_cmm_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rcar_cmm_init\09\09\09\09"
module asm "\09.long\09__crc_rcar_cmm_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_cmm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_cmm_init\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_cmm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rcar_cmm = type { ptr, %struct.anon.44 }
%struct.anon.44 = type { i8 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@__kstrtab_rcar_cmm_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_cmm_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_cmm_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_cmm_setup to i32), ptr @__kstrtab_rcar_cmm_setup, ptr @__kstrtabns_rcar_cmm_setup }, section "___ksymtab_gpl+rcar_cmm_setup", align 4
@__kstrtab_rcar_cmm_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_cmm_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_cmm_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_cmm_enable to i32), ptr @__kstrtab_rcar_cmm_enable, ptr @__kstrtabns_rcar_cmm_enable }, section "___ksymtab_gpl+rcar_cmm_enable", align 4
@__kstrtab_rcar_cmm_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_cmm_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_cmm_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_cmm_disable to i32), ptr @__kstrtab_rcar_cmm_disable, ptr @__kstrtabns_rcar_cmm_disable }, section "___ksymtab_gpl+rcar_cmm_disable", align 4
@__kstrtab_rcar_cmm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_cmm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_cmm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_cmm_init to i32), ptr @__kstrtab_rcar_cmm_init, ptr @__kstrtabns_rcar_cmm_init }, section "___ksymtab_gpl+rcar_cmm_init", align 4
@__initcall__kmod_rcar_cmm__175_213_rcar_cmm_platform_driver_init6 = internal global ptr @rcar_cmm_platform_driver_init, section ".initcall6.init", align 4
@rcar_cmm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_cmm_probe, ptr @rcar_cmm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_cmm_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_cmm_platform_driver_exit = internal global ptr @rcar_cmm_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author176 = internal constant [57 x i8] c"rcar_cmm.author=Jacopo Mondi <jacopo+renesas@jmondi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [46 x i8] c"rcar_cmm.description=Renesas R-Car CMM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [47 x i8] c"rcar_cmm.file=drivers/gpu/drm/rcar-du/rcar_cmm\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [24 x i8] c"rcar_cmm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rcar-cmm\00", [23 x i8] zeroinitializer }, align 32
@rcar_cmm_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-cmm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-cmm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"rcar_cmm_platform_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 204, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 208, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"rcar_cmm_of_table\00", align 1
@___asan_gen_.8 = private constant [38 x i8] c"../drivers/gpu/drm/rcar-du/rcar_cmm.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 197, i32 34 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_rcar_cmm_platform_driver_exit, ptr @__initcall__kmod_rcar_cmm__175_213_rcar_cmm_platform_driver_init6, ptr @__ksymtab_rcar_cmm_disable, ptr @__ksymtab_rcar_cmm_enable, ptr @__ksymtab_rcar_cmm_init, ptr @__ksymtab_rcar_cmm_setup, ptr @rcar_cmm_platform_driver_exit, ptr @rcar_cmm_platform_driver, ptr @.str, ptr @rcar_cmm_of_table], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_cmm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_cmm_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_cmm_setup(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %tobool.not = icmp eq ptr %3, null
  %lut1 = getelementptr inbounds %struct.rcar_cmm, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lut1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lut1, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !35
  %8 = ptrtoint ptr %lut1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %lut1, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.then10, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 16777216) #6, !srcloc !35
  %11 = ptrtoint ptr %lut1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %lut1, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13
  %i.021.i = phi i32 [ 0, %if.end13 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_color_lut, ptr %13, i32 %i.021.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %15 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 128
  %shr4.i.i = lshr i32 %add.i.i, 8
  %16 = tail call i32 @llvm.umin.i32(i32 %shr4.i.i, i32 255) #6
  %shl.i = shl nuw nsw i32 %16, 16
  %green.i = getelementptr %struct.drm_color_lut, ptr %13, i32 %i.021.i, i32 1
  %17 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %green.i, align 2
  %conv3.i = zext i16 %18 to i32
  %add.i17.i = add nuw nsw i32 %conv3.i, 128
  %shr4.i18.i = lshr i32 %add.i17.i, 8
  %19 = tail call i32 @llvm.umin.i32(i32 %shr4.i18.i, i32 255) #6
  %shl5.i = shl nuw nsw i32 %19, 8
  %or.i = or i32 %shl5.i, %shl.i
  %blue.i = getelementptr %struct.drm_color_lut, ptr %13, i32 %i.021.i, i32 2
  %20 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %blue.i, align 2
  %conv7.i = zext i16 %21 to i32
  %add.i19.i = add nuw nsw i32 %conv7.i, 128
  %shr4.i20.i = lshr i32 %add.i19.i, 8
  %22 = tail call i32 @llvm.umin.i32(i32 %shr4.i20.i, i32 255) #6
  %or9.i = or i32 %or.i, %22
  %mul.i = shl nuw nsw i32 %i.021.i, 2
  %add.i = add nuw nsw i32 %mul.i, 1536
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #6, !srcloc !35
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.then3, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_cmm_enable(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !37
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %1 = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_cmm_disable(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !35
  %lut = getelementptr inbounds %struct.rcar_cmm, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lut to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %lut, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rcar_cmm_init(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  %. = select i1 %tobool.not, i32 -517, i32 0
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_cmm_platform_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_cmm_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_cmm_platform_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_cmm_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_cmm_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_cmm_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_rcar_cmm_setup, !1, !"__ksymtab_rcar_cmm_setup", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 106, i32 1}
!2 = !{ptr @__ksymtab_rcar_cmm_enable, !3, !"__ksymtab_rcar_cmm_enable", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 131, i32 1}
!4 = !{ptr @__ksymtab_rcar_cmm_disable, !5, !"__ksymtab_rcar_cmm_disable", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 152, i32 1}
!6 = !{ptr @__ksymtab_rcar_cmm_init, !7, !"__ksymtab_rcar_cmm_init", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 170, i32 1}
!8 = !{ptr @__initcall__kmod_rcar_cmm__175_213_rcar_cmm_platform_driver_init6, !9, !"__initcall__kmod_rcar_cmm__175_213_rcar_cmm_platform_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 213, i32 1}
!10 = !{ptr @__exitcall_rcar_cmm_platform_driver_exit, !9, !"__exitcall_rcar_cmm_platform_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author176, !12, !"__UNIQUE_ID_author176", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 215, i32 1}
!13 = !{ptr @__UNIQUE_ID_description177, !14, !"__UNIQUE_ID_description177", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 216, i32 1}
!15 = !{ptr @__UNIQUE_ID_file178, !16, !"__UNIQUE_ID_file178", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 217, i32 1}
!17 = !{ptr @__UNIQUE_ID_license179, !16, !"__UNIQUE_ID_license179", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 208, i32 11}
!20 = !{ptr @rcar_cmm_platform_driver, !21, !"rcar_cmm_platform_driver", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 204, i32 31}
!22 = !{ptr @rcar_cmm_of_table, !23, !"rcar_cmm_of_table", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/rcar-du/rcar_cmm.c", i32 197, i32 34}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{i64 2148875742}
!35 = !{i64 688796}
!36 = !{i64 2148424293}
!37 = !{i64 910893, i64 910918, i64 910940, i64 910956, i64 910968, i64 910988, i64 911012, i64 911028, i64 911040}
!38 = !{i64 2148424481}
