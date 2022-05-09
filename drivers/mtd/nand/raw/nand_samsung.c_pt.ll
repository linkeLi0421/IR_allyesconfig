; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_samsung.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_samsung.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@samsung_nand_manuf_ops = dso_local constant { %struct.nand_manufacturer_ops, [16 x i8] } { %struct.nand_manufacturer_ops { ptr @samsung_nand_decode_id, ptr @samsung_nand_init, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/nand/raw/nand_samsung.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid OOB size value\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not decode ECC info\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mtd/rawnand.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", [53 x i8] zeroinitializer }, align 32
@switch.table.samsung_nand_decode_id = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 24, i32 40, i32 60], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 220, i64 241]
@___asan_gen_.6 = private unnamed_addr constant [23 x i8] c"samsung_nand_manuf_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 136, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 58, i32 4 }
@___asan_gen_.16 = private constant [39 x i8] c"../drivers/mtd/nand/raw/nand_samsung.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 91, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 1444, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [36 x i8] c"switch.table.samsung_nand_decode_id\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @samsung_nand_manuf_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.samsung_nand_decode_id], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_nand_manuf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.samsung_nand_decode_id to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_nand_decode_id(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %memorg.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %len = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %land.lhs.true, label %entry.if.else117_crit_edge

entry.if.else117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else117

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memorg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %land.lhs.true.nand_is_slc.exit_crit_edge, !prof !19

land.lhs.true.nand_is_slc.exit_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %nand_is_slc.exit

do.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  %4 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %memorg.i, align 8
  br label %nand_is_slc.exit

nand_is_slc.exit:                                 ; preds = %do.end.i, %land.lhs.true.nand_is_slc.exit_crit_edge
  %5 = phi i32 [ %3, %land.lhs.true.nand_is_slc.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp21.i = icmp eq i32 %5, 1
  br i1 %cmp21.i, label %nand_is_slc.exit.if.else117_crit_edge, label %land.lhs.true5

nand_is_slc.exit.if.else117_crit_edge:            ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else117

land.lhs.true5:                                   ; preds = %nand_is_slc.exit
  %arrayidx = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp7.not = icmp eq i8 %7, 0
  br i1 %cmp7.not, label %land.lhs.true5.if.else117_crit_edge, label %if.then

land.lhs.true5.if.else117_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else117

if.then:                                          ; preds = %land.lhs.true5
  %arrayidx11 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %10 = and i8 %9, 3
  %and = zext i8 %10 to i32
  %shl = shl nuw nsw i32 2048, %and
  %pagesize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %pagesize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %pagesize, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %12 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl, ptr %writesize, align 4
  %13 = lshr i8 %9, 2
  %conv16 = zext i8 %13 to i32
  %14 = lshr i32 %conv16, 2
  %and18 = and i32 %14, 4
  %and20 = and i32 %conv16, 3
  %or = or i32 %and18, %and20
  %15 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
    i32 3, label %sw.bb23
    i32 4, label %sw.bb25
    i32 5, label %sw.bb27
    i32 6, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %oobsize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %oobsize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 128, ptr %oobsize, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %oobsize22 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %oobsize22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 218, ptr %oobsize22, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %oobsize24 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %oobsize24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 400, ptr %oobsize24, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %oobsize26 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %oobsize26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 436, ptr %oobsize26, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %oobsize28 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %oobsize28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %oobsize28, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %oobsize30 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %oobsize30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 640, ptr %oobsize30, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.1) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb
  %oobsize46 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %oobsize46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oobsize46, align 4
  %oobsize47 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %24 = ptrtoint ptr %oobsize47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %oobsize47, align 4
  %25 = lshr i32 %conv16, 3
  %and53 = and i32 %25, 4
  %and55 = and i32 %14, 3
  %or56 = or i32 %and53, %and55
  %26 = ptrtoint ptr %pagesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagesize, align 4
  %div = udiv i32 %or56, %27
  %shl58 = shl i32 131072, %div
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %pages_per_eraseblock to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl58, ptr %pages_per_eraseblock, align 4
  %shl65 = shl i32 131072, %or56
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %29 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl65, ptr %erasesize, align 8
  %arrayidx68 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx68, align 4
  %32 = lshr i8 %31, 4
  %33 = and i8 %32, 7
  %conv73 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp74 = icmp ult i8 %33, 5
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  %shl78 = shl nuw nsw i32 1, %conv73
  br label %if.end146

if.else:                                          ; preds = %sw.epilog
  %switch.tableidx = add nsw i32 %conv73, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %34 = icmp ult i32 %switch.tableidx, 3
  br i1 %34, label %switch.lookup, label %do.end100

do.end100:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef nonnull @.str.2) #2
  br label %if.end146

if.else117:                                       ; preds = %land.lhs.true5.if.else117_crit_edge, %nand_is_slc.exit.if.else117_crit_edge, %entry.if.else117_crit_edge
  tail call void @nand_decode_ext_id(ptr noundef %chip) #2
  %35 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %memorg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i186 = icmp eq i32 %36, 0
  br i1 %cmp.i186, label %do.end.i187, label %if.else117.nand_is_slc.exit189_crit_edge, !prof !19

if.else117.nand_is_slc.exit189_crit_edge:         ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #4
  br label %nand_is_slc.exit189

do.end.i187:                                      ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  %37 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr190 = load i32, ptr %memorg.i, align 8
  br label %nand_is_slc.exit189

nand_is_slc.exit189:                              ; preds = %do.end.i187, %if.else117.nand_is_slc.exit189_crit_edge
  %38 = phi i32 [ %36, %if.else117.nand_is_slc.exit189_crit_edge ], [ %.pr190, %do.end.i187 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp21.i188 = icmp eq i32 %38, 1
  br i1 %cmp21.i188, label %if.then119, label %nand_is_slc.exit189.if.end146_crit_edge

nand_is_slc.exit189.if.end146_crit_edge:          ; preds = %nand_is_slc.exit189
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end146

if.then119:                                       ; preds = %nand_is_slc.exit189
  %arrayidx122 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx122, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %40, label %if.then119.if.end146_crit_edge [
    i8 -36, label %sw.bb124
    i8 -15, label %sw.bb127
  ]

if.then119.if.end146_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end146

sw.bb124:                                         ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end146

sw.bb127:                                         ; preds = %if.then119
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp130 = icmp sgt i32 %43, 4
  br i1 %cmp130, label %land.lhs.true132, label %sw.bb127.if.end146_crit_edge

sw.bb127.if.end146_crit_edge:                     ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end146

land.lhs.true132:                                 ; preds = %sw.bb127
  %arrayidx135 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx135, align 4
  %46 = and i8 %45, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp138 = icmp eq i8 %46, 1
  br i1 %cmp138, label %if.then140, label %land.lhs.true132.if.end146_crit_edge

land.lhs.true132.if.end146_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end146

if.then140:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %47 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %options, align 8
  %or141 = or i32 %48, 512
  store i32 %or141, ptr %options, align 8
  br label %if.end146

switch.lookup:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.samsung_nand_decode_id, i32 0, i32 %switch.tableidx
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end146

if.end146:                                        ; preds = %switch.lookup, %if.then140, %land.lhs.true132.if.end146_crit_edge, %sw.bb127.if.end146_crit_edge, %sw.bb124, %if.then119.if.end146_crit_edge, %nand_is_slc.exit189.if.end146_crit_edge, %do.end100, %if.then76
  %requirements.sroa.9.0 = phi i32 [ 0, %if.then119.if.end146_crit_edge ], [ 0, %if.then140 ], [ 0, %land.lhs.true132.if.end146_crit_edge ], [ 0, %sw.bb127.if.end146_crit_edge ], [ 512, %sw.bb124 ], [ 0, %nand_is_slc.exit189.if.end146_crit_edge ], [ 512, %if.then76 ], [ 0, %do.end100 ], [ 1024, %switch.lookup ]
  %requirements.sroa.4.0 = phi i32 [ 0, %if.then119.if.end146_crit_edge ], [ 0, %if.then140 ], [ 0, %land.lhs.true132.if.end146_crit_edge ], [ 0, %sw.bb127.if.end146_crit_edge ], [ 1, %sw.bb124 ], [ 0, %nand_is_slc.exit189.if.end146_crit_edge ], [ %shl78, %if.then76 ], [ 0, %do.end100 ], [ %switch.load, %switch.lookup ]
  %requirements.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1
  %50 = call ptr @memset(ptr %requirements.i, i32 0, i32 12)
  %requirements.sroa.4.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %51 = ptrtoint ptr %requirements.sroa.4.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %requirements.sroa.4.0, ptr %requirements.sroa.4.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.9.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %52 = ptrtoint ptr %requirements.sroa.9.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %requirements.sroa.9.0, ptr %requirements.sroa.9.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.13.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 5
  %53 = ptrtoint ptr %requirements.sroa.13.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %requirements.sroa.13.0.requirements.i.sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_nand_init(ptr nocapture noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp = icmp ugt i32 %1, 512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 8
  %or = or i32 %3, 8
  store i32 %or, ptr %options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %memorg.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memorg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.nand_is_slc.exit_crit_edge, !prof !19

if.end.nand_is_slc.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %nand_is_slc.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  %6 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %memorg.i.i, align 8
  br label %nand_is_slc.exit

nand_is_slc.exit:                                 ; preds = %do.end.i, %if.end.nand_is_slc.exit_crit_edge
  %7 = phi i32 [ %5, %if.end.nand_is_slc.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp21.i = icmp eq i32 %7, 1
  %options5 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %options5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options5, align 8
  %. = select i1 %cmp21.i, i32 50331648, i32 67108864
  %or6 = or i32 %9, %.
  store i32 %or6, ptr %options5, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_decode_ext_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @samsung_nand_manuf_ops, !1, !"samsung_nand_manuf_ops", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_samsung.c", i32 136, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_samsung.c", i32 58, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/nand_samsung.c", i32 91, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/mtd/rawnand.h", i32 1444, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
