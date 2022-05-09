; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_toshiba.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_toshiba.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_pairing_scheme = type { i32, ptr, ptr }
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
%struct.nand_op_instr = type { i32, %union.anon.47, i32 }
%union.anon.47 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.48, i8 }
%union.anon.48 = type { ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.46 }
%union.anon.46 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@toshiba_nand_manuf_ops = dso_local constant { %struct.nand_manufacturer_ops, [16 x i8] } { %struct.nand_manufacturer_ops { ptr @toshiba_nand_decode_id, ptr @toshiba_nand_init, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/nand/raw/nand_toshiba.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not get ECC info\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mtd/rawnand.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TC58TEG5DCLTA00\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TC58NVG0S3E\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TH58NVG2S3HBAI4\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", [63 x i8] zeroinitializer }, align 32
@dist3_pairing_scheme = external dso_local constant %struct.mtd_pairing_scheme, align 4
@switch.table.toshiba_nand_decode_id = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"toshiba_nand_manuf_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 297, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 192, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1444, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 285, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 287, i32 15 }
@___asan_gen_.30 = private constant [39 x i8] c"../drivers/mtd/nand/raw/nand_toshiba.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 290, i32 15 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [36 x i8] c"../drivers/mtd/nand/raw/internals.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 139, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [36 x i8] c"switch.table.toshiba_nand_decode_id\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @toshiba_nand_manuf_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.toshiba_nand_decode_id], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toshiba_nand_manuf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.toshiba_nand_decode_id to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @toshiba_nand_decode_id(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %memorg.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  tail call void @nand_decode_ext_id(ptr noundef %chip) #5
  %len = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp sgt i32 %1, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end52_crit_edge

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memorg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %land.lhs.true.nand_is_slc.exit_crit_edge, !prof !25

land.lhs.true.nand_is_slc.exit_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %nand_is_slc.exit

do.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  %4 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %memorg.i, align 8
  br label %nand_is_slc.exit

nand_is_slc.exit:                                 ; preds = %do.end.i, %land.lhs.true.nand_is_slc.exit_crit_edge
  %5 = phi i32 [ %3, %land.lhs.true.nand_is_slc.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp21.i = icmp eq i32 %5, 1
  br i1 %cmp21.i, label %land.lhs.true5, label %nand_is_slc.exit.if.end_crit_edge

nand_is_slc.exit.if.end_crit_edge:                ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true5:                                   ; preds = %nand_is_slc.exit
  %arrayidx = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp7 = icmp eq i8 %8, 6
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %arrayidx12 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not = icmp sgt i8 %10, -1
  br i1 %tobool.not, label %if.then, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  %pagesize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %pagesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagesize, align 4
  %13 = lshr i32 %12, 4
  %shr = and i32 %13, 8388607
  %oobsize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %oobsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %oobsize, align 4
  %oobsize16 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %15 = ptrtoint ptr %oobsize16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %oobsize16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %nand_is_slc.exit.if.end_crit_edge
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr71 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr71)
  %cmp19 = icmp sgt i32 %.pr71, 5
  br i1 %cmp19, label %land.lhs.true21, label %if.end.if.end52_crit_edge

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true21:                                  ; preds = %if.end
  %17 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memorg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i67 = icmp eq i32 %18, 0
  br i1 %cmp.i67, label %do.end.i68, label %land.lhs.true21.nand_is_slc.exit70_crit_edge, !prof !25

land.lhs.true21.nand_is_slc.exit70_crit_edge:     ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %nand_is_slc.exit70

do.end.i68:                                       ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  %19 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr73 = load i32, ptr %memorg.i, align 8
  br label %nand_is_slc.exit70

nand_is_slc.exit70:                               ; preds = %do.end.i68, %land.lhs.true21.nand_is_slc.exit70_crit_edge
  %20 = phi i32 [ %18, %land.lhs.true21.nand_is_slc.exit70_crit_edge ], [ %.pr73, %do.end.i68 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp21.i69 = icmp eq i32 %20, 1
  br i1 %cmp21.i69, label %if.then24, label %nand_is_slc.exit70.if.end52_crit_edge

nand_is_slc.exit70.if.end52_crit_edge:            ; preds = %nand_is_slc.exit70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then24:                                        ; preds = %nand_is_slc.exit70
  %arrayidx27 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx27, align 1
  %23 = and i8 %22, 7
  %and29 = zext i8 %23 to i32
  %switch.tableidx = add nsw i32 %and29, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %24 = icmp ult i32 %switch.tableidx, 3
  br i1 %24, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end52

switch.lookup:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.toshiba_nand_decode_id, i32 0, i32 %switch.tableidx
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end52

if.end52:                                         ; preds = %switch.lookup, %do.end, %nand_is_slc.exit70.if.end52_crit_edge, %if.end.if.end52_crit_edge, %entry.if.end52_crit_edge
  %requirements.sroa.7.0 = phi i32 [ 0, %do.end ], [ 0, %nand_is_slc.exit70.if.end52_crit_edge ], [ 0, %if.end.if.end52_crit_edge ], [ 0, %entry.if.end52_crit_edge ], [ 512, %switch.lookup ]
  %requirements.sroa.4.0 = phi i32 [ 0, %do.end ], [ 0, %nand_is_slc.exit70.if.end52_crit_edge ], [ 0, %if.end.if.end52_crit_edge ], [ 0, %entry.if.end52_crit_edge ], [ %switch.load, %switch.lookup ]
  %requirements.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1
  %26 = call ptr @memset(ptr %requirements.i, i32 0, i32 12)
  %requirements.sroa.4.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %27 = ptrtoint ptr %requirements.sroa.4.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %requirements.sroa.4.0, ptr %requirements.sroa.4.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.7.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %28 = ptrtoint ptr %requirements.sroa.7.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %requirements.sroa.7.0, ptr %requirements.sroa.7.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.9.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 5
  %29 = ptrtoint ptr %requirements.sroa.9.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %requirements.sroa.9.0.requirements.i.sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshiba_nand_init(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %memorg.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memorg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %do.end.i, label %entry.nand_is_slc.exit_crit_edge, !prof !25

entry.nand_is_slc.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nand_is_slc.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  %2 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %memorg.i.i, align 8
  br label %nand_is_slc.exit

nand_is_slc.exit:                                 ; preds = %do.end.i, %entry.nand_is_slc.exit_crit_edge
  %3 = phi i32 [ %1, %entry.nand_is_slc.exit_crit_edge ], [ %.pr, %do.end.i ]
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %nand_is_slc.exit.nand_is_slc.exit39_crit_edge [
    i32 1, label %if.end.thread
    i32 0, label %do.end.i37
  ], !prof !26

nand_is_slc.exit.nand_is_slc.exit39_crit_edge:    ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %nand_is_slc.exit39

if.end.thread:                                    ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %options, align 8
  %or = or i32 %6, 50331648
  store i32 %or, ptr %options, align 8
  br label %nand_is_slc.exit39

do.end.i37:                                       ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %nand_is_slc.exit39

nand_is_slc.exit39:                               ; preds = %do.end.i37, %if.end.thread, %nand_is_slc.exit.nand_is_slc.exit39_crit_edge
  %7 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %memorg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp21.i38 = icmp eq i32 %8, 1
  br i1 %cmp21.i38, label %land.lhs.true, label %nand_is_slc.exit39.if.end4_crit_edge

nand_is_slc.exit39.if.end4_crit_edge:             ; preds = %nand_is_slc.exit39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true:                                    ; preds = %nand_is_slc.exit39
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %9 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp eq i32 %10, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true2:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  br i1 %tobool.not, label %land.lhs.true2.if.end4_crit_edge, label %if.then3

land.lhs.true2.if.end4_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %13 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bytes.i, align 4
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %size.i, align 8
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %15 = ptrtoint ptr %strength.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %strength.i, align 4
  %read_page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %16 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @toshiba_nand_read_page_benand, ptr %read_page.i, align 8
  %read_subpage.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 19
  %17 = ptrtoint ptr %read_subpage.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @toshiba_nand_read_subpage_benand, ptr %read_subpage.i, align 4
  %write_page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %18 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nand_write_page_raw, ptr %write_page.i, align 4
  %read_page_raw.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %19 = ptrtoint ptr %read_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nand_read_page_raw_notsupp, ptr %read_page_raw.i, align 8
  %write_page_raw.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %20 = ptrtoint ptr %write_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nand_write_page_raw_notsupp, ptr %write_page_raw.i, align 4
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %21 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %options.i, align 8
  %or.i = or i32 %22, 4096
  store i32 %or.i, ptr %options.i, align 8
  %call8.i = tail call ptr @nand_get_large_page_ooblayout() #5
  %ooblayout1.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %23 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i, ptr %ooblayout1.i.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true2.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge, %nand_is_slc.exit39.if.end4_crit_edge
  %parameters = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2
  %24 = ptrtoint ptr %parameters to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parameters, align 4
  %call5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.4, ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %choose_interface_config.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %choose_interface_config.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @tc58teg5dclta00_choose_interface_config, ptr %choose_interface_config.i, align 4
  %options.i40 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %27 = ptrtoint ptr %options.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %options.i40, align 8
  %or.i41 = or i32 %28, 8192
  store i32 %or.i41, ptr %options.i40, align 8
  %pairing1.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 16
  %29 = ptrtoint ptr %pairing1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dist3_pairing_scheme, ptr %pairing1.i.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %call12 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.5, ptr noundef %25, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %choose_interface_config.i42 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %choose_interface_config.i42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @tc58nvg0s3e_choose_interface_config, ptr %choose_interface_config.i42, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %call19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.6, ptr noundef %25, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %choose_interface_config.i43 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 5
  %31 = ptrtoint ptr %choose_interface_config.i43 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @th58nvg2s3hbai4_choose_interface_config, ptr %choose_interface_config.i43, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_decode_ext_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshiba_nand_read_page_benand(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nand_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @toshiba_nand_benand_eccstatus(ptr noundef %chip)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toshiba_nand_read_subpage_benand(ptr noundef %chip, i32 noundef %data_offs, i32 noundef %readlen, ptr noundef %bufpoi, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bufpoi, i32 %data_offs
  %call = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef %data_offs, ptr noundef %add.ptr, i32 noundef %readlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @toshiba_nand_benand_eccstatus(ptr noundef %chip)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw_notsupp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_page_raw_notsupp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @toshiba_nand_benand_eccstatus(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %instrs.i = alloca [2 x %struct.nand_op_instr], align 4
  %op.i = alloca %struct.nand_operation, align 4
  %status = alloca i8, align 1
  %ecc_status = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ecc_status) #5
  %controller.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %1 = ptrtoint ptr %ecc_status to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %ecc_status, align 8
  %2 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end9_crit_edge, label %lor.lhs.false.i.i

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

lor.lhs.false.i.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.nand_controller, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end9_crit_edge, label %nand_has_exec_op.exit.i

lor.lhs.false.i.i.if.end9_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

nand_has_exec_op.exit.i:                          ; preds = %lor.lhs.false.i.i
  %exec_op.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i.not.i, label %nand_has_exec_op.exit.i.if.end9_crit_edge, label %nand_has_exec_op.exit.i.i

nand_has_exec_op.exit.i.if.end9_crit_edge:        ; preds = %nand_has_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

nand_has_exec_op.exit.i.i:                        ; preds = %nand_has_exec_op.exit.i
  %current_interface_config.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 7
  %8 = ptrtoint ptr %current_interface_config.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %current_interface_config.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 0
  %12 = getelementptr inbounds %struct.nand_interface_config, ptr %9, i32 0, i32 1, i32 1
  %retval.0.i14.i = select i1 %cmp.i.i.i, ptr %12, ptr inttoptr (i32 -22 to ptr)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %instrs.i) #5
  %13 = getelementptr inbounds i8, ptr %instrs.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 32)
  %15 = ptrtoint ptr %instrs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %instrs.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 122, ptr %13, align 4
  %delay_ns.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i, i32 0, i32 2
  %tADL_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i14.i, i32 0, i32 5
  %17 = ptrtoint ptr %tADL_min.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tADL_min.i, align 4
  %sub.i = add i32 %18, 999
  %div.i = udiv i32 %sub.i, 1000
  %19 = ptrtoint ptr %delay_ns.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.i, ptr %delay_ns.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %arrayinit.element.i, align 4
  %ctx5.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i, i32 1, i32 1
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %21 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %steps.i, align 4
  %23 = ptrtoint ptr %ctx5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ctx5.i, align 4
  %buf6.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i, i32 1, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ecc_status, ptr %buf6.i, align 4
  %force_8bit.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i, i32 1, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %force_8bit.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %force_8bit.i, align 4
  %delay_ns7.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i, i32 1, i32 2
  %26 = ptrtoint ptr %delay_ns7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %delay_ns7.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i) #5
  %27 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 2
  %cur_cs.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %29 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_cs.i, align 4
  %31 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %op.i, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %instrs.i, ptr %27, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %28, align 4
  %34 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i.i = icmp eq ptr %35, null
  br i1 %tobool6.not.i.not.i.i, label %nand_has_exec_op.exit.i.i.toshiba_nand_benand_read_eccstatus_op.exit.thread56_crit_edge, label %if.end.i.i

nand_has_exec_op.exit.i.i.toshiba_nand_benand_read_eccstatus_op.exit.thread56_crit_edge: ; preds = %nand_has_exec_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %toshiba_nand_benand_read_eccstatus_op.exit.thread56

if.end.i.i:                                       ; preds = %nand_has_exec_op.exit.i.i
  %ntargets.i.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %ntargets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ntargets.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %37)
  %cmp.not.i.i = icmp ult i32 %30, %37
  br i1 %cmp.not.i.i, label %toshiba_nand_benand_read_eccstatus_op.exit, label %do.end.i.i, !prof !28

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 139, i32 noundef 9, ptr noundef null) #5
  br label %toshiba_nand_benand_read_eccstatus_op.exit.thread56

toshiba_nand_benand_read_eccstatus_op.exit.thread56: ; preds = %do.end.i.i, %nand_has_exec_op.exit.i.i.toshiba_nand_benand_read_eccstatus_op.exit.thread56_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %instrs.i) #5
  br label %if.end9

toshiba_nand_benand_read_eccstatus_op.exit:       ; preds = %if.end.i.i
  %call25.i.i = call i32 %35(ptr noundef %chip, ptr noundef nonnull %op.i, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %instrs.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool.not = icmp eq i32 %call25.i.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %toshiba_nand_benand_read_eccstatus_op.exit.if.end9_crit_edge

toshiba_nand_benand_read_eccstatus_op.exit.if.end9_crit_edge: ; preds = %toshiba_nand_benand_read_eccstatus_op.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

for.cond.preheader:                               ; preds = %toshiba_nand_benand_read_eccstatus_op.exit
  %38 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp59.not = icmp eq i32 %39, 0
  br i1 %cmp59.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ecc_stats5 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc.for.body_crit_edge ]
  %max_bitflips.060 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr %ecc_status, i32 0, i32 %i.061
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %42 = and i8 %41, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %42)
  %cmp2 = icmp eq i8 %42, 15
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %failed, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %failed, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and = zext i8 %42 to i32
  %45 = ptrtoint ptr %ecc_stats5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ecc_stats5, align 4
  %add = add i32 %46, %and
  store i32 %add, ptr %ecc_stats5, align 4
  %47 = call i32 @llvm.umax.i32(i32 %max_bitflips.060, i32 %and)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then4
  %max_bitflips.1 = phi i32 [ %max_bitflips.060, %if.then4 ], [ %47, %if.else ]
  %inc8 = add nuw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc8, %39
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %toshiba_nand_benand_read_eccstatus_op.exit.if.end9_crit_edge, %toshiba_nand_benand_read_eccstatus_op.exit.thread56, %nand_has_exec_op.exit.i.if.end9_crit_edge, %lor.lhs.false.i.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = call i32 @nand_status_op(ptr noundef %chip, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %status, align 1
  %conv14 = zext i8 %49 to i32
  %and15 = and i32 %conv14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else21, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %failed19 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %cleanup.sink.split

if.else21:                                        ; preds = %if.end13
  %and23 = and i32 %conv14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else21.cleanup_crit_edge, label %if.then25

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  %bitflip_threshold = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 12
  %50 = ptrtoint ptr %bitflip_threshold to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bitflip_threshold, align 4
  %ecc_stats26 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then25, %if.then17
  %failed19.sink63 = phi ptr [ %failed19, %if.then17 ], [ %ecc_stats26, %if.then25 ]
  %.sink62 = phi i32 [ 1, %if.then17 ], [ %51, %if.then25 ]
  %retval.0.ph = phi i32 [ 0, %if.then17 ], [ %51, %if.then25 ]
  %52 = ptrtoint ptr %failed19.sink63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %failed19.sink63, align 4
  %inc20 = add i32 %53, %.sink62
  store i32 %inc20, ptr %failed19.sink63, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else21.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.else21.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %max_bitflips.1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ecc_status) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc58teg5dclta00_choose_interface_config(ptr noundef %chip, ptr noundef %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @onfi_fill_interface_config(ptr noundef %chip, ptr noundef %iface, i32 noundef 0, i32 noundef 5) #5
  %call = tail call i32 @nand_choose_best_sdr_timings(ptr noundef %chip, ptr noundef %iface, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @onfi_fill_interface_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_choose_best_sdr_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc58nvg0s3e_choose_interface_config(ptr noundef %chip, ptr noundef %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @onfi_fill_interface_config(ptr noundef %chip, ptr noundef %iface, i32 noundef 0, i32 noundef 2) #5
  %call = tail call i32 @nand_choose_best_sdr_timings(ptr noundef %chip, ptr noundef %iface, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @th58nvg2s3hbai4_choose_interface_config(ptr noundef %chip, ptr noundef %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1
  tail call void @onfi_fill_interface_config(ptr noundef %chip, ptr noundef %iface, i32 noundef 0, i32 noundef 4) #5
  %tALS_min = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 6
  %1 = ptrtoint ptr %tALS_min to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12000, ptr %tALS_min, align 8
  %tCHZ_max = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 11
  %2 = ptrtoint ptr %tCHZ_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20000, ptr %tCHZ_max, align 4
  %tCLS_min = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 14
  %3 = ptrtoint ptr %tCLS_min to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 12000, ptr %tCLS_min, align 8
  %tCOH_min = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 15
  %4 = ptrtoint ptr %tCOH_min to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tCOH_min, align 4
  %tDS_min = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 18
  %5 = ptrtoint ptr %tDS_min to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12000, ptr %tDS_min, align 8
  %tRHOH_min = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 25
  %6 = ptrtoint ptr %tRHOH_min to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 25000, ptr %tRHOH_min, align 4
  %tRHW_min = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 26
  %7 = ptrtoint ptr %tRHW_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 30000, ptr %tRHW_min, align 8
  %tRHZ_max = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 27
  %8 = ptrtoint ptr %tRHZ_max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 60000, ptr %tRHZ_max, align 4
  %tWHR_min = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 35
  %9 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 60000, ptr %tWHR_min, align 4
  %tPROG_max = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %tPROG_max to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 700000000, ptr %tPROG_max, align 8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 5000000000, ptr %0, align 8
  %call = tail call i32 @nand_choose_best_sdr_timings(ptr noundef %chip, ptr noundef %iface, ptr noundef %0) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @toshiba_nand_manuf_ops, !1, !"toshiba_nand_manuf_ops", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_toshiba.c", i32 297, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_toshiba.c", i32 192, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/mtd/rawnand.h", i32 1444, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/nand_toshiba.c", i32 285, i32 14}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/nand_toshiba.c", i32 287, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/nand_toshiba.c", i32 290, i32 15}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/internals.h", i32 139, i32 6}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!27 = !{!"auto-init"}
!28 = !{!"branch_weights", i32 2000, i32 1}
