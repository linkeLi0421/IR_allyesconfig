; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_hynix.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_hynix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_pairing_scheme = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hynix_read_retry = type { i32, ptr, [0 x i8] }

@hynix_nand_manuf_ops = dso_local constant { %struct.nand_manufacturer_ops, [16 x i8] } { %struct.nand_manufacturer_ops { ptr @hynix_nand_decode_id, ptr @hynix_nand_init, ptr @hynix_nand_cleanup, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mtd/rawnand.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"JEDEC\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/nand_hynix.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid OOB size\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid ECC requirements\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"H27UCG8T2ATR-BC\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"H27UCG8T2ETR-BC\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dist3_pairing_scheme = external dso_local constant %struct.mtd_pairing_scheme, align 4
@hynix_nand_rr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014failed to initialize read-retry infrastructure\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hynix_nand_rr_init\00", [45 x i8] zeroinitializer }, align 32
@hynix_nand_rr_init._entry_ptr = internal global ptr @hynix_nand_rr_init._entry, section ".printk_index", align 4
@hynix_1xnm_mlc_read_retry_regs = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\CC\BF\AA\AB\CD\AD\AE\AF", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.12 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 3, i64 5, i64 7]
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"hynix_nand_manuf_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 731, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1444, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 69, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 441, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 536, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 715, i32 15 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 720, i32 15 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 403, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"hynix_1xnm_mlc_read_retry_regs\00", align 1
@___asan_gen_.51 = private constant [37 x i8] c"../drivers/mtd/nand/raw/nand_hynix.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 283, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [36 x i8] c"../drivers/mtd/nand/raw/internals.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 139, i32 6 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @hynix_nand_rr_init._entry, ptr @hynix_nand_rr_init._entry_ptr, ptr @hynix_nand_manuf_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @hynix_1xnm_mlc_read_retry_regs, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hynix_nand_manuf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hynix_nand_rr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hynix_1xnm_mlc_read_retry_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hynix_nand_decode_id(ptr noundef %chip) #0 align 64 {
entry:
  %jedecid.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %memorg.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %len = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memorg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end.i, label %lor.lhs.false.nand_is_slc.exit_crit_edge, !prof !40

lor.lhs.false.nand_is_slc.exit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_is_slc.exit

do.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  %4 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %memorg.i, align 8
  br label %nand_is_slc.exit

nand_is_slc.exit:                                 ; preds = %do.end.i, %lor.lhs.false.nand_is_slc.exit_crit_edge
  %5 = phi i32 [ %3, %lor.lhs.false.nand_is_slc.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp21.i = icmp eq i32 %5, 1
  br i1 %cmp21.i, label %nand_is_slc.exit.if.then_crit_edge, label %if.end

nand_is_slc.exit.if.then_crit_edge:               ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %nand_is_slc.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @nand_decode_ext_id(ptr noundef %chip) #9
  br label %cleanup

if.end:                                           ; preds = %nand_is_slc.exit
  %arrayidx = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 3
  %and = zext i8 %8 to i32
  %shl = shl nuw nsw i32 2048, %and
  %pagesize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %pagesize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %pagesize, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %10 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %writesize, align 4
  %11 = lshr i8 %7, 4
  %and9 = and i8 %11, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv17 = zext i8 %and9 to i32
  %shl18 = shl nuw nsw i32 1048576, %conv17
  %12 = add nuw nsw i32 %and, 11
  %div106 = lshr i32 %shl18, %12
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %and9)
  %cmp23 = icmp eq i8 %and9, 3
  br i1 %cmp23, label %if.then25, label %if.else30

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %div27108 = lshr i32 384, %and
  br label %if.end40

if.else30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv22 = zext i8 %and9 to i32
  %shl32 = shl nuw nsw i32 131072, %conv22
  %13 = add nuw nsw i32 %and, 11
  %div34107 = lshr i32 %shl32, %13
  br label %if.end40

if.end40:                                         ; preds = %if.else30, %if.then25, %if.then16
  %div27108.sink = phi i32 [ %div27108, %if.then25 ], [ %div34107, %if.else30 ], [ %div106, %if.then16 ]
  %.sink = phi i32 [ 786432, %if.then25 ], [ %shl32, %if.else30 ], [ %shl18, %if.then16 ]
  %pages_per_eraseblock28 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %pages_per_eraseblock28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div27108.sink, ptr %pages_per_eraseblock28, align 4
  %erasesize29 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %erasesize29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %erasesize29, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %jedecid.i) #9
  %16 = call ptr @memset(ptr %jedecid.i, i32 0, i32 5)
  %call.i = call i32 @nand_readid_op(ptr noundef %chip, i8 noundef zeroext 64, ptr noundef nonnull %jedecid.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %hynix_nand_has_valid_jedecid.exit, label %hynix_nand_has_valid_jedecid.exit.thread

hynix_nand_has_valid_jedecid.exit.thread:         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %jedecid.i) #9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = lshr i8 %18, 2
  %and.i93 = and i8 %19, 3
  %20 = lshr i8 %18, 4
  %and7.i94 = and i8 %20, 4
  %or.i95 = or i8 %and.i93, %and7.i94
  br label %if.else.i

hynix_nand_has_valid_jedecid.exit:                ; preds = %if.end40
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.2, ptr noundef nonnull dereferenceable(5) %jedecid.i, i32 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %jedecid.i) #9
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %23 = lshr i8 %22, 2
  %and.i = and i8 %23, 3
  %24 = lshr i8 %22, 4
  %and7.i = and i8 %24, 4
  %or.i = or i8 %and.i, %and7.i
  br i1 %tobool3.not.i, label %if.then.i, label %hynix_nand_has_valid_jedecid.exit.if.else.i_crit_edge

hynix_nand_has_valid_jedecid.exit.if.else.i_crit_edge: ; preds = %hynix_nand_has_valid_jedecid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %hynix_nand_has_valid_jedecid.exit
  %conv9.i = zext i8 %or.i to i32
  %25 = zext i32 %conv9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv9.i, label %do.end.i75 [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb11.i
    i32 2, label %sw.bb13.i
    i32 3, label %sw.bb15.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize10.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %oobsize10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2048, ptr %oobsize10.i, align 4
  br label %if.then.i78

sw.bb11.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize12.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %oobsize12.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1664, ptr %oobsize12.i, align 4
  br label %if.then.i78

sw.bb13.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize14.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %oobsize14.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1024, ptr %oobsize14.i, align 4
  br label %if.then.i78

sw.bb15.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize16.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %oobsize16.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 640, ptr %oobsize16.i, align 4
  br label %if.then.i78

do.end.i75:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 441, i32 noundef 9, ptr noundef nonnull @.str.4) #9
  br label %if.then.i78

if.else.i:                                        ; preds = %hynix_nand_has_valid_jedecid.exit.if.else.i_crit_edge, %hynix_nand_has_valid_jedecid.exit.thread
  %conv9.i99 = phi i8 [ %or.i95, %hynix_nand_has_valid_jedecid.exit.thread ], [ %or.i, %hynix_nand_has_valid_jedecid.exit.if.else.i_crit_edge ]
  %30 = zext i8 %conv9.i99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %conv9.i99, label %do.end61.i [
    i8 0, label %sw.bb34.i
    i8 1, label %sw.bb36.i
    i8 2, label %sw.bb38.i
    i8 3, label %sw.bb40.i
    i8 4, label %sw.bb42.i
    i8 5, label %sw.bb44.i
    i8 6, label %sw.bb46.i
  ]

sw.bb34.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize35.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %oobsize35.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 128, ptr %oobsize35.i, align 4
  br label %sw.epilog75.i

sw.bb36.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize37.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %oobsize37.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 224, ptr %oobsize37.i, align 4
  br label %sw.epilog75.i

sw.bb38.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize39.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %oobsize39.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 448, ptr %oobsize39.i, align 4
  br label %sw.epilog75.i

sw.bb40.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize41.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %oobsize41.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %oobsize41.i, align 4
  br label %sw.epilog75.i

sw.bb42.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize43.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %oobsize43.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 32, ptr %oobsize43.i, align 4
  br label %sw.epilog75.i

sw.bb44.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize45.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %oobsize45.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %oobsize45.i, align 4
  br label %sw.epilog75.i

sw.bb46.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize47.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %oobsize47.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 640, ptr %oobsize47.i, align 4
  br label %sw.epilog75.i

do.end61.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 474, i32 noundef 9, ptr noundef nonnull @.str.4) #9
  br label %sw.epilog75.i

sw.epilog75.i:                                    ; preds = %do.end61.i, %sw.bb46.i, %sw.bb44.i, %sw.bb42.i, %sw.bb40.i, %sw.bb38.i, %sw.bb36.i, %sw.bb34.i
  %arrayidx78.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx78.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -34, i8 %39)
  %cmp.i76 = icmp eq i8 %39, -34
  br i1 %cmp.i76, label %if.then81.i, label %sw.epilog75.i.if.else.i84_crit_edge

sw.epilog75.i.if.else.i84_crit_edge:              ; preds = %sw.epilog75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i84

if.then81.i:                                      ; preds = %sw.epilog75.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %pagesize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagesize, align 4
  %div107.i = lshr i32 %41, 13
  %oobsize82.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %oobsize82.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %oobsize82.i, align 4
  %mul.i = mul i32 %43, %div107.i
  store i32 %mul.i, ptr %oobsize82.i, align 4
  br label %if.else.i84

if.then.i78:                                      ; preds = %do.end.i75, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb.i
  %oobsize85.i101 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %oobsize85.i101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oobsize85.i101, align 4
  %oobsize86.i102 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %46 = ptrtoint ptr %oobsize86.i102 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %oobsize86.i102, align 4
  %arrayidx.i77103 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %arrayidx.i77103 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i77103, align 4
  %49 = lshr i8 %48, 4
  %50 = and i8 %49, 7
  %conv3.i = zext i8 %50 to i32
  %51 = zext i32 %conv3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %conv3.i, label %do.end.i82 [
    i32 0, label %if.then.i78.hynix_nand_extract_ecc_requirements.exit_crit_edge
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb11.i79
    i32 5, label %sw.bb13.i80
    i32 6, label %sw.bb15.i81
  ]

if.then.i78.hynix_nand_extract_ecc_requirements.exit_crit_edge: ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

sw.bb5.i:                                         ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

sw.bb7.i:                                         ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

sw.bb9.i:                                         ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

sw.bb11.i79:                                      ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

sw.bb13.i80:                                      ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

sw.bb15.i81:                                      ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

do.end.i82:                                       ; preds = %if.then.i78
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 536, i32 noundef 9, ptr noundef nonnull @.str.5) #9
  br label %hynix_nand_extract_ecc_requirements.exit

if.else.i84:                                      ; preds = %if.then81.i, %sw.epilog75.i.if.else.i84_crit_edge
  %oobsize85.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %oobsize85.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %oobsize85.i, align 4
  %oobsize86.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %54 = ptrtoint ptr %oobsize86.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %oobsize86.i, align 4
  %arrayidx.i77 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i77, align 4
  %57 = lshr i8 %56, 4
  %58 = and i8 %57, 7
  %arrayidx35.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx35.i, align 1
  %61 = and i8 %60, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %61)
  %cmp.i83 = icmp ult i8 %61, 3
  br i1 %cmp.i83, label %if.then41.i, label %if.else92.i

if.then41.i:                                      ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %58)
  %cmp43.i = icmp ult i8 %58, 5
  br i1 %cmp43.i, label %if.then45.i, label %if.else49.i

if.then45.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv42.i = zext i8 %58 to i32
  %shl.i = shl nuw nsw i32 1, %conv42.i
  br label %hynix_nand_extract_ecc_requirements.exit

if.else49.i:                                      ; preds = %if.then41.i
  %trunc.i = trunc i8 %57 to i3
  %62 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.13)
  switch i3 %trunc.i, label %if.else59.i [
    i3 -1, label %do.end76.i
    i3 -3, label %if.else49.i.hynix_nand_extract_ecc_requirements.exit_crit_edge
  ]

if.else49.i.hynix_nand_extract_ecc_requirements.exit_crit_edge: ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

if.else59.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

do.end76.i:                                       ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 563, i32 noundef 9, ptr noundef nonnull @.str.5) #9
  br label %hynix_nand_extract_ecc_requirements.exit

if.else92.i:                                      ; preds = %if.else.i84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool93.not.i = icmp eq i8 %58, 0
  br i1 %tobool93.not.i, label %if.else92.i.hynix_nand_extract_ecc_requirements.exit_crit_edge, label %if.else97.i

if.else92.i.hynix_nand_extract_ecc_requirements.exit_crit_edge: ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_extract_ecc_requirements.exit

if.else97.i:                                      ; preds = %if.else92.i
  %conv98.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %58)
  %cmp99.i = icmp ult i8 %58, 5
  br i1 %cmp99.i, label %if.then101.i, label %if.else106.i

if.then101.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %conv98.i, -1
  %shl104.i = shl nuw nsw i32 1, %sub.i
  br label %hynix_nand_extract_ecc_requirements.exit

if.else106.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub109.i = shl nuw nsw i32 %conv98.i, 3
  %add.i = add nsw i32 %sub109.i, -16
  br label %hynix_nand_extract_ecc_requirements.exit

hynix_nand_extract_ecc_requirements.exit:         ; preds = %if.else106.i, %if.then101.i, %if.else92.i.hynix_nand_extract_ecc_requirements.exit_crit_edge, %do.end76.i, %if.else59.i, %if.else49.i.hynix_nand_extract_ecc_requirements.exit_crit_edge, %if.then45.i, %do.end.i82, %sw.bb15.i81, %sw.bb13.i80, %sw.bb11.i79, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %if.then.i78.hynix_nand_extract_ecc_requirements.exit_crit_edge
  %retval.0.i97104 = phi i1 [ true, %do.end.i82 ], [ true, %sw.bb15.i81 ], [ true, %sw.bb13.i80 ], [ true, %sw.bb11.i79 ], [ true, %sw.bb9.i ], [ true, %sw.bb7.i ], [ true, %sw.bb5.i ], [ false, %if.then45.i ], [ false, %do.end76.i ], [ false, %if.then101.i ], [ false, %if.else106.i ], [ true, %if.then.i78.hynix_nand_extract_ecc_requirements.exit_crit_edge ], [ false, %if.else59.i ], [ false, %if.else49.i.hynix_nand_extract_ecc_requirements.exit_crit_edge ], [ false, %if.else92.i.hynix_nand_extract_ecc_requirements.exit_crit_edge ]
  %requirements.sroa.16.1.i = phi i32 [ 1024, %do.end.i82 ], [ 1024, %sw.bb15.i81 ], [ 1024, %sw.bb13.i80 ], [ 1024, %sw.bb11.i79 ], [ 1024, %sw.bb9.i ], [ 1024, %sw.bb7.i ], [ 1024, %sw.bb5.i ], [ 512, %if.then45.i ], [ 0, %do.end76.i ], [ 512, %if.then101.i ], [ 1024, %if.else106.i ], [ %conv3.i, %if.then.i78.hynix_nand_extract_ecc_requirements.exit_crit_edge ], [ 1024, %if.else59.i ], [ 2048, %if.else49.i.hynix_nand_extract_ecc_requirements.exit_crit_edge ], [ 0, %if.else92.i.hynix_nand_extract_ecc_requirements.exit_crit_edge ]
  %requirements.sroa.4.0.i = phi i32 [ 0, %do.end.i82 ], [ 60, %sw.bb15.i81 ], [ 50, %sw.bb13.i80 ], [ 40, %sw.bb11.i79 ], [ 32, %sw.bb9.i ], [ 24, %sw.bb7.i ], [ 4, %sw.bb5.i ], [ %shl.i, %if.then45.i ], [ 0, %do.end76.i ], [ %shl104.i, %if.then101.i ], [ %add.i, %if.else106.i ], [ %conv3.i, %if.then.i78.hynix_nand_extract_ecc_requirements.exit_crit_edge ], [ 24, %if.else59.i ], [ 24, %if.else49.i.hynix_nand_extract_ecc_requirements.exit_crit_edge ], [ 0, %if.else92.i.hynix_nand_extract_ecc_requirements.exit_crit_edge ]
  %requirements.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1
  %63 = call ptr @memset(ptr %requirements.i.i, i32 0, i32 12)
  %requirements.sroa.4.0.requirements.i.sroa_idx.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %64 = ptrtoint ptr %requirements.sroa.4.0.requirements.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %requirements.sroa.4.0.i, ptr %requirements.sroa.4.0.requirements.i.sroa_idx.i, align 4
  %requirements.sroa.16.0.requirements.i.sroa_idx.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %65 = ptrtoint ptr %requirements.sroa.16.0.requirements.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %requirements.sroa.16.1.i, ptr %requirements.sroa.16.0.requirements.i.sroa_idx.i, align 4
  %requirements.sroa.24.0.requirements.i.sroa_idx.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 5
  %66 = ptrtoint ptr %requirements.sroa.24.0.requirements.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %requirements.sroa.24.0.requirements.i.sroa_idx.i, align 4
  %67 = ptrtoint ptr %memorg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %memorg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp.i86 = icmp ugt i32 %68, 2
  br i1 %cmp.i86, label %if.then.i88, label %hynix_nand_extract_ecc_requirements.exit.if.end.i90_crit_edge

hynix_nand_extract_ecc_requirements.exit.if.end.i90_crit_edge: ; preds = %hynix_nand_extract_ecc_requirements.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i90

if.then.i88:                                      ; preds = %hynix_nand_extract_ecc_requirements.exit
  call void @__sanitizer_cov_trace_pc() #11
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %69 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %options.i, align 8
  %or.i87 = or i32 %70, 8192
  store i32 %or.i87, ptr %options.i, align 8
  br label %if.end.i90

if.end.i90:                                       ; preds = %if.then.i88, %hynix_nand_extract_ecc_requirements.exit.if.end.i90_crit_edge
  %arrayidx.i89 = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 5
  %71 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i89, align 1
  br i1 %retval.0.i97104, label %if.then1.i, label %if.else.i91

if.then1.i:                                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %72)
  %cmp4.not.i = icmp ult i8 %72, 16
  br i1 %cmp4.not.i, label %if.then1.i.cleanup_crit_edge, label %if.then1.i.if.end22.sink.split.i_crit_edge

if.then1.i.if.end22.sink.split.i_crit_edge:       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split.i

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i91:                                      ; preds = %if.end.i90
  %73 = and i8 %72, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp16.i = icmp ugt i8 %73, 2
  br i1 %cmp16.i, label %if.else.i91.if.end22.sink.split.i_crit_edge, label %if.else.i91.cleanup_crit_edge

if.else.i91.cleanup_crit_edge:                    ; preds = %if.else.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i91.if.end22.sink.split.i_crit_edge:      ; preds = %if.else.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.else.i91.if.end22.sink.split.i_crit_edge, %if.then1.i.if.end22.sink.split.i_crit_edge
  %options7.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %74 = ptrtoint ptr %options7.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %options7.i, align 8
  %or20.i = or i32 %75, 8192
  store i32 %or20.i, ptr %options7.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end22.sink.split.i, %if.else.i91.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hynix_nand_init(ptr noundef %chip) #0 align 64 {
entry:
  %instrs.i41 = alloca [1 x %struct.nand_op_instr], align 4
  %op.i42 = alloca %struct.nand_operation, align 4
  %instrs.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i = alloca %struct.nand_operation, align 4
  %instrs.i.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i.i = alloca %struct.nand_operation, align 4
  %instrs.i54.i.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i55.i.i = alloca %struct.nand_operation, align 4
  %instrs.i.i.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i.i.i = alloca %struct.nand_operation, align 4
  %tmp.i3.i.i = alloca [8 x i8], align 1
  %tmp.i.i.i = alloca [8 x i8], align 1
  %instrs.i1.i.i.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i2.i.i.i = alloca %struct.nand_operation, align 4
  %instrs.i.i.i.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i.i.i.i = alloca %struct.nand_operation, align 4
  %nregs.i.i = alloca i8, align 1
  %nmodes.i.i = alloca i8, align 1
  %jedecid.i.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %memorg.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %memorg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %do.end.i, label %entry.nand_is_slc.exit_crit_edge, !prof !40

entry.nand_is_slc.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_is_slc.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  %2 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %memorg.i.i, align 8
  br label %nand_is_slc.exit

nand_is_slc.exit:                                 ; preds = %do.end.i, %entry.nand_is_slc.exit_crit_edge
  %3 = phi i32 [ %1, %entry.nand_is_slc.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp21.i = icmp eq i32 %3, 1
  %options1 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %options1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options1, align 8
  %. = select i1 %cmp21.i, i32 50331648, i32 67108864
  %or2 = or i32 %5, %.
  store i32 %or2, ptr %options1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %nand_is_slc.exit.cleanup_crit_edge, label %if.end5

nand_is_slc.exit.cleanup_crit_edge:               ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %nand_is_slc.exit
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %priv1.i, align 4
  %parameters = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2
  %8 = ptrtoint ptr %parameters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parameters, align 4
  %call6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.6, ptr noundef %9, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %choose_interface_config = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 5
  %10 = ptrtoint ptr %choose_interface_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @h27ucg8t2atrbc_choose_interface_config, ptr %choose_interface_config, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %call12 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.7, ptr noundef %9, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %11 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options.i, align 8
  %or.i = or i32 %12, 8192
  store i32 %or.i, ptr %options.i, align 8
  %pairing1.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 16
  %13 = ptrtoint ptr %pairing1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dist3_pairing_scheme, ptr %pairing1.i.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %jedecid.i.i) #9
  %14 = call ptr @memset(ptr %jedecid.i.i, i32 0, i32 5)
  %call.i.i = call i32 @nand_readid_op(ptr noundef %chip, i8 noundef zeroext 64, ptr noundef nonnull %jedecid.i.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %hynix_nand_has_valid_jedecid.exit.i, label %hynix_nand_has_valid_jedecid.exit.thread.i

hynix_nand_has_valid_jedecid.exit.thread.i:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %jedecid.i.i) #9
  br label %cleanup

hynix_nand_has_valid_jedecid.exit.i:              ; preds = %if.end16
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.2, ptr noundef nonnull dereferenceable(5) %jedecid.i.i, i32 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool3.not.i.i = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %jedecid.i.i) #9
  br i1 %tobool3.not.i.i, label %if.then.i, label %hynix_nand_has_valid_jedecid.exit.i.cleanup_crit_edge

hynix_nand_has_valid_jedecid.exit.i.cleanup_crit_edge: ; preds = %hynix_nand_has_valid_jedecid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %hynix_nand_has_valid_jedecid.exit.i
  %arrayidx.i = getelementptr %struct.nand_chip, ptr %chip, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %.mask.i = and i8 %16, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %.mask.i)
  %cmp.i33 = icmp eq i8 %.mask.i, 64
  br i1 %cmp.i33, label %for.cond.preheader.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then.i
  %controller.i.i.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %ctx.i.i.i.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i.i.i.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nand_operation, ptr %op.i.i.i.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.nand_operation, ptr %op.i.i.i.i, i32 0, i32 2
  %cur_cs.i.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %ntargets.i.i.i.i.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 8
  %cmdfunc.i.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %ctx.i11.i.i.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i1.i.i.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nand_operation, ptr %op.i2.i.i.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nand_operation, ptr %op.i2.i.i.i, i32 0, i32 2
  %ctx.i64.i.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i54.i.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.nand_operation, ptr %op.i55.i.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.nand_operation, ptr %op.i55.i.i, i32 0, i32 2
  %ctx.i.i.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i.i.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.nand_operation, ptr %op.i.i.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.nand_operation, ptr %op.i.i.i, i32 0, i32 2
  %ctx.i.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.nand_operation, ptr %op.i.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.nand_operation, ptr %op.i.i, i32 0, i32 2
  %27 = getelementptr inbounds [8 x i8], ptr %tmp.i.i.i, i32 0, i32 1
  %28 = getelementptr inbounds [8 x i8], ptr %tmp.i.i.i, i32 0, i32 2
  %29 = getelementptr inbounds [8 x i8], ptr %tmp.i.i.i, i32 0, i32 3
  %30 = getelementptr inbounds [8 x i8], ptr %tmp.i.i.i, i32 0, i32 4
  %31 = getelementptr inbounds [8 x i8], ptr %tmp.i.i.i, i32 0, i32 5
  %32 = getelementptr inbounds [8 x i8], ptr %tmp.i.i.i, i32 0, i32 6
  %33 = getelementptr inbounds [8 x i8], ptr %tmp.i.i.i, i32 0, i32 7
  %34 = getelementptr inbounds [8 x i8], ptr %tmp.i3.i.i, i32 0, i32 1
  %35 = getelementptr inbounds [8 x i8], ptr %tmp.i3.i.i, i32 0, i32 2
  %36 = getelementptr inbounds [8 x i8], ptr %tmp.i3.i.i, i32 0, i32 3
  %37 = getelementptr inbounds [8 x i8], ptr %tmp.i3.i.i, i32 0, i32 4
  %38 = getelementptr inbounds [8 x i8], ptr %tmp.i3.i.i, i32 0, i32 5
  %39 = getelementptr inbounds [8 x i8], ptr %tmp.i3.i.i, i32 0, i32 6
  %40 = getelementptr inbounds [8 x i8], ptr %tmp.i3.i.i, i32 0, i32 7
  %ctx.i51 = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i41, i32 0, i32 1
  %41 = getelementptr inbounds %struct.nand_operation, ptr %op.i42, i32 0, i32 1
  %42 = getelementptr inbounds %struct.nand_operation, ptr %op.i42, i32 0, i32 2
  %ctx.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i, i32 0, i32 1
  %43 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 1
  %44 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.035.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nregs.i.i) #9
  %47 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %nregs.i.i, align 1, !annotation !41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nmodes.i.i) #9
  %48 = ptrtoint ptr %nmodes.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %nmodes.i.i, align 1, !annotation !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 784) #13
  %tobool.not.i1.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i2.i:                                      ; preds = %for.body.i
  %call.i.i.i = call i32 @nand_reset_op(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i2.i.out.thread.i.i_crit_edge

if.end.i2.i.out.thread.i.i_crit_edge:             ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end.i2.i
  %50 = ptrtoint ptr %controller.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %controller.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i
  %ops.i.i.i.i.i = getelementptr inbounds %struct.nand_controller, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i.i.i.i, align 4
  %tobool2.not.i.i.i.i.i = icmp eq ptr %53, null
  br i1 %tobool2.not.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge, label %nand_has_exec_op.exit.i.i.i.i

lor.lhs.false.i.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i.i.i

nand_has_exec_op.exit.i.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i
  %exec_op.i.i.i.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %exec_op.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %exec_op.i.i.i.i.i, align 4
  %tobool6.not.i.not.i.i.i.i = icmp eq ptr %55, null
  br i1 %tobool6.not.i.not.i.i.i.i, label %nand_has_exec_op.exit.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge, label %nand_has_exec_op.exit.i.i.i.i.i

nand_has_exec_op.exit.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i.i.i

nand_has_exec_op.exit.i.i.i.i.i:                  ; preds = %nand_has_exec_op.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i.i.i.i) #9
  %56 = call ptr @memset(ptr %instrs.i.i.i.i, i32 0, i32 20)
  %57 = ptrtoint ptr %ctx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 54, ptr %ctx.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i.i.i.i) #9
  %58 = ptrtoint ptr %cur_cs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cur_cs.i.i.i.i, align 4
  %60 = ptrtoint ptr %op.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %op.i.i.i.i, align 4
  %61 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %instrs.i.i.i.i, ptr %17, align 4
  %62 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %18, align 4
  %63 = ptrtoint ptr %exec_op.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %exec_op.i.i.i.i.i, align 4
  %tobool6.not.i.not.i.i.i.i.i = icmp eq ptr %64, null
  br i1 %tobool6.not.i.not.i.i.i.i.i, label %nand_has_exec_op.exit.i.i.i.i.i.hynix_nand_cmd_op.exit.thread32.i.i.i_crit_edge, label %if.end.i.i.i.i.i

nand_has_exec_op.exit.i.i.i.i.i.hynix_nand_cmd_op.exit.thread32.i.i.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread32.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %nand_has_exec_op.exit.i.i.i.i.i
  %65 = ptrtoint ptr %ntargets.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ntargets.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %66)
  %cmp.not.i.i.i.i.i = icmp ult i32 %59, %66
  br i1 %cmp.not.i.i.i.i.i, label %hynix_nand_cmd_op.exit.i.i.i, label %do.end.i.i.i.i.i, !prof !42

do.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %hynix_nand_cmd_op.exit.thread32.i.i.i

hynix_nand_cmd_op.exit.thread.i.i.i:              ; preds = %nand_has_exec_op.exit.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge, %if.end.i.i.i.hynix_nand_cmd_op.exit.thread.i.i.i_crit_edge
  %67 = ptrtoint ptr %cmdfunc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cmdfunc.i.i.i.i, align 8
  call void %68(ptr noundef %chip, i32 noundef 54, i32 noundef -1, i32 noundef -1) #9
  br label %for.body.i.i.i

hynix_nand_cmd_op.exit.thread32.i.i.i:            ; preds = %do.end.i.i.i.i.i, %nand_has_exec_op.exit.i.i.i.i.i.hynix_nand_cmd_op.exit.thread32.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i.i.i.i) #9
  br label %out.thread.i.i

hynix_nand_cmd_op.exit.i.i.i:                     ; preds = %if.end.i.i.i.i.i
  %call25.i.i.i.i.i = call i32 %64(ptr noundef %chip, ptr noundef nonnull %op.i.i.i.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call25.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %hynix_nand_cmd_op.exit.i.i.i.for.body.i.i.i_crit_edge, label %hynix_nand_cmd_op.exit.i.i.i.out.thread.i.i_crit_edge

hynix_nand_cmd_op.exit.i.i.i.out.thread.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

hynix_nand_cmd_op.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %hynix_nand_cmd_op.exit.i.i.i.for.body.i.i.i_crit_edge, %hynix_nand_cmd_op.exit.thread.i.i.i
  %call6.i.i.i = call fastcc i32 @hynix_nand_reg_write_op(ptr noundef %chip, i8 noundef zeroext 56, i8 noundef zeroext 82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.out.thread.i.i_crit_edge

for.body.i.i.i.out.thread.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %69 = ptrtoint ptr %controller.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %controller.i.i.i.i.i, align 4
  %tobool.not.i.i4.i.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i4.i.i.i, label %for.end.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i7.i.i.i

for.end.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit29.thread.i.i.i

lor.lhs.false.i.i7.i.i.i:                         ; preds = %for.end.i.i.i
  %ops.i.i5.i.i.i = getelementptr inbounds %struct.nand_controller, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %ops.i.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i.i5.i.i.i, align 4
  %tobool2.not.i.i6.i.i.i = icmp eq ptr %72, null
  br i1 %tobool2.not.i.i6.i.i.i, label %lor.lhs.false.i.i7.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge, label %nand_has_exec_op.exit.i10.i.i.i

lor.lhs.false.i.i7.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit29.thread.i.i.i

nand_has_exec_op.exit.i10.i.i.i:                  ; preds = %lor.lhs.false.i.i7.i.i.i
  %exec_op.i.i8.i.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %exec_op.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %exec_op.i.i8.i.i.i, align 4
  %tobool6.not.i.not.i9.i.i.i = icmp eq ptr %74, null
  br i1 %tobool6.not.i.not.i9.i.i.i, label %nand_has_exec_op.exit.i10.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge, label %nand_has_exec_op.exit.i.i17.i.i.i

nand_has_exec_op.exit.i10.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge: ; preds = %nand_has_exec_op.exit.i10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit29.thread.i.i.i

nand_has_exec_op.exit.i.i17.i.i.i:                ; preds = %nand_has_exec_op.exit.i10.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i1.i.i.i) #9
  %75 = call ptr @memset(ptr %instrs.i1.i.i.i, i32 0, i32 20)
  %76 = ptrtoint ptr %ctx.i11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 22, ptr %ctx.i11.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i2.i.i.i) #9
  %77 = ptrtoint ptr %cur_cs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cur_cs.i.i.i.i, align 4
  %79 = ptrtoint ptr %op.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %op.i2.i.i.i, align 4
  %80 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %instrs.i1.i.i.i, ptr %19, align 4
  %81 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %20, align 4
  %82 = ptrtoint ptr %exec_op.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %exec_op.i.i8.i.i.i, align 4
  %tobool6.not.i.not.i.i16.i.i.i = icmp eq ptr %83, null
  br i1 %tobool6.not.i.not.i.i16.i.i.i, label %nand_has_exec_op.exit.i.i17.i.i.i.hynix_nand_cmd_op.exit29.thread37.i.i.i_crit_edge, label %if.end.i.i20.i.i.i

nand_has_exec_op.exit.i.i17.i.i.i.hynix_nand_cmd_op.exit29.thread37.i.i.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit29.thread37.i.i.i

if.end.i.i20.i.i.i:                               ; preds = %nand_has_exec_op.exit.i.i17.i.i.i
  %84 = ptrtoint ptr %ntargets.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ntargets.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %85)
  %cmp.not.i.i19.i.i.i = icmp ult i32 %78, %85
  br i1 %cmp.not.i.i19.i.i.i, label %hynix_nand_cmd_op.exit29.i.i.i, label %do.end.i.i21.i.i.i, !prof !42

do.end.i.i21.i.i.i:                               ; preds = %if.end.i.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %hynix_nand_cmd_op.exit29.thread37.i.i.i

hynix_nand_cmd_op.exit29.thread.i.i.i:            ; preds = %nand_has_exec_op.exit.i10.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge, %lor.lhs.false.i.i7.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge, %for.end.i.i.i.hynix_nand_cmd_op.exit29.thread.i.i.i_crit_edge
  %86 = ptrtoint ptr %cmdfunc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cmdfunc.i.i.i.i, align 8
  call void %87(ptr noundef %chip, i32 noundef 22, i32 noundef -1, i32 noundef -1) #9
  br label %if.end13.i.i.i

hynix_nand_cmd_op.exit29.thread37.i.i.i:          ; preds = %do.end.i.i21.i.i.i, %nand_has_exec_op.exit.i.i17.i.i.i.hynix_nand_cmd_op.exit29.thread37.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i2.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i1.i.i.i) #9
  br label %out.thread.i.i

hynix_nand_cmd_op.exit29.i.i.i:                   ; preds = %if.end.i.i20.i.i.i
  %call25.i.i22.i.i.i = call i32 %83(ptr noundef %chip, ptr noundef nonnull %op.i2.i.i.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i2.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i22.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call25.i.i22.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %hynix_nand_cmd_op.exit29.i.i.i.if.end13.i.i.i_crit_edge, label %hynix_nand_cmd_op.exit29.i.i.i.out.thread.i.i_crit_edge

hynix_nand_cmd_op.exit29.i.i.i.out.thread.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

hynix_nand_cmd_op.exit29.i.i.i.if.end13.i.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %hynix_nand_cmd_op.exit29.i.i.i.if.end13.i.i.i_crit_edge, %hynix_nand_cmd_op.exit29.thread.i.i.i
  %88 = ptrtoint ptr %controller.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %controller.i.i.i.i.i, align 4
  %tobool.not.i.i57.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i57.i.i, label %if.end13.i.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge, label %lor.lhs.false.i.i60.i.i

if.end13.i.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit82.thread.i.i

lor.lhs.false.i.i60.i.i:                          ; preds = %if.end13.i.i.i
  %ops.i.i58.i.i = getelementptr inbounds %struct.nand_controller, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %ops.i.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i58.i.i, align 4
  %tobool2.not.i.i59.i.i = icmp eq ptr %91, null
  br i1 %tobool2.not.i.i59.i.i, label %lor.lhs.false.i.i60.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge, label %nand_has_exec_op.exit.i63.i.i

lor.lhs.false.i.i60.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit82.thread.i.i

nand_has_exec_op.exit.i63.i.i:                    ; preds = %lor.lhs.false.i.i60.i.i
  %exec_op.i.i61.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %exec_op.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %exec_op.i.i61.i.i, align 4
  %tobool6.not.i.not.i62.i.i = icmp eq ptr %93, null
  br i1 %tobool6.not.i.not.i62.i.i, label %nand_has_exec_op.exit.i63.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge, label %nand_has_exec_op.exit.i.i70.i.i

nand_has_exec_op.exit.i63.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge: ; preds = %nand_has_exec_op.exit.i63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit82.thread.i.i

nand_has_exec_op.exit.i.i70.i.i:                  ; preds = %nand_has_exec_op.exit.i63.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i54.i.i) #9
  %94 = call ptr @memset(ptr %instrs.i54.i.i, i32 0, i32 20)
  %95 = ptrtoint ptr %ctx.i64.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 23, ptr %ctx.i64.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i55.i.i) #9
  %96 = ptrtoint ptr %cur_cs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cur_cs.i.i.i.i, align 4
  %98 = ptrtoint ptr %op.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %op.i55.i.i, align 4
  %99 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %instrs.i54.i.i, ptr %21, align 4
  %100 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %22, align 4
  %101 = ptrtoint ptr %exec_op.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %exec_op.i.i61.i.i, align 4
  %tobool6.not.i.not.i.i69.i.i = icmp eq ptr %102, null
  br i1 %tobool6.not.i.not.i.i69.i.i, label %nand_has_exec_op.exit.i.i70.i.i.hynix_nand_cmd_op.exit82.thread85.i.i_crit_edge, label %if.end.i.i73.i.i

nand_has_exec_op.exit.i.i70.i.i.hynix_nand_cmd_op.exit82.thread85.i.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit82.thread85.i.i

if.end.i.i73.i.i:                                 ; preds = %nand_has_exec_op.exit.i.i70.i.i
  %103 = ptrtoint ptr %ntargets.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ntargets.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %104)
  %cmp.not.i.i72.i.i = icmp ult i32 %97, %104
  br i1 %cmp.not.i.i72.i.i, label %hynix_nand_cmd_op.exit82.i.i, label %do.end.i.i74.i.i, !prof !42

do.end.i.i74.i.i:                                 ; preds = %if.end.i.i73.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %hynix_nand_cmd_op.exit82.thread85.i.i

hynix_nand_cmd_op.exit82.thread.i.i:              ; preds = %nand_has_exec_op.exit.i63.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge, %lor.lhs.false.i.i60.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge, %if.end13.i.i.i.hynix_nand_cmd_op.exit82.thread.i.i_crit_edge
  %105 = ptrtoint ptr %cmdfunc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cmdfunc.i.i.i.i, align 8
  call void %106(ptr noundef %chip, i32 noundef 23, i32 noundef -1, i32 noundef -1) #9
  br label %if.end17.i.i.i

hynix_nand_cmd_op.exit82.thread85.i.i:            ; preds = %do.end.i.i74.i.i, %nand_has_exec_op.exit.i.i70.i.i.hynix_nand_cmd_op.exit82.thread85.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i55.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i54.i.i) #9
  br label %out.thread.i.i

hynix_nand_cmd_op.exit82.i.i:                     ; preds = %if.end.i.i73.i.i
  %call25.i.i75.i.i = call i32 %102(ptr noundef %chip, ptr noundef nonnull %op.i55.i.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i55.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i54.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i75.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %call25.i.i75.i.i, 0
  br i1 %tobool15.not.i.i.i, label %hynix_nand_cmd_op.exit82.i.i.if.end17.i.i.i_crit_edge, label %hynix_nand_cmd_op.exit82.i.i.out.thread.i.i_crit_edge

hynix_nand_cmd_op.exit82.i.i.out.thread.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

hynix_nand_cmd_op.exit82.i.i.if.end17.i.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %hynix_nand_cmd_op.exit82.i.i.if.end17.i.i.i_crit_edge, %hynix_nand_cmd_op.exit82.thread.i.i
  %107 = ptrtoint ptr %controller.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %controller.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %108, null
  br i1 %tobool.not.i.i.i.i, label %if.end17.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end17.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end17.i.i.i
  %ops.i.i.i.i = getelementptr inbounds %struct.nand_controller, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i.i.i.i, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %110, null
  br i1 %tobool2.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge, label %nand_has_exec_op.exit.i.i.i

lor.lhs.false.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i.i

nand_has_exec_op.exit.i.i.i:                      ; preds = %lor.lhs.false.i.i.i.i
  %exec_op.i.i.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %exec_op.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %exec_op.i.i.i.i, align 4
  %tobool6.not.i.not.i.i.i = icmp eq ptr %112, null
  br i1 %tobool6.not.i.not.i.i.i, label %nand_has_exec_op.exit.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge, label %nand_has_exec_op.exit.i.i50.i.i

nand_has_exec_op.exit.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i.i

nand_has_exec_op.exit.i.i50.i.i:                  ; preds = %nand_has_exec_op.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i.i.i) #9
  %113 = call ptr @memset(ptr %instrs.i.i.i, i32 0, i32 20)
  %114 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 4, ptr %ctx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i.i.i) #9
  %115 = ptrtoint ptr %cur_cs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cur_cs.i.i.i.i, align 4
  %117 = ptrtoint ptr %op.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %op.i.i.i, align 4
  %118 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %instrs.i.i.i, ptr %23, align 4
  %119 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %24, align 4
  %120 = ptrtoint ptr %exec_op.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %exec_op.i.i.i.i, align 4
  %tobool6.not.i.not.i.i49.i.i = icmp eq ptr %121, null
  br i1 %tobool6.not.i.not.i.i49.i.i, label %nand_has_exec_op.exit.i.i50.i.i.hynix_nand_cmd_op.exit.thread90.i.i_crit_edge, label %if.end.i.i51.i.i

nand_has_exec_op.exit.i.i50.i.i.hynix_nand_cmd_op.exit.thread90.i.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread90.i.i

if.end.i.i51.i.i:                                 ; preds = %nand_has_exec_op.exit.i.i50.i.i
  %122 = ptrtoint ptr %ntargets.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ntargets.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %123)
  %cmp.not.i.i.i.i = icmp ult i32 %116, %123
  br i1 %cmp.not.i.i.i.i, label %hynix_nand_cmd_op.exit.i.i, label %do.end.i.i.i.i, !prof !42

do.end.i.i.i.i:                                   ; preds = %if.end.i.i51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %hynix_nand_cmd_op.exit.thread90.i.i

hynix_nand_cmd_op.exit.thread.i.i:                ; preds = %nand_has_exec_op.exit.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge, %if.end17.i.i.i.hynix_nand_cmd_op.exit.thread.i.i_crit_edge
  %124 = ptrtoint ptr %cmdfunc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cmdfunc.i.i.i.i, align 8
  call void %125(ptr noundef %chip, i32 noundef 4, i32 noundef -1, i32 noundef -1) #9
  br label %if.end21.i.i.i

hynix_nand_cmd_op.exit.thread90.i.i:              ; preds = %do.end.i.i.i.i, %nand_has_exec_op.exit.i.i50.i.i.hynix_nand_cmd_op.exit.thread90.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i.i.i) #9
  br label %out.thread.i.i

hynix_nand_cmd_op.exit.i.i:                       ; preds = %if.end.i.i51.i.i
  %call25.i.i.i.i = call i32 %121(ptr noundef %chip, ptr noundef nonnull %op.i.i.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %call25.i.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %hynix_nand_cmd_op.exit.i.i.if.end21.i.i.i_crit_edge, label %hynix_nand_cmd_op.exit.i.i.out.thread.i.i_crit_edge

hynix_nand_cmd_op.exit.i.i.out.thread.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

hynix_nand_cmd_op.exit.i.i.if.end21.i.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i.i.i

if.end21.i.i.i:                                   ; preds = %hynix_nand_cmd_op.exit.i.i.if.end21.i.i.i_crit_edge, %hynix_nand_cmd_op.exit.thread.i.i
  %126 = ptrtoint ptr %controller.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %controller.i.i.i.i.i, align 4
  %tobool.not.i.i5.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i5.i, label %if.end21.i.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end21.i.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge: ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end21.i.i.i
  %ops.i.i.i = getelementptr inbounds %struct.nand_controller, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i.i.i, align 4
  %tobool2.not.i.i6.i = icmp eq ptr %129, null
  br i1 %tobool2.not.i.i6.i, label %lor.lhs.false.i.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge, label %nand_has_exec_op.exit.i.i

lor.lhs.false.i.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i

nand_has_exec_op.exit.i.i:                        ; preds = %lor.lhs.false.i.i.i
  %exec_op.i.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %exec_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %exec_op.i.i.i, align 4
  %tobool6.not.i.not.i.i = icmp eq ptr %131, null
  br i1 %tobool6.not.i.not.i.i, label %nand_has_exec_op.exit.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge, label %nand_has_exec_op.exit.i.i11.i

nand_has_exec_op.exit.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread.i

nand_has_exec_op.exit.i.i11.i:                    ; preds = %nand_has_exec_op.exit.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i.i) #9
  %132 = call ptr @memset(ptr %instrs.i.i, i32 0, i32 20)
  %133 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 25, ptr %ctx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i.i) #9
  %134 = ptrtoint ptr %cur_cs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cur_cs.i.i.i.i, align 4
  %136 = ptrtoint ptr %op.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %op.i.i, align 4
  %137 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %instrs.i.i, ptr %25, align 4
  %138 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %26, align 4
  %139 = ptrtoint ptr %exec_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %exec_op.i.i.i, align 4
  %tobool6.not.i.not.i.i10.i = icmp eq ptr %140, null
  br i1 %tobool6.not.i.not.i.i10.i, label %nand_has_exec_op.exit.i.i11.i.hynix_nand_cmd_op.exit.thread18.i_crit_edge, label %if.end.i.i12.i

nand_has_exec_op.exit.i.i11.i.hynix_nand_cmd_op.exit.thread18.i_crit_edge: ; preds = %nand_has_exec_op.exit.i.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread18.i

if.end.i.i12.i:                                   ; preds = %nand_has_exec_op.exit.i.i11.i
  %141 = ptrtoint ptr %ntargets.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ntargets.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %142)
  %cmp.not.i.i.i = icmp ult i32 %135, %142
  br i1 %cmp.not.i.i.i, label %hynix_nand_cmd_op.exit.i, label %do.end.i.i.i, !prof !42

do.end.i.i.i:                                     ; preds = %if.end.i.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %hynix_nand_cmd_op.exit.thread18.i

hynix_nand_cmd_op.exit.thread.i:                  ; preds = %nand_has_exec_op.exit.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge, %if.end21.i.i.i.hynix_nand_cmd_op.exit.thread.i_crit_edge
  %143 = ptrtoint ptr %cmdfunc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cmdfunc.i.i.i.i, align 8
  call void %144(ptr noundef %chip, i32 noundef 25, i32 noundef -1, i32 noundef -1) #9
  br label %if.end25.i.i.i

hynix_nand_cmd_op.exit.thread18.i:                ; preds = %do.end.i.i.i, %nand_has_exec_op.exit.i.i11.i.hynix_nand_cmd_op.exit.thread18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i.i) #9
  br label %out.thread.i.i

hynix_nand_cmd_op.exit.i:                         ; preds = %if.end.i.i12.i
  %call25.i.i.i = call i32 %140(ptr noundef %chip, ptr noundef nonnull %op.i.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call25.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %hynix_nand_cmd_op.exit.i.if.end25.i.i.i_crit_edge, label %hynix_nand_cmd_op.exit.i.out.thread.i.i_crit_edge

hynix_nand_cmd_op.exit.i.out.thread.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

hynix_nand_cmd_op.exit.i.if.end25.i.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %hynix_nand_cmd_op.exit.i.if.end25.i.i.i_crit_edge, %hynix_nand_cmd_op.exit.thread.i
  %call26.i.i.i = call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef 543, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 784) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %if.end29.i.i.i, label %if.end25.i.i.i.out.thread.i.i_crit_edge

if.end25.i.i.i.out.thread.i.i_crit_edge:          ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

if.end29.i.i.i:                                   ; preds = %if.end25.i.i.i
  %call30.i.i.i = call i32 @nand_reset_op(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %call30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %if.end33.i.i.i, label %if.end29.i.i.i.out.thread.i.i_crit_edge

if.end29.i.i.i.out.thread.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

if.end33.i.i.i:                                   ; preds = %if.end29.i.i.i
  %145 = ptrtoint ptr %controller.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %controller.i.i.i.i.i, align 4
  %tobool.not.i.i44 = icmp eq ptr %146, null
  br i1 %tobool.not.i.i44, label %if.end33.i.i.i.hynix_nand_cmd_op.exit69.thread_crit_edge, label %lor.lhs.false.i.i47

if.end33.i.i.i.hynix_nand_cmd_op.exit69.thread_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit69.thread

lor.lhs.false.i.i47:                              ; preds = %if.end33.i.i.i
  %ops.i.i45 = getelementptr inbounds %struct.nand_controller, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %ops.i.i45 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops.i.i45, align 4
  %tobool2.not.i.i46 = icmp eq ptr %148, null
  br i1 %tobool2.not.i.i46, label %lor.lhs.false.i.i47.hynix_nand_cmd_op.exit69.thread_crit_edge, label %nand_has_exec_op.exit.i50

lor.lhs.false.i.i47.hynix_nand_cmd_op.exit69.thread_crit_edge: ; preds = %lor.lhs.false.i.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit69.thread

nand_has_exec_op.exit.i50:                        ; preds = %lor.lhs.false.i.i47
  %exec_op.i.i48 = getelementptr inbounds %struct.nand_controller_ops, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %exec_op.i.i48 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %exec_op.i.i48, align 4
  %tobool6.not.i.not.i49 = icmp eq ptr %150, null
  br i1 %tobool6.not.i.not.i49, label %nand_has_exec_op.exit.i50.hynix_nand_cmd_op.exit69.thread_crit_edge, label %nand_has_exec_op.exit.i.i57

nand_has_exec_op.exit.i50.hynix_nand_cmd_op.exit69.thread_crit_edge: ; preds = %nand_has_exec_op.exit.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit69.thread

nand_has_exec_op.exit.i.i57:                      ; preds = %nand_has_exec_op.exit.i50
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i41) #9
  %151 = call ptr @memset(ptr %instrs.i41, i32 0, i32 20)
  %152 = ptrtoint ptr %ctx.i51 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 54, ptr %ctx.i51, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i42) #9
  %153 = ptrtoint ptr %cur_cs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %cur_cs.i.i.i.i, align 4
  %155 = ptrtoint ptr %op.i42 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %op.i42, align 4
  %156 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %instrs.i41, ptr %41, align 4
  %157 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %42, align 4
  %158 = ptrtoint ptr %exec_op.i.i48 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %exec_op.i.i48, align 4
  %tobool6.not.i.not.i.i56 = icmp eq ptr %159, null
  br i1 %tobool6.not.i.not.i.i56, label %nand_has_exec_op.exit.i.i57.hynix_nand_cmd_op.exit69.thread72_crit_edge, label %if.end.i.i60

nand_has_exec_op.exit.i.i57.hynix_nand_cmd_op.exit69.thread72_crit_edge: ; preds = %nand_has_exec_op.exit.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit69.thread72

if.end.i.i60:                                     ; preds = %nand_has_exec_op.exit.i.i57
  %160 = ptrtoint ptr %ntargets.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ntargets.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %161)
  %cmp.not.i.i59 = icmp ult i32 %154, %161
  br i1 %cmp.not.i.i59, label %hynix_nand_cmd_op.exit69, label %do.end.i.i61, !prof !42

do.end.i.i61:                                     ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %hynix_nand_cmd_op.exit69.thread72

hynix_nand_cmd_op.exit69.thread:                  ; preds = %nand_has_exec_op.exit.i50.hynix_nand_cmd_op.exit69.thread_crit_edge, %lor.lhs.false.i.i47.hynix_nand_cmd_op.exit69.thread_crit_edge, %if.end33.i.i.i.hynix_nand_cmd_op.exit69.thread_crit_edge
  %162 = ptrtoint ptr %cmdfunc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cmdfunc.i.i.i.i, align 8
  call void %163(ptr noundef %chip, i32 noundef 54, i32 noundef -1, i32 noundef -1) #9
  br label %if.end37.i.i.i

hynix_nand_cmd_op.exit69.thread72:                ; preds = %do.end.i.i61, %nand_has_exec_op.exit.i.i57.hynix_nand_cmd_op.exit69.thread72_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i42) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i41) #9
  br label %out.thread.i.i

hynix_nand_cmd_op.exit69:                         ; preds = %if.end.i.i60
  %call25.i.i62 = call i32 %159(ptr noundef %chip, ptr noundef nonnull %op.i42, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i42) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i62)
  %tobool35.not.i.i.i = icmp eq i32 %call25.i.i62, 0
  br i1 %tobool35.not.i.i.i, label %hynix_nand_cmd_op.exit69.if.end37.i.i.i_crit_edge, label %hynix_nand_cmd_op.exit69.out.thread.i.i_crit_edge

hynix_nand_cmd_op.exit69.out.thread.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit69
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

hynix_nand_cmd_op.exit69.if.end37.i.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i.i

if.end37.i.i.i:                                   ; preds = %hynix_nand_cmd_op.exit69.if.end37.i.i.i_crit_edge, %hynix_nand_cmd_op.exit69.thread
  %call38.i.i.i = call fastcc i32 @hynix_nand_reg_write_op(ptr noundef %chip, i8 noundef zeroext 56, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i.i)
  %tobool39.not.i.i.i = icmp eq i32 %call38.i.i.i, 0
  br i1 %tobool39.not.i.i.i, label %if.end41.i.i.i, label %if.end37.i.i.i.out.thread.i.i_crit_edge

if.end37.i.i.i.out.thread.i.i_crit_edge:          ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

if.end41.i.i.i:                                   ; preds = %if.end37.i.i.i
  %164 = ptrtoint ptr %controller.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %controller.i.i.i.i.i, align 4
  %tobool.not.i.i35 = icmp eq ptr %165, null
  br i1 %tobool.not.i.i35, label %if.end41.i.i.i.hynix_nand_cmd_op.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.end41.i.i.i.hynix_nand_cmd_op.exit.thread_crit_edge: ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end41.i.i.i
  %ops.i.i = getelementptr inbounds %struct.nand_controller, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ops.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %167, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.hynix_nand_cmd_op.exit.thread_crit_edge, label %nand_has_exec_op.exit.i

lor.lhs.false.i.i.hynix_nand_cmd_op.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread

nand_has_exec_op.exit.i:                          ; preds = %lor.lhs.false.i.i
  %exec_op.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i = icmp eq ptr %169, null
  br i1 %tobool6.not.i.not.i, label %nand_has_exec_op.exit.i.hynix_nand_cmd_op.exit.thread_crit_edge, label %nand_has_exec_op.exit.i.i40

nand_has_exec_op.exit.i.hynix_nand_cmd_op.exit.thread_crit_edge: ; preds = %nand_has_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread

nand_has_exec_op.exit.i.i40:                      ; preds = %nand_has_exec_op.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i) #9
  %170 = call ptr @memset(ptr %instrs.i, i32 0, i32 20)
  %171 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 22, ptr %ctx.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i) #9
  %172 = ptrtoint ptr %cur_cs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cur_cs.i.i.i.i, align 4
  %174 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %op.i, align 4
  %175 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %instrs.i, ptr %43, align 4
  %176 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %44, align 4
  %177 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i.i39 = icmp eq ptr %178, null
  br i1 %tobool6.not.i.not.i.i39, label %nand_has_exec_op.exit.i.i40.hynix_nand_cmd_op.exit.thread77_crit_edge, label %if.end.i.i

nand_has_exec_op.exit.i.i40.hynix_nand_cmd_op.exit.thread77_crit_edge: ; preds = %nand_has_exec_op.exit.i.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread77

if.end.i.i:                                       ; preds = %nand_has_exec_op.exit.i.i40
  %179 = ptrtoint ptr %ntargets.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ntargets.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %180)
  %cmp.not.i.i = icmp ult i32 %173, %180
  br i1 %cmp.not.i.i, label %hynix_nand_cmd_op.exit, label %do.end.i.i, !prof !42

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %hynix_nand_cmd_op.exit.thread77

hynix_nand_cmd_op.exit.thread:                    ; preds = %nand_has_exec_op.exit.i.hynix_nand_cmd_op.exit.thread_crit_edge, %lor.lhs.false.i.i.hynix_nand_cmd_op.exit.thread_crit_edge, %if.end41.i.i.i.hynix_nand_cmd_op.exit.thread_crit_edge
  %181 = ptrtoint ptr %cmdfunc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cmdfunc.i.i.i.i, align 8
  call void %182(ptr noundef %chip, i32 noundef 22, i32 noundef -1, i32 noundef -1) #9
  br label %hynix_read_rr_otp.exit.i.i

hynix_nand_cmd_op.exit.thread77:                  ; preds = %do.end.i.i, %nand_has_exec_op.exit.i.i40.hynix_nand_cmd_op.exit.thread77_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i) #9
  br label %out.thread.i.i

hynix_nand_cmd_op.exit:                           ; preds = %if.end.i.i
  %call25.i.i = call i32 %178(ptr noundef %chip, ptr noundef nonnull %op.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool43.not.i.i.i, label %hynix_nand_cmd_op.exit.hynix_read_rr_otp.exit.i.i_crit_edge, label %hynix_nand_cmd_op.exit.out.thread.i.i_crit_edge

hynix_nand_cmd_op.exit.out.thread.i.i_crit_edge:  ; preds = %hynix_nand_cmd_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

hynix_nand_cmd_op.exit.hynix_read_rr_otp.exit.i.i_crit_edge: ; preds = %hynix_nand_cmd_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_read_rr_otp.exit.i.i

hynix_read_rr_otp.exit.i.i:                       ; preds = %hynix_nand_cmd_op.exit.hynix_read_rr_otp.exit.i.i_crit_edge, %hynix_nand_cmd_op.exit.thread
  %call46.i.i.i = call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i.i)
  %tobool3.not.i3.i = icmp eq i32 %call46.i.i.i, 0
  br i1 %tobool3.not.i3.i, label %if.end5.i.i, label %hynix_read_rr_otp.exit.i.i.out.thread.i.i_crit_edge

hynix_read_rr_otp.exit.i.i.out.thread.i.i_crit_edge: ; preds = %hynix_read_rr_otp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

if.end5.i.i:                                      ; preds = %hynix_read_rr_otp.exit.i.i
  %call6.i.i = call fastcc i32 @hynix_get_majority(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %nmodes.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end5.i.i.out.thread.i.i_crit_edge

if.end5.i.i.out.thread.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i.i, i32 8
  %call10.i.i = call fastcc i32 @hynix_get_majority(ptr noundef %add.ptr.i.i, ptr noundef nonnull %nregs.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end9.i.i.out.thread.i.i_crit_edge

if.end9.i.i.out.thread.i.i_crit_edge:             ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %183 = ptrtoint ptr %nmodes.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %nmodes.i.i, align 1
  %conv14.i.i = zext i8 %184 to i32
  %185 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %nregs.i.i, align 1
  %conv.i.i = zext i8 %186 to i32
  %mul.i.i = mul nuw nsw i32 %conv14.i.i, %conv.i.i
  %add.i.i = add nuw nsw i32 %mul.i.i, 8
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #14
  %tobool16.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool16.not.i.i, label %if.end13.i.i.out.thread.i.i_crit_edge, label %for.cond.preheader.i.i

if.end13.i.i.out.thread.i.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.i.i

for.cond.preheader.i.i:                           ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %cmp113.not.i.i = icmp eq i8 %184, 0
  br i1 %cmp113.not.i.i, label %for.cond.preheader.i.i.hynix_mlc_1xnm_rr_init.exit.i_crit_edge, label %for.cond21.preheader.lr.ph.i.i

for.cond.preheader.i.i.hynix_mlc_1xnm_rr_init.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_mlc_1xnm_rr_init.exit.i

for.cond21.preheader.lr.ph.i.i:                   ; preds = %for.cond.preheader.i.i
  %values.i.i = getelementptr inbounds %struct.hynix_read_retry, ptr %call9.i.i.i.i, i32 0, i32 2
  %187 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %nregs.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp23109.not.i.i = icmp eq i8 %188, 0
  %conv22108.i.i = zext i8 %188 to i32
  br label %for.cond21.preheader.i.i

for.cond21.preheader.i.i:                         ; preds = %for.inc41.i.i.for.cond21.preheader.i.i_crit_edge, %for.cond21.preheader.lr.ph.i.i
  %i.0114.i.i = phi i32 [ 0, %for.cond21.preheader.lr.ph.i.i ], [ %inc42.i.i, %for.inc41.i.i.for.cond21.preheader.i.i_crit_edge ]
  br i1 %cmp23109.not.i.i, label %for.cond21.preheader.i.i.for.inc41.i.i_crit_edge, label %for.body25.preheader.i.i

for.cond21.preheader.i.i.for.inc41.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.i.i

for.body25.preheader.i.i:                         ; preds = %for.cond21.preheader.i.i
  %189 = ptrtoint ptr %nmodes.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %nmodes.i.i, align 1
  %conv29.i.i = zext i8 %190 to i32
  %mul4.1.i.i.i = shl nuw nsw i32 %conv29.i.i, 1
  %reass.add.1.i.i.i = add nuw nsw i32 %mul4.1.i.i.i, %i.0114.i.i
  %mul4.2.i.i.i = shl nuw nsw i32 %conv29.i.i, 2
  %reass.add.2.i.i.i = add nuw nsw i32 %mul4.2.i.i.i, %i.0114.i.i
  %mul4.3.i.i.i = mul nuw nsw i32 %conv29.i.i, 6
  %reass.add.3.i.i.i = add nuw nsw i32 %mul4.3.i.i.i, %i.0114.i.i
  %mul4.4.i.i.i = shl nuw nsw i32 %conv29.i.i, 3
  %reass.add.4.i.i.i = add nuw nsw i32 %mul4.4.i.i.i, %i.0114.i.i
  %mul4.5.i.i.i = mul nuw nsw i32 %conv29.i.i, 10
  %reass.add.5.i.i.i = add nuw i32 %mul4.5.i.i.i, %i.0114.i.i
  %mul4.6.i.i.i = mul nuw nsw i32 %conv29.i.i, 12
  %reass.add.6.i.i.i = add nuw i32 %mul4.6.i.i.i, %i.0114.i.i
  %mul4.7.i.i.i = mul nuw nsw i32 %conv29.i.i, 14
  %reass.add.7.i.i.i = add nuw i32 %mul4.7.i.i.i, %i.0114.i.i
  br label %for.body25.i.i

for.body25.i.i:                                   ; preds = %for.inc.i.i.for.body25.i.i_crit_edge, %for.body25.preheader.i.i
  %conv22111.i.i = phi i32 [ %conv22.i.i, %for.inc.i.i.for.body25.i.i_crit_edge ], [ %conv22108.i.i, %for.body25.preheader.i.i ]
  %j.0110.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.preheader.i.i ]
  %mul27.i.i = mul i32 %conv22111.i.i, %i.0114.i.i
  %add.ptr28.i.i = getelementptr i8, ptr %values.i.i, i32 %mul27.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i.i) #9
  %add.i.i.i = add nuw nsw i32 %j.0110.i.i, 16
  %add6.i.i.i = add i32 %add.i.i.i, %mul27.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.i.i.i
  %191 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i.i.i, align 1
  %193 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %tmp.i.i.i, align 1
  %reass.mul.1.i.i.i = mul i32 %reass.add.1.i.i.i, %conv22111.i.i
  %add6.1.i.i.i = add i32 %reass.mul.1.i.i.i, %add.i.i.i
  %arrayidx.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.1.i.i.i
  %194 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %196 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %27, align 1
  %reass.mul.2.i.i.i = mul i32 %reass.add.2.i.i.i, %conv22111.i.i
  %add6.2.i.i.i = add i32 %reass.mul.2.i.i.i, %add.i.i.i
  %arrayidx.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.2.i.i.i
  %197 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %199 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %28, align 1
  %reass.mul.3.i.i.i = mul i32 %reass.add.3.i.i.i, %conv22111.i.i
  %add6.3.i.i.i = add i32 %reass.mul.3.i.i.i, %add.i.i.i
  %arrayidx.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.3.i.i.i
  %200 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %202 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %29, align 1
  %reass.mul.4.i.i.i = mul i32 %reass.add.4.i.i.i, %conv22111.i.i
  %add6.4.i.i.i = add i32 %reass.mul.4.i.i.i, %add.i.i.i
  %arrayidx.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.4.i.i.i
  %203 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %205 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %30, align 1
  %reass.mul.5.i.i.i = mul i32 %reass.add.5.i.i.i, %conv22111.i.i
  %add6.5.i.i.i = add i32 %reass.mul.5.i.i.i, %add.i.i.i
  %arrayidx.5.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.5.i.i.i
  %206 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %208 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %31, align 1
  %reass.mul.6.i.i.i = mul i32 %reass.add.6.i.i.i, %conv22111.i.i
  %add6.6.i.i.i = add i32 %reass.mul.6.i.i.i, %add.i.i.i
  %arrayidx.6.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.6.i.i.i
  %209 = ptrtoint ptr %arrayidx.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx.6.i.i.i, align 1
  %211 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %32, align 1
  %reass.mul.7.i.i.i = mul i32 %reass.add.7.i.i.i, %conv22111.i.i
  %add6.7.i.i.i = add i32 %reass.mul.7.i.i.i, %add.i.i.i
  %arrayidx.7.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.7.i.i.i
  %212 = ptrtoint ptr %arrayidx.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.7.i.i.i, align 1
  %214 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %33, align 1
  %call.i1.i.i = call fastcc i32 @hynix_get_majority(ptr noundef nonnull %tmp.i.i.i, ptr noundef %add.ptr28.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool32.not.i.i = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool32.not.i.i, label %for.body25.i.i.for.inc.i.i_crit_edge, label %if.end34.i.i

for.body25.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end34.i.i:                                     ; preds = %for.body25.i.i
  %215 = ptrtoint ptr %nmodes.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %nmodes.i.i, align 1
  %conv35.i.i = zext i8 %216 to i32
  %217 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %nregs.i.i, align 1
  %conv36.i.i = zext i8 %218 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i3.i.i) #9
  %reass.add.i.i.i = add nuw nsw i32 %i.0114.i.i, %conv35.i.i
  %reass.mul.i5.i.i = mul i32 %reass.add.i.i.i, %conv36.i.i
  %add6.i6.i.i = add i32 %reass.mul.i5.i.i, %add.i.i.i
  %arrayidx.i7.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.i6.i.i
  %219 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx.i7.i.i, align 1
  %221 = ptrtoint ptr %tmp.i3.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %tmp.i3.i.i, align 1
  %mul4.1.i8.i.i = mul nuw nsw i32 %conv35.i.i, 3
  %reass.add.1.i9.i.i = add nuw nsw i32 %mul4.1.i8.i.i, %i.0114.i.i
  %reass.mul.1.i10.i.i = mul i32 %reass.add.1.i9.i.i, %conv36.i.i
  %add6.1.i11.i.i = add i32 %reass.mul.1.i10.i.i, %add.i.i.i
  %arrayidx.1.i12.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.1.i11.i.i
  %222 = ptrtoint ptr %arrayidx.1.i12.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx.1.i12.i.i, align 1
  %224 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %34, align 1
  %mul4.2.i13.i.i = mul nuw nsw i32 %conv35.i.i, 5
  %reass.add.2.i14.i.i = add nuw nsw i32 %mul4.2.i13.i.i, %i.0114.i.i
  %reass.mul.2.i15.i.i = mul i32 %reass.add.2.i14.i.i, %conv36.i.i
  %add6.2.i16.i.i = add i32 %reass.mul.2.i15.i.i, %add.i.i.i
  %arrayidx.2.i17.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.2.i16.i.i
  %225 = ptrtoint ptr %arrayidx.2.i17.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx.2.i17.i.i, align 1
  %227 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %35, align 1
  %mul4.3.i18.i.i = mul nuw nsw i32 %conv35.i.i, 7
  %reass.add.3.i19.i.i = add nuw nsw i32 %mul4.3.i18.i.i, %i.0114.i.i
  %reass.mul.3.i20.i.i = mul i32 %reass.add.3.i19.i.i, %conv36.i.i
  %add6.3.i21.i.i = add i32 %reass.mul.3.i20.i.i, %add.i.i.i
  %arrayidx.3.i22.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.3.i21.i.i
  %228 = ptrtoint ptr %arrayidx.3.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx.3.i22.i.i, align 1
  %230 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %36, align 1
  %mul4.4.i23.i.i = mul nuw nsw i32 %conv35.i.i, 9
  %reass.add.4.i24.i.i = add nuw i32 %mul4.4.i23.i.i, %i.0114.i.i
  %reass.mul.4.i25.i.i = mul i32 %reass.add.4.i24.i.i, %conv36.i.i
  %add6.4.i26.i.i = add i32 %reass.mul.4.i25.i.i, %add.i.i.i
  %arrayidx.4.i27.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.4.i26.i.i
  %231 = ptrtoint ptr %arrayidx.4.i27.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.4.i27.i.i, align 1
  %233 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %37, align 1
  %mul4.5.i28.i.i = mul nuw nsw i32 %conv35.i.i, 11
  %reass.add.5.i29.i.i = add nuw i32 %mul4.5.i28.i.i, %i.0114.i.i
  %reass.mul.5.i30.i.i = mul i32 %reass.add.5.i29.i.i, %conv36.i.i
  %add6.5.i31.i.i = add i32 %reass.mul.5.i30.i.i, %add.i.i.i
  %arrayidx.5.i32.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.5.i31.i.i
  %234 = ptrtoint ptr %arrayidx.5.i32.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx.5.i32.i.i, align 1
  %236 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %38, align 1
  %mul4.6.i33.i.i = mul nuw nsw i32 %conv35.i.i, 13
  %reass.add.6.i34.i.i = add nuw i32 %mul4.6.i33.i.i, %i.0114.i.i
  %reass.mul.6.i35.i.i = mul i32 %reass.add.6.i34.i.i, %conv36.i.i
  %add6.6.i36.i.i = add i32 %reass.mul.6.i35.i.i, %add.i.i.i
  %arrayidx.6.i37.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.6.i36.i.i
  %237 = ptrtoint ptr %arrayidx.6.i37.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx.6.i37.i.i, align 1
  %239 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %39, align 1
  %mul4.7.i38.i.i = mul nuw nsw i32 %conv35.i.i, 15
  %reass.add.7.i39.i.i = add nuw i32 %mul4.7.i38.i.i, %i.0114.i.i
  %reass.mul.7.i40.i.i = mul i32 %reass.add.7.i39.i.i, %conv36.i.i
  %add6.7.i41.i.i = add i32 %reass.mul.7.i40.i.i, %add.i.i.i
  %arrayidx.7.i42.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %add6.7.i41.i.i
  %240 = ptrtoint ptr %arrayidx.7.i42.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx.7.i42.i.i, align 1
  %242 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %40, align 1
  %call.i43.i.i = call fastcc i32 @hynix_get_majority(ptr noundef nonnull %tmp.i3.i.i, ptr noundef %add.ptr28.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i.i)
  %tobool8.not.i44.i.i = icmp eq i32 %call.i43.i.i, 0
  br i1 %tobool8.not.i44.i.i, label %243, label %cleanup.i.i

243:                                              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %244 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %add.ptr28.i.i, align 1
  %neg.i.i.i = xor i8 %245, -1
  store i8 %neg.i.i.i, ptr %add.ptr28.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i3.i.i) #9
  br label %for.inc.i.i

cleanup.i.i:                                      ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i3.i.i) #9
  br label %out.thread.i.i

for.inc.i.i:                                      ; preds = %243, %for.body25.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %j.0110.i.i, 1
  %246 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %nregs.i.i, align 1
  %conv22.i.i = zext i8 %247 to i32
  %cmp23.i.i = icmp ult i32 %inc.i.i, %conv22.i.i
  br i1 %cmp23.i.i, label %for.inc.i.i.for.body25.i.i_crit_edge, label %for.inc.i.i.for.inc41.i.i_crit_edge

for.inc.i.i.for.inc41.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.i.i

for.inc.i.i.for.body25.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25.i.i

for.inc41.i.i:                                    ; preds = %for.inc.i.i.for.inc41.i.i_crit_edge, %for.cond21.preheader.i.i.for.inc41.i.i_crit_edge
  %inc42.i.i = add nuw nsw i32 %i.0114.i.i, 1
  %248 = ptrtoint ptr %nmodes.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %nmodes.i.i, align 1
  %conv19.i.i = zext i8 %249 to i32
  %cmp.i.i = icmp ult i32 %inc42.i.i, %conv19.i.i
  br i1 %cmp.i.i, label %for.inc41.i.i.for.cond21.preheader.i.i_crit_edge, label %hynix_mlc_1xnm_rr_init.exit.i.loopexit

for.inc41.i.i.for.cond21.preheader.i.i_crit_edge: ; preds = %for.inc41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond21.preheader.i.i

out.thread.i.i:                                   ; preds = %cleanup.i.i, %if.end13.i.i.out.thread.i.i_crit_edge, %if.end9.i.i.out.thread.i.i_crit_edge, %if.end5.i.i.out.thread.i.i_crit_edge, %hynix_read_rr_otp.exit.i.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit.thread77, %if.end37.i.i.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit69.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit69.thread72, %if.end29.i.i.i.out.thread.i.i_crit_edge, %if.end25.i.i.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit.thread18.i, %hynix_nand_cmd_op.exit.i.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit.thread90.i.i, %hynix_nand_cmd_op.exit82.i.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit82.thread85.i.i, %hynix_nand_cmd_op.exit29.i.i.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit29.thread37.i.i.i, %for.body.i.i.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit.i.i.i.out.thread.i.i_crit_edge, %hynix_nand_cmd_op.exit.thread32.i.i.i, %if.end.i2.i.out.thread.i.i_crit_edge
  %rr.0.ph.i.i = phi ptr [ null, %if.end13.i.i.out.thread.i.i_crit_edge ], [ %call9.i.i.i.i, %cleanup.i.i ], [ null, %if.end9.i.i.out.thread.i.i_crit_edge ], [ null, %if.end5.i.i.out.thread.i.i_crit_edge ], [ null, %hynix_read_rr_otp.exit.i.i.out.thread.i.i_crit_edge ], [ null, %if.end.i2.i.out.thread.i.i_crit_edge ], [ null, %hynix_nand_cmd_op.exit.i.i.i.out.thread.i.i_crit_edge ], [ null, %for.body.i.i.i.out.thread.i.i_crit_edge ], [ null, %hynix_nand_cmd_op.exit29.i.i.i.out.thread.i.i_crit_edge ], [ null, %hynix_nand_cmd_op.exit82.i.i.out.thread.i.i_crit_edge ], [ null, %hynix_nand_cmd_op.exit.i.i.out.thread.i.i_crit_edge ], [ null, %hynix_nand_cmd_op.exit.i.out.thread.i.i_crit_edge ], [ null, %if.end25.i.i.i.out.thread.i.i_crit_edge ], [ null, %if.end29.i.i.i.out.thread.i.i_crit_edge ], [ null, %hynix_nand_cmd_op.exit69.out.thread.i.i_crit_edge ], [ null, %if.end37.i.i.i.out.thread.i.i_crit_edge ], [ null, %hynix_nand_cmd_op.exit.out.thread.i.i_crit_edge ], [ null, %hynix_nand_cmd_op.exit.thread32.i.i.i ], [ null, %hynix_nand_cmd_op.exit29.thread37.i.i.i ], [ null, %hynix_nand_cmd_op.exit82.thread85.i.i ], [ null, %hynix_nand_cmd_op.exit.thread90.i.i ], [ null, %hynix_nand_cmd_op.exit.thread18.i ], [ null, %hynix_nand_cmd_op.exit69.thread72 ], [ null, %hynix_nand_cmd_op.exit.thread77 ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @kfree(ptr noundef %rr.0.ph.i.i) #9
  br label %for.inc.i

hynix_mlc_1xnm_rr_init.exit.i.loopexit:           ; preds = %for.inc41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv19.i.i.le = zext i8 %249 to i32
  br label %hynix_mlc_1xnm_rr_init.exit.i

hynix_mlc_1xnm_rr_init.exit.i:                    ; preds = %hynix_mlc_1xnm_rr_init.exit.i.loopexit, %for.cond.preheader.i.i.hynix_mlc_1xnm_rr_init.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %conv19.i.i.le, %hynix_mlc_1xnm_rr_init.exit.i.loopexit ], [ 0, %for.cond.preheader.i.i.hynix_mlc_1xnm_rr_init.exit.i_crit_edge ]
  %250 = ptrtoint ptr %nregs.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %nregs.i.i, align 1
  %conv44.i.i = zext i8 %251 to i32
  %252 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv44.i.i, ptr %call9.i.i.i.i, align 128
  %regs.i.i = getelementptr inbounds %struct.hynix_read_retry, ptr %call9.i.i.i.i, i32 0, i32 1
  %253 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr @hynix_1xnm_mlc_read_retry_regs, ptr %regs.i.i, align 4
  %254 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call9.i.i.i.i, ptr %46, align 4
  %setup_read_retry.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 4, i32 4
  %255 = ptrtoint ptr %setup_read_retry.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr @hynix_nand_setup_read_retry, ptr %setup_read_retry.i.i, align 8
  %read_retries.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 29
  %256 = ptrtoint ptr %read_retries.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %.lcssa.i.i, ptr %read_retries.i.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nmodes.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nregs.i.i) #9
  br label %cleanup

for.inc.i:                                        ; preds = %out.thread.i.i, %for.body.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nmodes.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nregs.i.i) #9
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2
  br i1 %exitcond.not.i, label %do.end.i34, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end.i34:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end.i34, %hynix_mlc_1xnm_rr_init.exit.i, %if.then.i.cleanup_crit_edge, %hynix_nand_has_valid_jedecid.exit.i.cleanup_crit_edge, %hynix_nand_has_valid_jedecid.exit.thread.i, %nand_is_slc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %nand_is_slc.exit.cleanup_crit_edge ], [ 0, %hynix_nand_has_valid_jedecid.exit.thread.i ], [ 0, %hynix_nand_has_valid_jedecid.exit.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %hynix_mlc_1xnm_rr_init.exit.i ], [ 0, %do.end.i34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hynix_nand_cleanup(ptr nocapture noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_decode_ext_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_readid_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h27ucg8t2atrbc_choose_interface_config(ptr noundef %chip, ptr noundef %iface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @onfi_fill_interface_config(ptr noundef %chip, ptr noundef %iface, i32 noundef 0, i32 noundef 4) #9
  %call = tail call i32 @nand_choose_best_sdr_timings(ptr noundef %chip, ptr noundef %iface, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @onfi_fill_interface_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_choose_best_sdr_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hynix_get_majority(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %out) unnamed_addr #7 align 64 {
for.end:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in, align 1
  %arrayidx4 = getelementptr i8, ptr %in, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp6 = icmp eq i8 %3, %1
  %inc = zext i1 %cmp6 to i32
  %arrayidx4.15 = getelementptr i8, ptr %in, i32 2
  %4 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %1)
  %cmp6.16 = icmp eq i8 %5, %1
  %inc.17 = zext i1 %cmp6.16 to i32
  %spec.select.1 = add nuw nsw i32 %inc, %inc.17
  %arrayidx4.29 = getelementptr i8, ptr %in, i32 3
  %6 = ptrtoint ptr %arrayidx4.29 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.29, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %1)
  %cmp6.210 = icmp eq i8 %7, %1
  %inc.211 = zext i1 %cmp6.210 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc.211
  %arrayidx4.313 = getelementptr i8, ptr %in, i32 4
  %8 = ptrtoint ptr %arrayidx4.313 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.313, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %1)
  %cmp6.314 = icmp eq i8 %9, %1
  %inc.315 = zext i1 %cmp6.314 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc.315
  %arrayidx4.4 = getelementptr i8, ptr %in, i32 5
  %10 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %1)
  %cmp6.4 = icmp eq i8 %11, %1
  %inc.4 = zext i1 %cmp6.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc.4
  %arrayidx4.5 = getelementptr i8, ptr %in, i32 6
  %12 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %1)
  %cmp6.5 = icmp eq i8 %13, %1
  %inc.5 = zext i1 %cmp6.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc.5
  %arrayidx4.6 = getelementptr i8, ptr %in, i32 7
  %14 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %1)
  %cmp6.6 = icmp eq i8 %15, %1
  %inc.6 = zext i1 %cmp6.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.6)
  %phi.cmp = icmp ugt i32 %spec.select.6, 4
  br i1 %phi.cmp, label %for.end.if.then11_crit_edge, label %for.end.1

for.end.if.then11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

for.end.1:                                        ; preds = %for.end
  %arrayidx.1 = getelementptr i8, ptr %in, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.1, align 1
  %arrayidx4.1 = getelementptr i8, ptr %in, i32 2
  %18 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %17)
  %cmp6.1 = icmp eq i8 %19, %17
  %inc.1 = zext i1 %cmp6.1 to i32
  %arrayidx4.1.1 = getelementptr i8, ptr %in, i32 3
  %20 = ptrtoint ptr %arrayidx4.1.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.1.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %17)
  %cmp6.1.1 = icmp eq i8 %21, %17
  %inc.1.1 = zext i1 %cmp6.1.1 to i32
  %spec.select.1.1 = add nuw nsw i32 %inc.1, %inc.1.1
  %arrayidx4.1.2 = getelementptr i8, ptr %in, i32 4
  %22 = ptrtoint ptr %arrayidx4.1.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.1.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %17)
  %cmp6.1.2 = icmp eq i8 %23, %17
  %inc.1.2 = zext i1 %cmp6.1.2 to i32
  %spec.select.1.2 = add nuw nsw i32 %spec.select.1.1, %inc.1.2
  %arrayidx4.1.3 = getelementptr i8, ptr %in, i32 5
  %24 = ptrtoint ptr %arrayidx4.1.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx4.1.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %17)
  %cmp6.1.3 = icmp eq i8 %25, %17
  %inc.1.3 = zext i1 %cmp6.1.3 to i32
  %spec.select.1.3 = add nuw nsw i32 %spec.select.1.2, %inc.1.3
  %arrayidx4.1.4 = getelementptr i8, ptr %in, i32 6
  %26 = ptrtoint ptr %arrayidx4.1.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx4.1.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %17)
  %cmp6.1.4 = icmp eq i8 %27, %17
  %inc.1.4 = zext i1 %cmp6.1.4 to i32
  %spec.select.1.4 = add nuw nsw i32 %spec.select.1.3, %inc.1.4
  %arrayidx4.1.5 = getelementptr i8, ptr %in, i32 7
  %28 = ptrtoint ptr %arrayidx4.1.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.1.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %17)
  %cmp6.1.5 = icmp eq i8 %29, %17
  %inc.1.5 = zext i1 %cmp6.1.5 to i32
  %spec.select.1.5 = add nuw nsw i32 %spec.select.1.4, %inc.1.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.1.5)
  %phi.cmp17 = icmp ugt i32 %spec.select.1.5, 4
  br i1 %phi.cmp17, label %for.end.1.if.then11_crit_edge, label %for.end.2

for.end.1.if.then11_crit_edge:                    ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

for.end.2:                                        ; preds = %for.end.1
  %arrayidx.2 = getelementptr i8, ptr %in, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2, align 1
  %arrayidx4.2 = getelementptr i8, ptr %in, i32 3
  %32 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx4.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %31)
  %cmp6.2 = icmp eq i8 %33, %31
  %inc.2 = zext i1 %cmp6.2 to i32
  %arrayidx4.2.1 = getelementptr i8, ptr %in, i32 4
  %34 = ptrtoint ptr %arrayidx4.2.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx4.2.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %31)
  %cmp6.2.1 = icmp eq i8 %35, %31
  %inc.2.1 = zext i1 %cmp6.2.1 to i32
  %spec.select.2.1 = add nuw nsw i32 %inc.2, %inc.2.1
  %arrayidx4.2.2 = getelementptr i8, ptr %in, i32 5
  %36 = ptrtoint ptr %arrayidx4.2.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.2.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %31)
  %cmp6.2.2 = icmp eq i8 %37, %31
  %inc.2.2 = zext i1 %cmp6.2.2 to i32
  %spec.select.2.2 = add nuw nsw i32 %spec.select.2.1, %inc.2.2
  %arrayidx4.2.3 = getelementptr i8, ptr %in, i32 6
  %38 = ptrtoint ptr %arrayidx4.2.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4.2.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %31)
  %cmp6.2.3 = icmp eq i8 %39, %31
  %inc.2.3 = zext i1 %cmp6.2.3 to i32
  %spec.select.2.3 = add nuw nsw i32 %spec.select.2.2, %inc.2.3
  %arrayidx4.2.4 = getelementptr i8, ptr %in, i32 7
  %40 = ptrtoint ptr %arrayidx4.2.4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx4.2.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %31)
  %cmp6.2.4 = icmp eq i8 %41, %31
  %inc.2.4 = zext i1 %cmp6.2.4 to i32
  %spec.select.2.4 = add nuw nsw i32 %spec.select.2.3, %inc.2.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select.2.4)
  %phi.cmp18 = icmp ugt i32 %spec.select.2.4, 4
  br i1 %phi.cmp18, label %for.end.2.if.then11_crit_edge, label %for.end.2.cleanup17_crit_edge

for.end.2.cleanup17_crit_edge:                    ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

for.end.2.if.then11_crit_edge:                    ; preds = %for.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %for.end.2.if.then11_crit_edge, %for.end.1.if.then11_crit_edge, %for.end.if.then11_crit_edge
  %.lcssa = phi i8 [ %1, %for.end.if.then11_crit_edge ], [ %17, %for.end.1.if.then11_crit_edge ], [ %31, %for.end.2.if.then11_crit_edge ]
  %42 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %.lcssa, ptr %out, align 1
  br label %cleanup17

cleanup17:                                        ; preds = %if.then11, %for.end.2.cleanup17_crit_edge
  %retval.2 = phi i32 [ 0, %if.then11 ], [ -5, %for.end.2.cleanup17_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hynix_nand_setup_read_retry(ptr noundef %chip, i32 noundef %retry_mode) #0 align 64 {
entry:
  %instrs.i28 = alloca [1 x %struct.nand_op_instr], align 4
  %op.i29 = alloca %struct.nand_operation, align 4
  %instrs.i = alloca [1 x %struct.nand_op_instr], align 4
  %op.i = alloca %struct.nand_operation, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %values1 = getelementptr inbounds %struct.hynix_read_retry, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %mul = mul i32 %5, %retry_mode
  %add.ptr = getelementptr i8, ptr %values1, i32 %mul
  %controller.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %6 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controller.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.hynix_nand_cmd_op.exit.thread_crit_edge, label %lor.lhs.false.i.i

entry.hynix_nand_cmd_op.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread

lor.lhs.false.i.i:                                ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.nand_controller, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.hynix_nand_cmd_op.exit.thread_crit_edge, label %nand_has_exec_op.exit.i

lor.lhs.false.i.i.hynix_nand_cmd_op.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread

nand_has_exec_op.exit.i:                          ; preds = %lor.lhs.false.i.i
  %exec_op.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i.not.i, label %nand_has_exec_op.exit.i.hynix_nand_cmd_op.exit.thread_crit_edge, label %nand_has_exec_op.exit.i.i

nand_has_exec_op.exit.i.hynix_nand_cmd_op.exit.thread_crit_edge: ; preds = %nand_has_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread

nand_has_exec_op.exit.i.i:                        ; preds = %nand_has_exec_op.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i) #9
  %ctx.i = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i, i32 0, i32 1
  %12 = call ptr @memset(ptr %instrs.i, i32 0, i32 20)
  %13 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 54, ptr %ctx.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i) #9
  %14 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nand_operation, ptr %op.i, i32 0, i32 2
  %cur_cs.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %16 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_cs.i, align 4
  %18 = ptrtoint ptr %op.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %op.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %instrs.i, ptr %14, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %15, align 4
  %21 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i.i = icmp eq ptr %22, null
  br i1 %tobool6.not.i.not.i.i, label %nand_has_exec_op.exit.i.i.hynix_nand_cmd_op.exit.thread62_crit_edge, label %if.end.i.i

nand_has_exec_op.exit.i.i.hynix_nand_cmd_op.exit.thread62_crit_edge: ; preds = %nand_has_exec_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hynix_nand_cmd_op.exit.thread62

if.end.i.i:                                       ; preds = %nand_has_exec_op.exit.i.i
  %ntargets.i.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %ntargets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ntargets.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %24)
  %cmp.not.i.i = icmp ult i32 %17, %24
  br i1 %cmp.not.i.i, label %hynix_nand_cmd_op.exit, label %do.end.i.i, !prof !42

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %hynix_nand_cmd_op.exit.thread62

hynix_nand_cmd_op.exit.thread:                    ; preds = %nand_has_exec_op.exit.i.hynix_nand_cmd_op.exit.thread_crit_edge, %lor.lhs.false.i.i.hynix_nand_cmd_op.exit.thread_crit_edge, %entry.hynix_nand_cmd_op.exit.thread_crit_edge
  %cmdfunc.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %25 = ptrtoint ptr %cmdfunc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmdfunc.i, align 8
  tail call void %26(ptr noundef %chip, i32 noundef 54, i32 noundef -1, i32 noundef -1) #9
  br label %for.cond.preheader

hynix_nand_cmd_op.exit.thread62:                  ; preds = %do.end.i.i, %nand_has_exec_op.exit.i.i.hynix_nand_cmd_op.exit.thread62_crit_edge
  %retval.0.i9.i.ph = phi i32 [ -524, %nand_has_exec_op.exit.i.i.hynix_nand_cmd_op.exit.thread62_crit_edge ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i) #9
  br label %cleanup

hynix_nand_cmd_op.exit:                           ; preds = %if.end.i.i
  %call25.i.i = call i32 %22(ptr noundef %chip, ptr noundef nonnull %op.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool.not = icmp eq i32 %call25.i.i, 0
  br i1 %tobool.not, label %hynix_nand_cmd_op.exit.for.cond.preheader_crit_edge, label %hynix_nand_cmd_op.exit.cleanup_crit_edge

hynix_nand_cmd_op.exit.cleanup_crit_edge:         ; preds = %hynix_nand_cmd_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

hynix_nand_cmd_op.exit.for.cond.preheader_crit_edge: ; preds = %hynix_nand_cmd_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %hynix_nand_cmd_op.exit.for.cond.preheader_crit_edge, %hynix_nand_cmd_op.exit.thread
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp57 = icmp sgt i32 %30, 0
  br i1 %cmp57, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.058, 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %35 = phi ptr [ %32, %for.cond.for.body_crit_edge ], [ %28, %for.cond.preheader.for.body_crit_edge ]
  %i.058 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %regs = getelementptr inbounds %struct.hynix_read_retry, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %i.058
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr i8, ptr %add.ptr, i32 %i.058
  %40 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx7, align 1
  %call8 = call fastcc i32 @hynix_nand_reg_write_op(ptr noundef %chip, i8 noundef zeroext %39, i8 noundef zeroext %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %42 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %controller.i.i, align 4
  %tobool.not.i.i31 = icmp eq ptr %43, null
  br i1 %tobool.not.i.i31, label %for.end.if.end.i54_crit_edge, label %lor.lhs.false.i.i34

for.end.if.end.i54_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i54

lor.lhs.false.i.i34:                              ; preds = %for.end
  %ops.i.i32 = getelementptr inbounds %struct.nand_controller, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %ops.i.i32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i32, align 4
  %tobool2.not.i.i33 = icmp eq ptr %45, null
  br i1 %tobool2.not.i.i33, label %lor.lhs.false.i.i34.if.end.i54_crit_edge, label %nand_has_exec_op.exit.i37

lor.lhs.false.i.i34.if.end.i54_crit_edge:         ; preds = %lor.lhs.false.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i54

nand_has_exec_op.exit.i37:                        ; preds = %lor.lhs.false.i.i34
  %exec_op.i.i35 = getelementptr inbounds %struct.nand_controller_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %exec_op.i.i35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %exec_op.i.i35, align 4
  %tobool6.not.i.not.i36 = icmp eq ptr %47, null
  br i1 %tobool6.not.i.not.i36, label %nand_has_exec_op.exit.i37.if.end.i54_crit_edge, label %nand_has_exec_op.exit.i.i44

nand_has_exec_op.exit.i37.if.end.i54_crit_edge:   ; preds = %nand_has_exec_op.exit.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i54

nand_has_exec_op.exit.i.i44:                      ; preds = %nand_has_exec_op.exit.i37
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %instrs.i28) #9
  %ctx.i38 = getelementptr inbounds %struct.nand_op_instr, ptr %instrs.i28, i32 0, i32 1
  %48 = call ptr @memset(ptr %instrs.i28, i32 0, i32 20)
  %49 = ptrtoint ptr %ctx.i38 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 22, ptr %ctx.i38, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op.i29) #9
  %50 = getelementptr inbounds %struct.nand_operation, ptr %op.i29, i32 0, i32 1
  %51 = getelementptr inbounds %struct.nand_operation, ptr %op.i29, i32 0, i32 2
  %cur_cs.i39 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %52 = ptrtoint ptr %cur_cs.i39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur_cs.i39, align 4
  %54 = ptrtoint ptr %op.i29 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %op.i29, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %instrs.i28, ptr %50, align 4
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %51, align 4
  %57 = ptrtoint ptr %exec_op.i.i35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %exec_op.i.i35, align 4
  %tobool6.not.i.not.i.i43 = icmp eq ptr %58, null
  br i1 %tobool6.not.i.not.i.i43, label %nand_has_exec_op.exit.i.i44.nand_exec_op.exit.i52_crit_edge, label %if.end.i.i47

nand_has_exec_op.exit.i.i44.nand_exec_op.exit.i52_crit_edge: ; preds = %nand_has_exec_op.exit.i.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_exec_op.exit.i52

if.end.i.i47:                                     ; preds = %nand_has_exec_op.exit.i.i44
  %ntargets.i.i.i45 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 8
  %59 = ptrtoint ptr %ntargets.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ntargets.i.i.i45, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %60)
  %cmp.not.i.i46 = icmp ult i32 %53, %60
  br i1 %cmp.not.i.i46, label %if.end24.i.i50, label %do.end.i.i48, !prof !42

do.end.i.i48:                                     ; preds = %if.end.i.i47
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %nand_exec_op.exit.i52

if.end24.i.i50:                                   ; preds = %if.end.i.i47
  call void @__sanitizer_cov_trace_pc() #11
  %call25.i.i49 = call i32 %58(ptr noundef %chip, ptr noundef nonnull %op.i29, i1 noundef zeroext false) #9
  br label %nand_exec_op.exit.i52

nand_exec_op.exit.i52:                            ; preds = %if.end24.i.i50, %do.end.i.i48, %nand_has_exec_op.exit.i.i44.nand_exec_op.exit.i52_crit_edge
  %retval.0.i9.i51 = phi i32 [ -22, %do.end.i.i48 ], [ %call25.i.i49, %if.end24.i.i50 ], [ -524, %nand_has_exec_op.exit.i.i44.nand_exec_op.exit.i52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op.i29) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %instrs.i28) #9
  br label %cleanup

if.end.i54:                                       ; preds = %nand_has_exec_op.exit.i37.if.end.i54_crit_edge, %lor.lhs.false.i.i34.if.end.i54_crit_edge, %for.end.if.end.i54_crit_edge
  %cmdfunc.i53 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %61 = ptrtoint ptr %cmdfunc.i53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmdfunc.i53, align 8
  call void %62(ptr noundef %chip, i32 noundef 22, i32 noundef -1, i32 noundef -1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i54, %nand_exec_op.exit.i52, %for.body.cleanup_crit_edge, %hynix_nand_cmd_op.exit.cleanup_crit_edge, %hynix_nand_cmd_op.exit.thread62
  %retval.0 = phi i32 [ %call25.i.i, %hynix_nand_cmd_op.exit.cleanup_crit_edge ], [ %retval.0.i9.i51, %nand_exec_op.exit.i52 ], [ 0, %if.end.i54 ], [ %retval.0.i9.i.ph, %hynix_nand_cmd_op.exit.thread62 ], [ %call8, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hynix_nand_reg_write_op(ptr noundef %chip, i8 noundef zeroext %addr, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  %instrs = alloca [2 x %struct.nand_op_instr], align 4
  %op = alloca %struct.nand_operation, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  %1 = ptrtoint ptr %val.addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %val, ptr %val.addr, align 1
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.nand_controller, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %nand_has_exec_op.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

nand_has_exec_op.exit:                            ; preds = %lor.lhs.false.i
  %exec_op.i = getelementptr inbounds %struct.nand_controller_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %exec_op.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exec_op.i, align 4
  %tobool6.not.i.not = icmp eq ptr %7, null
  br i1 %tobool6.not.i.not, label %nand_has_exec_op.exit.if.end_crit_edge, label %lor.lhs.false.i.i

nand_has_exec_op.exit.if.end_crit_edge:           ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i.i:                                ; preds = %nand_has_exec_op.exit
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %instrs) #9
  %8 = getelementptr inbounds i8, ptr %instrs, i32 12
  %9 = call ptr @memset(ptr %8, i32 255, i32 24)
  %10 = ptrtoint ptr %instrs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %instrs, align 4
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 0, i32 1
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %ctx, align 4
  %addrs = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %addrs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %addr.addr, ptr %addrs, align 4
  %delay_ns = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 0, i32 2
  %13 = ptrtoint ptr %delay_ns to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %delay_ns, align 4
  %arrayinit.element = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %arrayinit.element, align 4
  %ctx5 = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1, i32 1
  %15 = ptrtoint ptr %ctx5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ctx5, align 4
  %buf = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %val.addr, ptr %buf, align 4
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %force_8bit to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %force_8bit, align 4
  %delay_ns6 = getelementptr inbounds %struct.nand_op_instr, ptr %instrs, i32 1, i32 2
  %18 = ptrtoint ptr %delay_ns6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %delay_ns6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %op) #9
  %19 = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %21 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_cs, align 4
  %23 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %op, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %instrs, ptr %19, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %20, align 4
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.nand_exec_op.exit_crit_edge, label %nand_has_exec_op.exit.i

lor.lhs.false.i.i.nand_exec_op.exit_crit_edge:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_exec_op.exit

nand_has_exec_op.exit.i:                          ; preds = %lor.lhs.false.i.i
  %exec_op.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %exec_op.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %exec_op.i.i, align 4
  %tobool6.not.i.not.i = icmp eq ptr %29, null
  br i1 %tobool6.not.i.not.i, label %nand_has_exec_op.exit.i.nand_exec_op.exit_crit_edge, label %if.end.i

nand_has_exec_op.exit.i.nand_exec_op.exit_crit_edge: ; preds = %nand_has_exec_op.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_exec_op.exit

if.end.i:                                         ; preds = %nand_has_exec_op.exit.i
  %ntargets.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 8
  %30 = ptrtoint ptr %ntargets.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ntargets.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %31)
  %cmp.not.i = icmp ult i32 %22, %31
  br i1 %cmp.not.i, label %if.end24.i, label %do.end.i, !prof !42

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 139, i32 noundef 9, ptr noundef null) #9
  br label %nand_exec_op.exit

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call25.i = call i32 %29(ptr noundef %chip, ptr noundef nonnull %op, i1 noundef zeroext false) #9
  br label %nand_exec_op.exit

nand_exec_op.exit:                                ; preds = %if.end24.i, %do.end.i, %nand_has_exec_op.exit.i.nand_exec_op.exit_crit_edge, %lor.lhs.false.i.i.nand_exec_op.exit_crit_edge
  %retval.0.i18 = phi i32 [ -22, %do.end.i ], [ %call25.i, %if.end24.i ], [ -524, %nand_has_exec_op.exit.i.nand_exec_op.exit_crit_edge ], [ -524, %lor.lhs.false.i.i.nand_exec_op.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %op) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %instrs) #9
  br label %cleanup

if.end:                                           ; preds = %nand_has_exec_op.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %conv1 = zext i8 %addr to i32
  %or = mul nuw nsw i32 %conv1, 257
  %cmdfunc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %32 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cmdfunc, align 8
  tail call void %33(ptr noundef %chip, i32 noundef -1, i32 noundef %or, i32 noundef -1) #9
  %write_byte = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 4
  %34 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_byte, align 8
  %36 = ptrtoint ptr %val.addr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val.addr, align 1
  tail call void %35(ptr noundef %chip, i8 noundef zeroext %37) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nand_exec_op.exit
  %retval.0 = phi i32 [ %retval.0.i18, %nand_exec_op.exit ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @hynix_nand_manuf_ops, !1, !"hynix_nand_manuf_ops", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 731, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mtd/rawnand.h", i32 1444, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 69, i32 18}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 441, i32 4}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 536, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 715, i32 15}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 720, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 403, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hynix_nand_rr_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hynix_nand_rr_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/internals.h", i32 139, i32 6}
!23 = !{ptr @hynix_1xnm_mlc_read_retry_regs, !24, !"hynix_1xnm_mlc_read_retry_regs", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 283, i32 11}
!25 = distinct !{null, !26, !"hynix_mlc_1xnm_rr_otps", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 355, i32 42}
!27 = distinct !{null, !28, !"hynix_mlc_1xnm_rr_otp_regs", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 352, i32 17}
!29 = distinct !{null, !30, !"hynix_mlc_1xnm_rr_otp_values", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/nand_hynix.c", i32 353, i32 17}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 2000, i32 1}
