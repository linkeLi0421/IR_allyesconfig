; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-mmio.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-mmio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_mmio_clk\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_mmio_clk\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_mmio_clk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_mmio_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_mmio_clk\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_mmio_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_mmio_clk\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_mmio_clk\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_mmio_clk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_mmio_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_mmio_clk\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_mmio_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regmap_mmio_attach_clk\22, \22a\22\09"
module asm "\09.weak\09__crc_regmap_mmio_attach_clk\09\09\09\09"
module asm "\09.long\09__crc_regmap_mmio_attach_clk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_mmio_attach_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_mmio_attach_clk\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_mmio_attach_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regmap_mmio_detach_clk\22, \22a\22\09"
module asm "\09.weak\09__crc_regmap_mmio_detach_clk\09\09\09\09"
module asm "\09.long\09__crc_regmap_mmio_detach_clk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_mmio_detach_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_mmio_detach_clk\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_mmio_detach_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_mmio_context = type { ptr, i32, i8, i8, ptr, ptr, ptr }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }

@regmap_mmio = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 1, ptr null, ptr null, ptr null, ptr @regmap_mmio_write, ptr null, ptr null, ptr @regmap_mmio_read, ptr @regmap_mmio_free_context, ptr null, i8 0, i32 0, i32 2, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___regmap_init_mmio_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_mmio_clk = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_mmio_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_mmio_clk to i32), ptr @__kstrtab___regmap_init_mmio_clk, ptr @__kstrtabns___regmap_init_mmio_clk }, section "___ksymtab_gpl+__regmap_init_mmio_clk", align 4
@__kstrtab___devm_regmap_init_mmio_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_mmio_clk = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_mmio_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_mmio_clk to i32), ptr @__kstrtab___devm_regmap_init_mmio_clk, ptr @__kstrtabns___devm_regmap_init_mmio_clk }, section "___ksymtab_gpl+__devm_regmap_init_mmio_clk", align 4
@__kstrtab_regmap_mmio_attach_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_mmio_attach_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_mmio_attach_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_mmio_attach_clk to i32), ptr @__kstrtab_regmap_mmio_attach_clk, ptr @__kstrtabns_regmap_mmio_attach_clk }, section "___ksymtab_gpl+regmap_mmio_attach_clk", align 4
@__kstrtab_regmap_mmio_detach_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_mmio_detach_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_mmio_detach_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_mmio_detach_clk to i32), ptr @__kstrtab_regmap_mmio_detach_clk, ptr @__kstrtabns_regmap_mmio_detach_clk }, section "___ksymtab_gpl+regmap_mmio_detach_clk", align 4
@__UNIQUE_ID_file223 = internal constant [49 x i8] c"regmap_mmio.file=drivers/base/regmap/regmap-mmio\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [27 x i8] c"regmap_mmio.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"regmap_mmio\00", align 1
@___asan_gen_.6 = private constant [37 x i8] c"../drivers/base/regmap/regmap-mmio.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 256, i32 32 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__ksymtab___devm_regmap_init_mmio_clk, ptr @__ksymtab___regmap_init_mmio_clk, ptr @__ksymtab_regmap_mmio_attach_clk, ptr @__ksymtab_regmap_mmio_detach_clk, ptr @regmap_mmio], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_mmio to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_mmio_clk(ptr noundef %dev, ptr noundef %clk_id, ptr noundef %regs, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @regmap_mmio_gen_context(ptr noundef %dev, ptr noundef %clk_id, ptr noundef %regs, ptr noundef %config)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call ptr @__regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_mmio, ptr noundef %call, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @regmap_mmio_gen_context(ptr noundef %dev, ptr noundef %clk_id, ptr noundef %regs, ptr noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_bits, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8, label %entry.if.end_crit_edge
    i32 16, label %entry.if.end_crit_edge142
    i32 32, label %entry.if.end_crit_edge143
  ]

entry.if.end_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge142, %entry.if.end_crit_edge143
  %pad_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 3
  %3 = ptrtoint ptr %pad_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pad_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %5 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val_bits, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %6, label %if.end5.cleanup_crit_edge [
    i32 8, label %if.end5.if.end9_crit_edge
    i32 16, label %if.end5.sw.epilog.i_crit_edge
    i32 32, label %sw.bb2.i
  ]

if.end5.sw.epilog.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end5.sw.epilog.i_crit_edge
  %min_stride.0.i = phi i32 [ 4, %sw.bb2.i ], [ 2, %if.end5.sw.epilog.i_crit_edge ]
  br label %if.end9

if.end9:                                          ; preds = %sw.epilog.i, %if.end5.if.end9_crit_edge
  %retval.0.i136.ph = phi i32 [ 0, %if.end5.if.end9_crit_edge ], [ %min_stride.0.i, %sw.epilog.i ]
  %reg_stride = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 2
  %8 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_stride, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %retval.0.i136.ph)
  %cmp10 = icmp slt i32 %9, %retval.0.i136.ph
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 24) #7
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regs, ptr %call7.i.i, align 8
  %12 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val_bits, align 4
  %div = sdiv i32 %13, 8
  %val_bytes = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %val_bytes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %val_bytes, align 4
  %use_relaxed_mmio = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 36
  %15 = ptrtoint ptr %use_relaxed_mmio to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_relaxed_mmio, align 1, !range !22
  %relaxed_mmio = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %relaxed_mmio to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %relaxed_mmio, align 8
  %clk = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -19 to ptr), ptr %clk, align 4
  %call23 = tail call i32 @regmap_get_val_endian(ptr noundef %dev, ptr noundef nonnull @regmap_mmio, ptr noundef %config) #4
  %19 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call23, label %if.end18.err_free_crit_edge [
    i32 0, label %if.end18.sw.bb_crit_edge
    i32 2, label %if.end18.sw.bb_crit_edge144
    i32 1, label %if.end18.sw.bb52_crit_edge
    i32 3, label %if.end18.sw.bb52_crit_edge145
  ]

if.end18.sw.bb52_crit_edge145:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb52

if.end18.sw.bb52_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb52

if.end18.sw.bb_crit_edge144:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end18.err_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge144
  %20 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val_bits, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %21, label %sw.bb.err_free_crit_edge [
    i32 8, label %sw.bb25
    i32 16, label %sw.bb32
    i32 32, label %sw.bb42
  ]

sw.bb.err_free_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

sw.bb25:                                          ; preds = %sw.bb
  %23 = ptrtoint ptr %relaxed_mmio to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %relaxed_mmio, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool27.not = icmp eq i8 %24, 0
  %reg_read29 = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 6
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %reg_read29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @regmap_mmio_read8_relaxed, ptr %reg_read29, align 4
  br label %sw.epilog66

if.else:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %reg_read29 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @regmap_mmio_read8, ptr %reg_read29, align 4
  br label %sw.epilog66

sw.bb32:                                          ; preds = %sw.bb
  %27 = ptrtoint ptr %relaxed_mmio to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %relaxed_mmio, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool34.not = icmp eq i8 %28, 0
  %reg_read39 = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 6
  br i1 %tobool34.not, label %if.else38, label %if.then35

if.then35:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %reg_read39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @regmap_mmio_read16le_relaxed, ptr %reg_read39, align 4
  br label %sw.epilog66

if.else38:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %reg_read39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @regmap_mmio_read16le, ptr %reg_read39, align 4
  br label %sw.epilog66

sw.bb42:                                          ; preds = %sw.bb
  %31 = ptrtoint ptr %relaxed_mmio to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %relaxed_mmio, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool44.not = icmp eq i8 %32, 0
  %reg_read49 = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 6
  br i1 %tobool44.not, label %if.else48, label %if.then45

if.then45:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %reg_read49 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @regmap_mmio_read32le_relaxed, ptr %reg_read49, align 4
  br label %sw.epilog66

if.else48:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %reg_read49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @regmap_mmio_read32le, ptr %reg_read49, align 4
  br label %sw.epilog66

sw.bb52:                                          ; preds = %if.end18.sw.bb52_crit_edge, %if.end18.sw.bb52_crit_edge145
  %35 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val_bits, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %36, label %sw.bb52.err_free_crit_edge [
    i32 8, label %sw.bb54
    i32 16, label %sw.bb57
    i32 32, label %sw.bb60
  ]

sw.bb52.err_free_crit_edge:                       ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

sw.bb54:                                          ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #6
  %reg_read55 = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %reg_read55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @regmap_mmio_read8, ptr %reg_read55, align 4
  br label %sw.epilog66

sw.bb57:                                          ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #6
  %reg_read58 = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %reg_read58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @regmap_mmio_read16be, ptr %reg_read58, align 4
  br label %sw.epilog66

sw.bb60:                                          ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #6
  %reg_read61 = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %reg_read61 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @regmap_mmio_read32be, ptr %reg_read61, align 4
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %sw.bb60, %sw.bb57, %sw.bb54, %if.else48, %if.then45, %if.else38, %if.then35, %if.else, %if.then28
  %regmap_mmio_write8.sink = phi ptr [ @regmap_mmio_write8, %sw.bb54 ], [ @regmap_mmio_write16be, %sw.bb57 ], [ @regmap_mmio_write32be, %sw.bb60 ], [ @regmap_mmio_write8, %if.else ], [ @regmap_mmio_write8_relaxed, %if.then28 ], [ @regmap_mmio_write16le, %if.else38 ], [ @regmap_mmio_write16le_relaxed, %if.then35 ], [ @regmap_mmio_write32le, %if.else48 ], [ @regmap_mmio_write32le_relaxed, %if.then45 ]
  %reg_write56 = getelementptr inbounds %struct.regmap_mmio_context, ptr %call7.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %reg_write56 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %regmap_mmio_write8.sink, ptr %reg_write56, align 8
  %cmp67 = icmp eq ptr %clk_id, null
  br i1 %cmp67, label %sw.epilog66.cleanup_crit_edge, label %if.end69

sw.epilog66.cleanup_crit_edge:                    ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end69:                                         ; preds = %sw.epilog66
  %call70 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull %clk_id) #4
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call70, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %call70 to i32
  br label %err_free

if.end77:                                         ; preds = %if.end69
  %call79 = tail call i32 @clk_prepare(ptr noundef %call70) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then81, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %45) #4
  br label %err_free

err_free:                                         ; preds = %if.then81, %if.then74, %sw.bb52.err_free_crit_edge, %sw.bb.err_free_crit_edge, %if.end18.err_free_crit_edge
  %ret.0 = phi i32 [ %43, %if.then74 ], [ %call79, %if.then81 ], [ -22, %sw.bb.err_free_crit_edge ], [ -22, %sw.bb52.err_free_crit_edge ], [ -22, %if.end18.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  %46 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end77.cleanup_crit_edge, %sw.epilog66.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %46, %err_free ], [ %call7.i.i, %sw.epilog66.cleanup_crit_edge ], [ %call7.i.i, %if.end77.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end9.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end13.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef %clk_id, ptr noundef %regs, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @regmap_mmio_gen_context(ptr noundef %dev, ptr noundef %clk_id, ptr noundef %regs, ptr noundef %config)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_mmio, ptr noundef %call, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regmap_mmio_attach_clk(ptr nocapture noundef readonly %map, ptr noundef %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_context = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 9
  %0 = ptrtoint ptr %bus_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_context, align 4
  %clk1 = getelementptr inbounds %struct.regmap_mmio_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %clk, ptr %clk1, align 4
  %attached_clk = getelementptr inbounds %struct.regmap_mmio_context, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %attached_clk to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %attached_clk, align 1
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regmap_mmio_detach_clk(ptr nocapture noundef readonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_context = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 9
  %0 = ptrtoint ptr %bus_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_context, align 4
  %clk = getelementptr inbounds %struct.regmap_mmio_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #4
  %attached_clk = getelementptr inbounds %struct.regmap_mmio_context, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %attached_clk to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %attached_clk, align 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %clk, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_endian(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read8_relaxed(ptr nocapture noundef readonly %ctx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !23
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_write8_relaxed(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read8(ptr nocapture noundef readonly %ctx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_write8(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %val to i8
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read16le_relaxed(ptr nocapture noundef readonly %ctx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !27
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_write16le_relaxed(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #4, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read16le(ptr nocapture noundef readonly %ctx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !27
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_write16le(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #4, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read32le_relaxed(ptr nocapture noundef readonly %ctx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !31
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_write32le_relaxed(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read32le(ptr nocapture noundef readonly %ctx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !31
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_write32le(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read16be(ptr nocapture noundef readonly %ctx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %conv = zext i16 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_write16be(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %val to i16
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %conv) #4, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read32be(ptr nocapture noundef readonly %ctx, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_write32be(ptr nocapture noundef readonly %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val) #4, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.regmap_mmio_context, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @clk_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %reg_write = getelementptr inbounds %struct.regmap_mmio_context, ptr %context, i32 0, i32 5
  %2 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_write, align 4
  tail call void %3(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i17 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_mmio_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.regmap_mmio_context, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @clk_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %reg_read = getelementptr inbounds %struct.regmap_mmio_context, ptr %context, i32 0, i32 6
  %2 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_read, align 4
  %call5 = tail call i32 %3(ptr noundef %context, i32 noundef %reg) #4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call5, ptr %val, align 4
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %cmp.i18 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_mmio_free_context(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.regmap_mmio_context, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void @clk_unprepare(ptr noundef %1) #4
  %attached_clk = getelementptr inbounds %struct.regmap_mmio_context, ptr %context, i32 0, i32 3
  %2 = ptrtoint ptr %attached_clk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %attached_clk, align 1, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %5) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @kfree(ptr noundef %context) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab___regmap_init_mmio_clk, !1, !"__ksymtab___regmap_init_mmio_clk", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-mmio.c", i32 411, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_mmio_clk, !3, !"__ksymtab___devm_regmap_init_mmio_clk", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-mmio.c", i32 429, i32 1}
!4 = !{ptr @__ksymtab_regmap_mmio_attach_clk, !5, !"__ksymtab_regmap_mmio_attach_clk", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-mmio.c", i32 440, i32 1}
!6 = !{ptr @__ksymtab_regmap_mmio_detach_clk, !7, !"__ksymtab_regmap_mmio_detach_clk", i1 false, i1 false}
!7 = !{!"../drivers/base/regmap/regmap-mmio.c", i32 451, i32 1}
!8 = !{ptr @__UNIQUE_ID_file223, !9, !"__UNIQUE_ID_file223", i1 false, i1 false}
!9 = !{!"../drivers/base/regmap/regmap-mmio.c", i32 453, i32 1}
!10 = !{ptr @__UNIQUE_ID_license224, !9, !"__UNIQUE_ID_license224", i1 false, i1 false}
!11 = !{ptr @regmap_mmio, !12, !"regmap_mmio", i1 false, i1 false}
!12 = !{!"../drivers/base/regmap/regmap-mmio.c", i32 256, i32 32}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i8 0, i8 2}
!23 = !{i64 2036956}
!24 = !{i64 2036561}
!25 = !{i64 2153593893}
!26 = !{i64 2153591849}
!27 = !{i64 2036338}
!28 = !{i64 2036138}
!29 = !{i64 2153594436}
!30 = !{i64 2153592163}
!31 = !{i64 2037176}
!32 = !{i64 2036758}
!33 = !{i64 2153595525}
!34 = !{i64 2153593020}
!35 = !{i64 2153595047}
!36 = !{i64 2153592748}
!37 = !{i64 2153596136}
!38 = !{i64 2153593605}
