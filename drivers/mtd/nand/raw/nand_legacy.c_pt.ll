; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_legacy.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_legacy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nand_wait_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_wait_ready\09\09\09\09"
module asm "\09.long\09__crc_nand_wait_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_wait_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_wait_ready\22\09\09\09\09\09"
module asm "__kstrtabns_nand_wait_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nand_get_set_features_notsupp\22, \22a\22\09"
module asm "\09.weak\09__crc_nand_get_set_features_notsupp\09\09\09\09"
module asm "\09.long\09__crc_nand_get_set_features_notsupp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_get_set_features_notsupp:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_get_set_features_notsupp\22\09\09\09\09\09"
module asm "__kstrtabns_nand_get_set_features_notsupp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.46 }
%union.anon.46 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mtd/nand/raw/nand_legacy.c\00", [61 x i8] zeroinitializer }, align 32
@nand_wait_ready._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nand_wait_ready = private unnamed_addr constant [16 x i8] c"nand_wait_ready\00", align 1
@nand_wait_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.nand_wait_ready, ptr @.str, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014timeout while waiting for chip to become ready\0A\00", [46 x i8] zeroinitializer }, align 32
@nand_wait_ready._entry_ptr = internal global ptr @nand_wait_ready._entry, section ".printk_index", align 4
@__kstrtab_nand_wait_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_wait_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_wait_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_wait_ready to i32), ptr @__kstrtab_nand_wait_ready, ptr @__kstrtabns_nand_wait_ready }, section "___ksymtab_gpl+nand_wait_ready", align 4
@__kstrtab_nand_get_set_features_notsupp = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_get_set_features_notsupp = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_get_set_features_notsupp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_get_set_features_notsupp to i32), ptr @__kstrtab_nand_get_set_features_notsupp, ptr @__kstrtabns_nand_get_set_features_notsupp }, section "___ksymtab+nand_get_set_features_notsupp", align 4
@nand_legacy_check_hooks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013->legacy.cmd_ctrl() should be provided\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nand_legacy_check_hooks\00", [40 x i8] zeroinitializer }, align 32
@nand_legacy_check_hooks._entry_ptr = internal global ptr @nand_legacy_check_hooks._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 4294967295]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 144, i64 236, i64 238, i64 239]
@__sancov_gen_cov_switch_values.6 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 16, i64 96, i64 112, i64 128, i64 144, i64 208, i64 239, i64 255, i64 4294967295]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 80, i64 4294967295]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 144, i64 236, i64 238, i64 239]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 144, i64 236, i64 238, i64 239]
@__sancov_gen_cov_switch_values.11 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 5, i64 16, i64 21, i64 96, i64 112, i64 128, i64 133, i64 144, i64 208, i64 239, i64 255, i64 4294967295]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 206, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 210, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [38 x i8] c"../drivers/mtd/nand/raw/nand_legacy.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 639, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_nand_get_set_features_notsupp, ptr @__ksymtab_nand_wait_ready, ptr @nand_legacy_check_hooks._entry, ptr @nand_legacy_check_hooks._entry_ptr, ptr @nand_wait_ready._entry, ptr @nand_wait_ready._entry_ptr, ptr @.str, ptr @nand_wait_ready._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_wait_ready._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_wait_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_legacy_check_hooks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nand_wait_ready(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %oops_panic_write = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 50
  %0 = ptrtoint ptr %oops_panic_write to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %oops_panic_write, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %dev_ready.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.01.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %dev_ready.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ready.i, align 4
  %call.i = tail call i32 %3(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  tail call void @touch_softlockup_watchdog() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 400
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 9
  %add.neg = sub i32 -40, %5
  br label %do.body

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %if.end
  %6 = ptrtoint ptr %dev_ready to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_ready, align 4
  %call2 = tail call i32 %7(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.body
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 0) #7
  %call.i30 = tail call i32 @__cond_resched() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %8
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end5.do.body_crit_edge, label %do.end

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %if.end5
  %9 = ptrtoint ptr %dev_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_ready, align 4
  %call9 = tail call i32 %10(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %do.end
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @nand_wait_ready._rs, ptr noundef nonnull @__func__.nand_wait_ready) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nand_get_set_features_notsupp(ptr nocapture readnone %chip, i32 %addr, ptr nocapture readnone %subfeature_param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nand_legacy_set_defaults(ptr nocapture noundef %chip) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 8
  %and = and i32 %1, 2
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.nand_controller, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %nand_has_exec_op.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nand_has_exec_op.exit:                            ; preds = %lor.lhs.false.i
  %exec_op.i = getelementptr inbounds %struct.nand_controller_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %exec_op.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exec_op.i, align 4
  %tobool6.not.i.not = icmp eq ptr %7, null
  br i1 %tobool6.not.i.not, label %nand_has_exec_op.exit.if.end_crit_edge, label %nand_has_exec_op.exit.cleanup_crit_edge

nand_has_exec_op.exit.cleanup_crit_edge:          ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nand_has_exec_op.exit.if.end_crit_edge:           ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %nand_has_exec_op.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 15
  %8 = ptrtoint ptr %chip_delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20, ptr %chip_delay, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %cmdfunc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %11 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmdfunc, align 8
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nand_command, ptr %cmdfunc, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %waitfunc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 10
  %14 = ptrtoint ptr %waitfunc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %waitfunc, align 8
  %cmp = icmp eq ptr %15, null
  br i1 %cmp, label %if.then12, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %waitfunc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nand_wait, ptr %waitfunc, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %select_chip = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %select_chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %select_chip, align 8
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %select_chip to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nand_select_chip, ptr %select_chip, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %read_byte to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_byte, align 4
  %tobool23.not = icmp eq ptr %21, null
  %cmp26 = icmp eq ptr %21, @nand_read_byte
  %or.cond = or i1 %tobool23.not, %cmp26
  br i1 %or.cond, label %if.then27, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool28.not, ptr @nand_read_byte, ptr @nand_read_byte16
  %22 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cond, ptr %read_byte, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end21.if.end31_crit_edge
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 5
  %23 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_buf, align 4
  %tobool33.not = icmp eq ptr %24, null
  %cmp37 = icmp eq ptr %24, @nand_write_buf
  %or.cond95 = or i1 %tobool33.not, %cmp37
  br i1 %or.cond95, label %if.then38, label %if.end31.if.end43_crit_edge

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  %cond40 = select i1 %tobool39.not, ptr @nand_write_buf, ptr @nand_write_buf16
  %25 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cond40, ptr %write_buf, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end31.if.end43_crit_edge
  %write_byte = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %write_byte to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_byte, align 8
  %tobool45.not = icmp eq ptr %27, null
  %cmp49 = icmp eq ptr %27, @nand_write_byte
  %or.cond96 = or i1 %tobool45.not, %cmp49
  br i1 %or.cond96, label %if.then50, label %if.end43.if.end55_crit_edge

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  %cond52 = select i1 %tobool51.not, ptr @nand_write_byte, ptr @nand_write_byte16
  %28 = ptrtoint ptr %write_byte to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cond52, ptr %write_byte, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.end43.if.end55_crit_edge
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_buf, align 8
  %tobool57.not = icmp eq ptr %30, null
  %cmp61 = icmp eq ptr %30, @nand_read_buf
  %or.cond97 = or i1 %tobool57.not, %cmp61
  br i1 %or.cond97, label %if.then62, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  %cond64 = select i1 %tobool63.not, ptr @nand_read_buf, ptr @nand_read_buf16
  %31 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cond64, ptr %read_buf, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end55.cleanup_crit_edge, %nand_has_exec_op.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_command(ptr noundef %chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %entry.if.then11_crit_edge [
    i32 128, label %if.then
    i32 -1, label %entry.if.end14_crit_edge
  ]

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then:                                          ; preds = %entry
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %1 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %column)
  %cmp1.not = icmp ugt i32 %2, %column
  br i1 %cmp1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %column, %2
  br label %if.end9.thread

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %column)
  %cmp4 = icmp slt i32 %column, 256
  %sub7 = add i32 %column, -256
  %spec.select151 = select i1 %cmp4, i32 %column, i32 %sub7
  %not.cmp4 = xor i1 %cmp4, true
  %spec.select152 = zext i1 %not.cmp4 to i32
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.else, %if.then2
  %column.addr.0 = phi i32 [ %sub, %if.then2 ], [ %spec.select151, %if.else ]
  %readcmd.0 = phi i32 [ 80, %if.then2 ], [ %spec.select152, %if.else ]
  %cmd_ctrl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %3 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_ctrl, align 4
  tail call void %4(ptr noundef %chip, i32 noundef %readcmd.0, i32 noundef 131) #7
  br label %if.then11

if.then11:                                        ; preds = %if.end9.thread, %entry.if.then11_crit_edge
  %ctrl.0158 = phi i32 [ 3, %if.end9.thread ], [ 131, %entry.if.then11_crit_edge ]
  %column.addr.1156 = phi i32 [ %column.addr.0, %if.end9.thread ], [ %column, %entry.if.then11_crit_edge ]
  %cmd_ctrl13 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %5 = ptrtoint ptr %cmd_ctrl13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_ctrl13, align 4
  tail call void %6(ptr noundef %chip, i32 noundef %command, i32 noundef %ctrl.0158) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %entry.if.end14_crit_edge
  %column.addr.1157 = phi i32 [ %column.addr.1156, %if.then11 ], [ %column, %entry.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column.addr.1157)
  %cmp15.not = icmp eq i32 %column.addr.1157, -1
  br i1 %cmp15.not, label %if.end14.if.end25_crit_edge, label %if.then16

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then16:                                        ; preds = %if.end14
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %options, align 8
  %and17 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.then16.if.end21_crit_edge, label %land.lhs.true

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then16
  %9 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %command, label %10 [
    i32 144, label %land.lhs.true.if.end21_crit_edge
    i32 236, label %land.lhs.true.if.end21_crit_edge163
    i32 238, label %land.lhs.true.if.end21_crit_edge164
    i32 239, label %land.lhs.true.if.end21_crit_edge165
  ]

land.lhs.true.if.end21_crit_edge165:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true.if.end21_crit_edge164:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true.if.end21_crit_edge163:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

10:                                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shr161 = ashr i32 %column.addr.1157, 1
  br label %if.end21

if.end21:                                         ; preds = %10, %land.lhs.true.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge163, %land.lhs.true.if.end21_crit_edge164, %land.lhs.true.if.end21_crit_edge165, %if.then16.if.end21_crit_edge
  %column.addr.2 = phi i32 [ %column.addr.1157, %if.then16.if.end21_crit_edge ], [ %shr161, %10 ], [ %column.addr.1157, %land.lhs.true.if.end21_crit_edge ], [ %column.addr.1157, %land.lhs.true.if.end21_crit_edge163 ], [ %column.addr.1157, %land.lhs.true.if.end21_crit_edge164 ], [ %column.addr.1157, %land.lhs.true.if.end21_crit_edge165 ]
  %cmd_ctrl23 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %11 = ptrtoint ptr %cmd_ctrl23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_ctrl23, align 4
  tail call void %12(ptr noundef %chip, i32 noundef %column.addr.2, i32 noundef 133) #7
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %if.end14.if.end25_crit_edge
  %column.addr.3 = phi i32 [ %column.addr.2, %if.end21 ], [ -1, %if.end14.if.end25_crit_edge ]
  %ctrl.1 = phi i32 [ 5, %if.end21 ], [ 133, %if.end14.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp26.not = icmp eq i32 %page_addr, -1
  br i1 %cmp26.not, label %if.end25.if.end42_crit_edge, label %if.then27

if.end25.if.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then27:                                        ; preds = %if.end25
  %cmd_ctrl29 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %13 = ptrtoint ptr %cmd_ctrl29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_ctrl29, align 4
  tail call void %14(ptr noundef %chip, i32 noundef %page_addr, i32 noundef %ctrl.1) #7
  %15 = ptrtoint ptr %cmd_ctrl29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd_ctrl29, align 4
  %shr33 = ashr i32 %page_addr, 8
  tail call void %16(ptr noundef %chip, i32 noundef %shr33, i32 noundef 5) #7
  %options34 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %options34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %options34, align 8
  %and35 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then27.if.end42_crit_edge, label %if.then37

if.then27.if.end42_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then37:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %cmd_ctrl29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd_ctrl29, align 4
  %shr40 = ashr i32 %page_addr, 16
  tail call void %20(ptr noundef %chip, i32 noundef %shr40, i32 noundef 5) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then27.if.end42_crit_edge, %if.end25.if.end42_crit_edge
  %cmd_ctrl44 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %21 = ptrtoint ptr %cmd_ctrl44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd_ctrl44, align 4
  tail call void %22(ptr noundef %chip, i32 noundef -1, i32 noundef 129) #7
  %23 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %command, label %if.end42.sw.default_crit_edge [
    i32 -1, label %if.end42.cleanup_crit_edge
    i32 16, label %if.end42.cleanup_crit_edge166
    i32 96, label %if.end42.cleanup_crit_edge167
    i32 208, label %if.end42.cleanup_crit_edge168
    i32 128, label %if.end42.cleanup_crit_edge169
    i32 112, label %if.end42.cleanup_crit_edge170
    i32 144, label %if.end42.cleanup_crit_edge171
    i32 239, label %if.end42.cleanup_crit_edge172
    i32 255, label %sw.bb45
    i32 0, label %sw.bb65
  ]

if.end42.cleanup_crit_edge172:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.cleanup_crit_edge171:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.cleanup_crit_edge170:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.cleanup_crit_edge169:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.cleanup_crit_edge168:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.cleanup_crit_edge167:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.cleanup_crit_edge166:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42.sw.default_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb45:                                          ; preds = %if.end42
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 9
  %24 = ptrtoint ptr %dev_ready to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_ready, align 4
  %tobool47.not = icmp eq ptr %25, null
  br i1 %tobool47.not, label %cond.false57, label %sw.bb45.sw.epilog_crit_edge

sw.bb45.sw.epilog_crit_edge:                      ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

cond.false57:                                     ; preds = %sw.bb45
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 15
  %26 = ptrtoint ptr %chip_delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chip_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #7
  %29 = ptrtoint ptr %cmd_ctrl44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd_ctrl44, align 4
  tail call void %30(ptr noundef %chip, i32 noundef 112, i32 noundef 131) #7
  %31 = ptrtoint ptr %cmd_ctrl44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd_ctrl44, align 4
  tail call void %32(ptr noundef %chip, i32 noundef -1, i32 noundef 129) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -25, %33
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %cond.false57
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #7
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %status.i, align 1, !annotation !28
  %call1.i = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef nonnull %status.i, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.cleanup.thread.i_crit_edge

do.body.i.cleanup.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %do.body.i
  %35 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %status.i, align 1
  %37 = and i8 %36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool2.not.i = icmp eq i8 %37, 0
  br i1 %tobool2.not.i, label %do.cond.i, label %if.end.i.cleanup.thread.i_crit_edge

if.end.i.cleanup.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end.i.cleanup.thread.i_crit_edge, %do.body.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  br label %cleanup

do.cond.i:                                        ; preds = %if.end.i
  call void @touch_softlockup_watchdog() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %38
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sw.bb65:                                          ; preds = %if.end42
  %39 = and i32 %column.addr.3, %page_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %sw.bb65.cleanup_crit_edge, label %sw.bb65.sw.default_crit_edge

sw.bb65.sw.default_crit_edge:                     ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %sw.bb65.sw.default_crit_edge, %if.end42.sw.default_crit_edge
  %dev_ready72 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 9
  %41 = ptrtoint ptr %dev_ready72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_ready72, align 4
  %tobool73.not = icmp eq ptr %42, null
  br i1 %tobool73.not, label %cond.false87, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

cond.false87:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %chip_delay76 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 15
  %43 = ptrtoint ptr %chip_delay76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chip_delay76, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %45(i32 noundef %44) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb45.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #7
  tail call void @nand_wait_ready(ptr noundef %chip)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cond.false87, %sw.bb65.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge, %cleanup.thread.i, %if.end42.cleanup_crit_edge, %if.end42.cleanup_crit_edge166, %if.end42.cleanup_crit_edge167, %if.end42.cleanup_crit_edge168, %if.end42.cleanup_crit_edge169, %if.end42.cleanup_crit_edge170, %if.end42.cleanup_crit_edge171, %if.end42.cleanup_crit_edge172
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nand_wait(ptr noundef %chip) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #7
  %call1 = tail call i32 @nand_status_op(ptr noundef %chip, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %oops_panic_write = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 50
  %2 = ptrtoint ptr %oops_panic_write to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oops_panic_write, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @panic_nand_wait(ptr noundef %chip, i32 noundef 400) #7
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 9
  %add.neg = sub i32 -40, %4
  br label %do.body

do.body:                                          ; preds = %if.end21.do.body_crit_edge, %if.else
  %5 = ptrtoint ptr %dev_ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_ready, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.else13, label %if.then6

if.then6:                                         ; preds = %do.body
  %call9 = call i32 %6(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then6.if.end21_crit_edge, label %if.then6.if.end24_crit_edge

if.then6.if.end24_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else13:                                        ; preds = %do.body
  %call14 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef nonnull %status, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.else13
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.end17.if.end21_crit_edge, %if.then6.if.end21_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 568, i32 noundef 0) #7
  %call.i = call i32 @__cond_resched() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %10
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end21.do.body_crit_edge, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end21.do.body_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end24:                                         ; preds = %if.end21.if.end24_crit_edge, %if.end17.if.end24_crit_edge, %if.then6.if.end24_crit_edge, %if.then3
  %call25 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef nonnull %status, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status, align 1
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool31.not = icmp eq i8 %13, 0
  br i1 %tobool31.not, label %do.end44, label %if.end28.if.end50_crit_edge, !prof !29

if.end28.if.end50_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end44:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 577, i32 noundef 9, ptr noundef null) #7
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end28.if.end50_crit_edge
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status, align 1
  %conv58 = zext i8 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end24.cleanup_crit_edge, %if.else13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv58, %if.end50 ], [ %call1, %entry.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call14, %if.else13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_select_chip(ptr noundef %chip, i32 noundef %chipnr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %chipnr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %chipnr, label %do.body [
    i32 -1, label %sw.bb
    i32 0, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_ctrl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %1 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd_ctrl, align 4
  tail call void %2(ptr noundef %chip, i32 noundef -1, i32 noundef 128) #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_legacy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @nand_read_byte(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %legacy, align 8
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @nand_read_byte16(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %legacy, align 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #7, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  %conv = trunc i16 %2 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_write_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %IO_ADDR_W = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %IO_ADDR_W, align 4
  tail call void @__raw_writesb(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_write_buf16(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %IO_ADDR_W = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %IO_ADDR_W, align 4
  %shr = ashr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %1, ptr noundef %buf, i32 noundef %shr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_write_byte(ptr noundef %chip, i8 noundef zeroext %byte) #0 align 64 {
entry:
  %byte.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %byte.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %byte, ptr %byte.addr, align 1
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 5
  %1 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write_buf, align 4
  call void %2(ptr noundef %chip, ptr noundef nonnull %byte.addr, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_write_byte16(ptr noundef %chip, i8 noundef zeroext %byte) #0 align 64 {
entry:
  %word = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %word) #7
  %conv = zext i8 %byte to i16
  %0 = ptrtoint ptr %word to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %word, align 2
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 5
  %1 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write_buf, align 4
  call void %2(ptr noundef %chip, ptr noundef nonnull %word, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %word) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_read_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %legacy, align 8
  tail call void @__raw_readsb(ptr noundef %1, ptr noundef %buf, i32 noundef %len) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_read_buf16(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %legacy, align 8
  %shr = ashr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef %1, ptr noundef %buf, i32 noundef %shr) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nand_legacy_adjust_cmdfunc(ptr nocapture noundef %chip) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp = icmp ugt i32 %1, 512
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmdfunc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdfunc, align 8
  %cmp1 = icmp eq ptr %3, @nand_command
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nand_command_lp, ptr %cmdfunc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nand_command_lp(ptr noundef %chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %command, label %entry.if.then2_crit_edge [
    i32 80, label %if.end.thread
    i32 -1, label %entry.if.end3_crit_edge
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %1 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %writesize, align 4
  %add = add i32 %2, %column
  br label %if.then2

if.then2:                                         ; preds = %if.end.thread, %entry.if.then2_crit_edge
  %command.addr.0206 = phi i32 [ 0, %if.end.thread ], [ %command, %entry.if.then2_crit_edge ]
  %column.addr.0204 = phi i32 [ %add, %if.end.thread ], [ %column, %entry.if.then2_crit_edge ]
  %cmd_ctrl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %3 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd_ctrl, align 4
  tail call void %4(ptr noundef %chip, i32 noundef %command.addr.0206, i32 noundef 131) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry.if.end3_crit_edge
  %command.addr.0207 = phi i32 [ %command.addr.0206, %if.then2 ], [ %command, %entry.if.end3_crit_edge ]
  %column.addr.0205 = phi i32 [ %column.addr.0204, %if.then2 ], [ %column, %entry.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp5.not = icmp eq i32 %page_addr, -1
  %5 = and i32 %column.addr.0205, %page_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %if.end3.if.end40_crit_edge, label %if.then6

if.end3.if.end40_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column.addr.0205)
  %cmp4.not = icmp eq i32 %column.addr.0205, -1
  br i1 %cmp4.not, label %if.then6.if.end23_crit_edge, label %if.then8

if.then6.if.end23_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then8:                                         ; preds = %if.then6
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %options, align 8
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then8.if.end12_crit_edge, label %land.lhs.true

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then8
  %9 = zext i32 %command.addr.0207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %command.addr.0207, label %10 [
    i32 144, label %land.lhs.true.if.end12_crit_edge
    i32 236, label %land.lhs.true.if.end12_crit_edge214
    i32 238, label %land.lhs.true.if.end12_crit_edge215
    i32 239, label %land.lhs.true.if.end12_crit_edge216
  ]

land.lhs.true.if.end12_crit_edge216:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.if.end12_crit_edge215:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.if.end12_crit_edge214:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

10:                                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shr210 = ashr i32 %column.addr.0205, 1
  br label %if.end12

if.end12:                                         ; preds = %10, %land.lhs.true.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge214, %land.lhs.true.if.end12_crit_edge215, %land.lhs.true.if.end12_crit_edge216, %if.then8.if.end12_crit_edge
  %column.addr.1 = phi i32 [ %column.addr.0205, %if.then8.if.end12_crit_edge ], [ %shr210, %10 ], [ %column.addr.0205, %land.lhs.true.if.end12_crit_edge ], [ %column.addr.0205, %land.lhs.true.if.end12_crit_edge214 ], [ %column.addr.0205, %land.lhs.true.if.end12_crit_edge215 ], [ %column.addr.0205, %land.lhs.true.if.end12_crit_edge216 ]
  %cmd_ctrl14 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %11 = ptrtoint ptr %cmd_ctrl14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_ctrl14, align 4
  tail call void %12(ptr noundef %chip, i32 noundef %column.addr.1, i32 noundef 133) #7
  %13 = zext i32 %command.addr.0207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %command.addr.0207, label %if.then18 [
    i32 144, label %if.end12.if.end23_crit_edge
    i32 236, label %if.end12.if.end23_crit_edge217
    i32 238, label %if.end12.if.end23_crit_edge218
    i32 239, label %if.end12.if.end23_crit_edge219
  ]

if.end12.if.end23_crit_edge219:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end12.if.end23_crit_edge218:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end12.if.end23_crit_edge217:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %cmd_ctrl14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_ctrl14, align 4
  %shr21 = ashr i32 %column.addr.1, 8
  tail call void %15(ptr noundef %chip, i32 noundef %shr21, i32 noundef 5) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end12.if.end23_crit_edge, %if.end12.if.end23_crit_edge217, %if.end12.if.end23_crit_edge218, %if.end12.if.end23_crit_edge219, %if.then6.if.end23_crit_edge
  %column.addr.2 = phi i32 [ %column.addr.1, %if.then18 ], [ -1, %if.then6.if.end23_crit_edge ], [ %column.addr.1, %if.end12.if.end23_crit_edge ], [ %column.addr.1, %if.end12.if.end23_crit_edge217 ], [ %column.addr.1, %if.end12.if.end23_crit_edge218 ], [ %column.addr.1, %if.end12.if.end23_crit_edge219 ]
  %ctrl.0 = phi i32 [ 5, %if.then18 ], [ 133, %if.then6.if.end23_crit_edge ], [ 5, %if.end12.if.end23_crit_edge ], [ 5, %if.end12.if.end23_crit_edge217 ], [ 5, %if.end12.if.end23_crit_edge218 ], [ 5, %if.end12.if.end23_crit_edge219 ]
  br i1 %cmp5.not, label %if.end23.if.end40_crit_edge, label %if.then25

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then25:                                        ; preds = %if.end23
  %cmd_ctrl27 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %cmd_ctrl27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_ctrl27, align 4
  tail call void %17(ptr noundef %chip, i32 noundef %page_addr, i32 noundef %ctrl.0) #7
  %18 = ptrtoint ptr %cmd_ctrl27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_ctrl27, align 4
  %shr30 = ashr i32 %page_addr, 8
  tail call void %19(ptr noundef %chip, i32 noundef %shr30, i32 noundef 5) #7
  %options31 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %20 = ptrtoint ptr %options31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options31, align 8
  %and32 = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then25.if.end40_crit_edge, label %if.then34

if.then25.if.end40_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then34:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %cmd_ctrl27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_ctrl27, align 4
  %shr37 = ashr i32 %page_addr, 16
  tail call void %23(ptr noundef %chip, i32 noundef %shr37, i32 noundef 5) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.then25.if.end40_crit_edge, %if.end23.if.end40_crit_edge, %if.end3.if.end40_crit_edge
  %column.addr.3 = phi i32 [ -1, %if.end3.if.end40_crit_edge ], [ %column.addr.2, %if.then25.if.end40_crit_edge ], [ %column.addr.2, %if.then34 ], [ %column.addr.2, %if.end23.if.end40_crit_edge ]
  %cmd_ctrl42 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %cmd_ctrl42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_ctrl42, align 4
  tail call void %25(ptr noundef %chip, i32 noundef -1, i32 noundef 129) #7
  %26 = zext i32 %command.addr.0207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %command.addr.0207, label %if.end40.sw.default_crit_edge [
    i32 -1, label %if.end40.cleanup_crit_edge
    i32 21, label %if.end40.cleanup_crit_edge220
    i32 16, label %if.end40.cleanup_crit_edge221
    i32 96, label %if.end40.cleanup_crit_edge222
    i32 208, label %if.end40.cleanup_crit_edge223
    i32 128, label %if.end40.cleanup_crit_edge224
    i32 112, label %if.end40.cleanup_crit_edge225
    i32 144, label %if.end40.cleanup_crit_edge226
    i32 239, label %if.end40.cleanup_crit_edge227
    i32 133, label %sw.bb43
    i32 255, label %sw.bb44
    i32 5, label %sw.bb64
    i32 0, label %sw.bb69
  ]

if.end40.cleanup_crit_edge227:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup_crit_edge226:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup_crit_edge225:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup_crit_edge224:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup_crit_edge223:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup_crit_edge222:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup_crit_edge221:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup_crit_edge220:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.sw.default_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb43:                                          ; preds = %if.end40
  %current_interface_config.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 7
  %27 = ptrtoint ptr %current_interface_config.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %current_interface_config.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.i = icmp eq i32 %30, 0
  %31 = getelementptr inbounds %struct.nand_interface_config, ptr %28, i32 0, i32 1, i32 1
  %retval.0.i.i = select i1 %cmp.i.i.i, ptr %31, ptr inttoptr (i32 -22 to ptr)
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %32 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %options.i, align 8
  %and.i = and i32 %33, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb43.cleanup_crit_edge, label %if.end.i

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb43
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %controller.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %34 = ptrtoint ptr %controller.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %controller.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.else.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  %ops.i.i = getelementptr inbounds %struct.nand_controller, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.else.i_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %setup_interface.i.i = getelementptr inbounds %struct.nand_controller_ops, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %setup_interface.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %setup_interface.i.i, align 4
  %tobool6.not.i.i = icmp ne ptr %39, null
  %and.i.i = and i32 %33, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i = select i1 %tobool6.not.i.i, i1 %tobool7.not.i.i, i1 false
  br i1 %or.cond.i, label %cond.false8.i.i, label %lor.lhs.false3.i.i.if.else.i_crit_edge

lor.lhs.false3.i.i.if.else.i_crit_edge:           ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

cond.false8.i.i:                                  ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tCCS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %tCCS_min.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tCCS_min.i, align 8
  %div.i = udiv i32 %41, 1000
  %sub.i.i = add nuw nsw i32 %div.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %42(i32 noundef %div.i.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %lor.lhs.false3.i.i.if.else.i_crit_edge, %lor.lhs.false.i.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #7
  br label %cleanup

sw.bb44:                                          ; preds = %if.end40
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 9
  %44 = ptrtoint ptr %dev_ready to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_ready, align 4
  %tobool46.not = icmp eq ptr %45, null
  br i1 %tobool46.not, label %cond.false56, label %sw.bb44.sw.epilog_crit_edge

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

cond.false56:                                     ; preds = %sw.bb44
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 15
  %46 = ptrtoint ptr %chip_delay to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %48(i32 noundef %47) #7
  %49 = ptrtoint ptr %cmd_ctrl42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmd_ctrl42, align 4
  tail call void %50(ptr noundef %chip, i32 noundef 112, i32 noundef 131) #7
  %51 = ptrtoint ptr %cmd_ctrl42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd_ctrl42, align 4
  tail call void %52(ptr noundef %chip, i32 noundef -1, i32 noundef 129) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -25, %53
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %cond.false56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #7
  %54 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %status.i, align 1, !annotation !28
  %call1.i = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef nonnull %status.i, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i166 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i166, label %if.end.i167, label %do.body.i.cleanup.thread.i_crit_edge

do.body.i.cleanup.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end.i167:                                      ; preds = %do.body.i
  %55 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %status.i, align 1
  %57 = and i8 %56, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool2.not.i = icmp eq i8 %57, 0
  br i1 %tobool2.not.i, label %do.cond.i, label %if.end.i167.cleanup.thread.i_crit_edge

if.end.i167.cleanup.thread.i_crit_edge:           ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end.i167.cleanup.thread.i_crit_edge, %do.body.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  br label %cleanup

do.cond.i:                                        ; preds = %if.end.i167
  call void @touch_softlockup_watchdog() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %58
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sw.bb64:                                          ; preds = %if.end40
  %59 = ptrtoint ptr %cmd_ctrl42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cmd_ctrl42, align 4
  tail call void %60(ptr noundef %chip, i32 noundef 224, i32 noundef 131) #7
  %61 = ptrtoint ptr %cmd_ctrl42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmd_ctrl42, align 4
  tail call void %62(ptr noundef %chip, i32 noundef -1, i32 noundef 129) #7
  %current_interface_config.i.i168 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 7
  %63 = ptrtoint ptr %current_interface_config.i.i168 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %current_interface_config.i.i168, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i.i.i169 = icmp eq i32 %66, 0
  %67 = getelementptr inbounds %struct.nand_interface_config, ptr %64, i32 0, i32 1, i32 1
  %retval.0.i.i170 = select i1 %cmp.i.i.i169, ptr %67, ptr inttoptr (i32 -22 to ptr)
  %options.i171 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %68 = ptrtoint ptr %options.i171 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %options.i171, align 8
  %and.i172 = and i32 %69, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool.not.i173 = icmp eq i32 %and.i172, 0
  br i1 %tobool.not.i173, label %sw.bb64.cleanup_crit_edge, label %if.end.i175

sw.bb64.cleanup_crit_edge:                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i175:                                      ; preds = %sw.bb64
  %cmp.i.i174 = icmp ugt ptr %retval.0.i.i170, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i174, label %if.end.i175.if.else.i199_crit_edge, label %land.lhs.true.i178

if.end.i175.if.else.i199_crit_edge:               ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i199

land.lhs.true.i178:                               ; preds = %if.end.i175
  %controller.i.i176 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %70 = ptrtoint ptr %controller.i.i176 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %controller.i.i176, align 4
  %tobool.not.i.i177 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i177, label %land.lhs.true.i178.if.else.i199_crit_edge, label %lor.lhs.false.i.i181

land.lhs.true.i178.if.else.i199_crit_edge:        ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i199

lor.lhs.false.i.i181:                             ; preds = %land.lhs.true.i178
  %ops.i.i179 = getelementptr inbounds %struct.nand_controller, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %ops.i.i179 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i.i179, align 4
  %tobool2.not.i.i180 = icmp eq ptr %73, null
  br i1 %tobool2.not.i.i180, label %lor.lhs.false.i.i181.if.else.i199_crit_edge, label %lor.lhs.false3.i.i187

lor.lhs.false.i.i181.if.else.i199_crit_edge:      ; preds = %lor.lhs.false.i.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i199

lor.lhs.false3.i.i187:                            ; preds = %lor.lhs.false.i.i181
  %setup_interface.i.i182 = getelementptr inbounds %struct.nand_controller_ops, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %setup_interface.i.i182 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %setup_interface.i.i182, align 4
  %tobool6.not.i.i183 = icmp ne ptr %75, null
  %and.i.i184 = and i32 %69, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i184)
  %tobool7.not.i.i185 = icmp eq i32 %and.i.i184, 0
  %or.cond.i186 = select i1 %tobool6.not.i.i183, i1 %tobool7.not.i.i185, i1 false
  br i1 %or.cond.i186, label %cond.false8.i.i198, label %lor.lhs.false3.i.i187.if.else.i199_crit_edge

lor.lhs.false3.i.i187.if.else.i199_crit_edge:     ; preds = %lor.lhs.false3.i.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i199

cond.false8.i.i198:                               ; preds = %lor.lhs.false3.i.i187
  call void @__sanitizer_cov_trace_pc() #9
  %tCCS_min.i188 = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i.i170, i32 0, i32 1
  %76 = ptrtoint ptr %tCCS_min.i188 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tCCS_min.i188, align 8
  %div.i189 = udiv i32 %77, 1000
  %sub.i.i190 = add nuw nsw i32 %div.i189, 999
  %div.i.i191 = udiv i32 %sub.i.i190, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %78(i32 noundef %div.i.i191) #7
  br label %cleanup

if.else.i199:                                     ; preds = %lor.lhs.false3.i.i187.if.else.i199_crit_edge, %lor.lhs.false.i.i181.if.else.i199_crit_edge, %land.lhs.true.i178.if.else.i199_crit_edge, %if.end.i175.if.else.i199_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748) #7
  br label %cleanup

sw.bb69:                                          ; preds = %if.end40
  %80 = and i32 %column.addr.3, %page_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %sw.bb69.cleanup_crit_edge, label %if.end74

sw.bb69.cleanup_crit_edge:                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end74:                                         ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %cmd_ctrl42 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmd_ctrl42, align 4
  tail call void %83(ptr noundef %chip, i32 noundef 48, i32 noundef 131) #7
  %84 = ptrtoint ptr %cmd_ctrl42 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmd_ctrl42, align 4
  tail call void %85(ptr noundef %chip, i32 noundef -1, i32 noundef 129) #7
  br label %sw.default

sw.default:                                       ; preds = %if.end74, %if.end40.sw.default_crit_edge
  %dev_ready80 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 9
  %86 = ptrtoint ptr %dev_ready80 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_ready80, align 4
  %tobool81.not = icmp eq ptr %87, null
  br i1 %tobool81.not, label %cond.false95, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

cond.false95:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %chip_delay84 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 15
  %88 = ptrtoint ptr %chip_delay84 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %chip_delay84, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %89) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb44.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 214748) #7
  tail call void @nand_wait_ready(ptr noundef %chip)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %cond.false95, %sw.bb69.cleanup_crit_edge, %if.else.i199, %cond.false8.i.i198, %sw.bb64.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge, %cleanup.thread.i, %if.else.i, %cond.false8.i.i, %sw.bb43.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end40.cleanup_crit_edge220, %if.end40.cleanup_crit_edge221, %if.end40.cleanup_crit_edge222, %if.end40.cleanup_crit_edge223, %if.end40.cleanup_crit_edge224, %if.end40.cleanup_crit_edge225, %if.end40.cleanup_crit_edge226, %if.end40.cleanup_crit_edge227
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_legacy_check_hooks(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.nand_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %nand_has_exec_op.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nand_has_exec_op.exit:                            ; preds = %lor.lhs.false.i
  %exec_op.i = getelementptr inbounds %struct.nand_controller_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %exec_op.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exec_op.i, align 4
  %tobool6.not.i.not = icmp eq ptr %5, null
  br i1 %tobool6.not.i.not, label %nand_has_exec_op.exit.if.end_crit_edge, label %nand_has_exec_op.exit.return_crit_edge

nand_has_exec_op.exit.return_crit_edge:           ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

nand_has_exec_op.exit.if.end_crit_edge:           ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %nand_has_exec_op.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cmdfunc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmdfunc, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.land.lhs.true_crit_edge, label %lor.lhs.false

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %select_chip = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %select_chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %select_chip, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %cmd_ctrl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 7
  %10 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_ctrl, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %do.end, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %return

return:                                           ; preds = %do.end, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %nand_has_exec_op.exit.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %nand_has_exec_op.exit.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panic_nand_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_legacy.c", i32 206, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_legacy.c", i32 210, i32 3}
!4 = !{ptr @nand_wait_ready._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.nand_wait_ready, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nand_wait_ready._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @nand_wait_ready._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_nand_wait_ready, !10, !"__ksymtab_nand_wait_ready", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/nand_legacy.c", i32 212, i32 1}
!11 = !{ptr @__ksymtab_nand_get_set_features_notsupp, !12, !"__ksymtab_nand_get_set_features_notsupp", i1 false, i1 false}
!12 = !{!"../drivers/mtd/nand/raw/nand_legacy.c", i32 525, i32 1}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/nand/raw/nand_legacy.c", i32 639, i32 3}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nand_legacy_check_hooks._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nand_legacy_check_hooks._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2152768566, i64 2152769064, i64 2152768603, i64 2152768659, i64 2152768693, i64 2152768717, i64 2152768758, i64 2152768779, i64 2152768807, i64 2152768841}
!31 = !{i64 2991392}
!32 = !{i64 2152767197}
!33 = !{i64 2990774}
!34 = !{i64 2152768284}
