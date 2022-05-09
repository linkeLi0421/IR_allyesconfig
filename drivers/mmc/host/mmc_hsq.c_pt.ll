; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/mmc_hsq.c_pt.bc'
source_filename = "../drivers/mmc/host/mmc_hsq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mmc_hsq_finalize_request\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_hsq_finalize_request\09\09\09\09"
module asm "\09.long\09__crc_mmc_hsq_finalize_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_hsq_finalize_request:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_hsq_finalize_request\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_hsq_finalize_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmc_hsq_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_hsq_init\09\09\09\09"
module asm "\09.long\09__crc_mmc_hsq_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_hsq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_hsq_init\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_hsq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmc_hsq_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_hsq_suspend\09\09\09\09"
module asm "\09.long\09__crc_mmc_hsq_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_hsq_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_hsq_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_hsq_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmc_hsq_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_hsq_resume\09\09\09\09"
module asm "\09.long\09__crc_mmc_hsq_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_hsq_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_hsq_resume\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_hsq_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_hsq = type { ptr, ptr, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.work_struct, i32, i32, i32, i8, i8, i8 }
%struct.hsq_slot = type { ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }

@__kstrtab_mmc_hsq_finalize_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_hsq_finalize_request = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_hsq_finalize_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_hsq_finalize_request to i32), ptr @__kstrtab_mmc_hsq_finalize_request, ptr @__kstrtabns_mmc_hsq_finalize_request }, section "___ksymtab_gpl+mmc_hsq_finalize_request", align 4
@mmc_hsq_ops = internal constant { %struct.mmc_cqe_ops, [60 x i8] } { %struct.mmc_cqe_ops { ptr @mmc_hsq_enable, ptr @mmc_hsq_disable, ptr @mmc_hsq_request, ptr @mmc_hsq_post_req, ptr null, ptr @mmc_hsq_wait_for_idle, ptr null, ptr @mmc_hsq_recovery_start, ptr @mmc_hsq_recovery_finish }, [60 x i8] zeroinitializer }, align 32
@mmc_hsq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&hsq->retry_work)\00", [60 x i8] zeroinitializer }, align 32
@mmc_hsq_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&hsq->lock\00", [21 x i8] zeroinitializer }, align 32
@mmc_hsq_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hsq->wait_queue\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_hsq_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_hsq_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_hsq_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_hsq_init to i32), ptr @__kstrtab_mmc_hsq_init, ptr @__kstrtabns_mmc_hsq_init }, section "___ksymtab_gpl+mmc_hsq_init", align 4
@__kstrtab_mmc_hsq_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_hsq_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_hsq_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_hsq_suspend to i32), ptr @__kstrtab_mmc_hsq_suspend, ptr @__kstrtabns_mmc_hsq_suspend }, section "___ksymtab_gpl+mmc_hsq_suspend", align 4
@__kstrtab_mmc_hsq_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_hsq_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_hsq_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_hsq_resume to i32), ptr @__kstrtab_mmc_hsq_resume, ptr @__kstrtabns_mmc_hsq_resume }, section "___ksymtab_gpl+mmc_hsq_resume", align 4
@__UNIQUE_ID_description267 = internal constant [52 x i8] c"mmc_hsq.description=MMC Host Software Queue support\00", section ".modinfo", align 1
@__UNIQUE_ID_file268 = internal constant [38 x i8] c"mmc_hsq.file=drivers/mmc/host/mmc_hsq\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [23 x i8] c"mmc_hsq.license=GPL v2\00", section ".modinfo", align 1
@mmc_hsq_pump_requests.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mmc/host/mmc_hsq.c\00", [37 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mmc_hsq_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014could not stop mmc software queue\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmc_hsq_disable\00", [16 x i8] zeroinitializer }, align 32
@mmc_hsq_disable._entry_ptr = internal global ptr @mmc_hsq_disable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"mmc_hsq_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 330, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 354, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 355, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 356, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 71, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [30 x i8] c"../drivers/mmc/host/mmc_hsq.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 301, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__ksymtab_mmc_hsq_finalize_request, ptr @__ksymtab_mmc_hsq_init, ptr @__ksymtab_mmc_hsq_resume, ptr @__ksymtab_mmc_hsq_suspend, ptr @mmc_hsq_disable._entry, ptr @mmc_hsq_disable._entry_ptr, ptr @mmc_hsq_ops, ptr @mmc_hsq_init.__key, ptr @.str, ptr @mmc_hsq_init.__key.1, ptr @.str.2, ptr @mmc_hsq_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_hsq_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_hsq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_hsq_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_hsq_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_hsq_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mmc_hsq_finalize_request(ptr noundef %mmc, ptr noundef readnone %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %lock = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %enabled = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %mrq5 = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mrq5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq5, align 4
  %tobool6.not = icmp ne ptr %5, null
  %cmp9.not = icmp eq ptr %5, %mrq
  %or.cond = and i1 %tobool6.not, %cmp9.not
  br i1 %or.cond, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %slot = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slot, align 4
  %next_tag = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %next_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_tag, align 4
  %arrayidx = getelementptr %struct.hsq_slot, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  %11 = ptrtoint ptr %mrq5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mrq5, align 4
  tail call void @mmc_cqe_request_done(ptr noundef %mmc, ptr noundef %12) #4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %qcnt.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qcnt.i, align 4
  %15 = ptrtoint ptr %mrq5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mrq5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.end.mmc_hsq_update_next_tag.exit.i_crit_edge, label %if.end.i.i

if.end.mmc_hsq_update_next_tag.exit.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_hsq_update_next_tag.exit.i

if.end.i.i:                                       ; preds = %if.end
  %16 = ptrtoint ptr %next_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_tag, align 4
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr %next_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i.i)
  %cmp.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %18 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slot, align 4
  %arrayidx.i.i = getelementptr %struct.hsq_slot, ptr %19, i32 %inc.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i.i, label %if.then2.i.i.if.end8.i.i_crit_edge, label %if.then2.i.i.if.end.i_crit_edge

if.then2.i.i.if.end.i_crit_edge:                  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then2.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then2.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %22 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slot, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end8.i.i
  %tag.032.i.i = phi i32 [ 0, %if.end8.i.i ], [ %inc16.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx11.i.i = getelementptr %struct.hsq_slot, ptr %23, i32 %tag.032.i.i
  %24 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx11.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %25, null
  br i1 %tobool13.not.i.i, label %for.inc.i.i, label %for.body.i.i.mmc_hsq_update_next_tag.exit.i_crit_edge

for.body.i.i.mmc_hsq_update_next_tag.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_hsq_update_next_tag.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc16.i.i = add nuw nsw i32 %tag.032.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc16.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mmc_hsq_update_next_tag.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.mmc_hsq_update_next_tag.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_hsq_update_next_tag.exit.i

mmc_hsq_update_next_tag.exit.i:                   ; preds = %for.inc.i.i.mmc_hsq_update_next_tag.exit.i_crit_edge, %for.body.i.i.mmc_hsq_update_next_tag.exit.i_crit_edge, %if.end.mmc_hsq_update_next_tag.exit.i_crit_edge
  %tag.0.lcssa.sink.i.i = phi i32 [ 64, %if.end.mmc_hsq_update_next_tag.exit.i_crit_edge ], [ %tag.032.i.i, %for.body.i.i.mmc_hsq_update_next_tag.exit.i_crit_edge ], [ 64, %for.inc.i.i.mmc_hsq_update_next_tag.exit.i_crit_edge ]
  %26 = ptrtoint ptr %next_tag to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %tag.0.lcssa.sink.i.i, ptr %next_tag, align 4
  %waiting_for_idle.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %waiting_for_idle.i, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp ne i8 %28, 0
  %or.cond.i = and i1 %tobool.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.i, label %mmc_hsq_update_next_tag.exit.i.if.end.i_crit_edge

mmc_hsq_update_next_tag.exit.i.if.end.i_crit_edge: ; preds = %mmc_hsq_update_next_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %mmc_hsq_update_next_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %waiting_for_idle.i, align 1
  %wait_queue.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait_queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %mmc_hsq_update_next_tag.exit.i.if.end.i_crit_edge, %if.then2.i.i.if.end.i_crit_edge
  %recovery_halt.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %recovery_halt.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool8.not.i = icmp eq i8 %31, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.i = icmp sgt i32 %14, 0
  %or.cond34.i = select i1 %tobool8.not.i, i1 %cmp13.i, i1 false
  br i1 %or.cond34.i, label %if.then15.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @mmc_hsq_pump_requests(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then15.i, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end.i.cleanup_crit_edge ], [ true, %if.then15.i ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_request_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_hsq_init(ptr noundef %hsq, ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_slots = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 7
  %0 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64, ptr %num_slots, align 4
  %next_tag = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 6
  %1 = ptrtoint ptr %next_tag to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 64, ptr %next_tag, align 4
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 128
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 256, i32 noundef 3520) #4
  %slot = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 3
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i.i, ptr %slot, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %hsq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mmc, ptr %hsq, align 4
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %6 = ptrtoint ptr %cqe_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hsq, ptr %cqe_private, align 4
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 62
  %7 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mmc_hsq_ops, ptr %cqe_ops, align 8
  %retry_work = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 5
  tail call void @__init_work(ptr noundef %retry_work, i32 noundef 0) #4
  %8 = ptrtoint ptr %retry_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %retry_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mmc_hsq_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry8 = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mmc_hsq_retry_handler, ptr %func, align 4
  %lock = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mmc_hsq_init.__key.1, i16 noundef signext 3) #4
  %wait_queue = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.4, ptr noundef nonnull @mmc_hsq_init.__key.3) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_hsq_retry_handler(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %request = getelementptr inbounds %struct.mmc_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request, align 4
  %mrq = getelementptr i8, ptr %work, i32 -104
  %6 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mrq, align 4
  tail call void %5(ptr noundef %1, ptr noundef %7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_hsq_suspend(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mmc_hsq_disable(ptr noundef %mmc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_hsq_disable(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %lock = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %enabled = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  br i1 %tobool.not, label %entry.cleanup51_crit_edge, label %if.end

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup51

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 299) #4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %mrq.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.lor.rhs.i_crit_edge

if.end.lor.rhs.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %if.end
  %qcnt.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.mmc_hsq_queue_is_idle.exit_crit_edge, label %land.lhs.true.i.lor.rhs.i_crit_edge

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs.i

land.lhs.true.i.mmc_hsq_queue_is_idle.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_hsq_queue_is_idle.exit

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %if.end.lor.rhs.i_crit_edge
  %recovery_halt.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %recovery_halt.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.i = icmp ne i8 %9, 0
  br label %mmc_hsq_queue_is_idle.exit

mmc_hsq_queue_is_idle.exit:                       ; preds = %lor.rhs.i, %land.lhs.true.i.mmc_hsq_queue_is_idle.exit_crit_edge
  %10 = phi i1 [ true, %land.lhs.true.i.mmc_hsq_queue_is_idle.exit_crit_edge ], [ %tobool2.i, %lor.rhs.i ]
  %recovery_halt3.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 11
  %lnot.i = xor i1 %10, true
  %waiting_for_idle.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 10
  %frombool6.i = zext i1 %lnot.i to i8
  %11 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool6.i, ptr %waiting_for_idle.i, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  br i1 %10, label %mmc_hsq_queue_is_idle.exit.if.end47_crit_edge, label %if.then14

mmc_hsq_queue_is_idle.exit.if.end47_crit_edge:    ; preds = %mmc_hsq_queue_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then14:                                        ; preds = %mmc_hsq_queue_is_idle.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %wait_queue = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 2
  %qcnt.i78 = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then14
  %__ret15.0 = phi i32 [ 50, %if.then14 ], [ %call36, %cleanup ]
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %13 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mrq.i, align 4
  %tobool.not.i77 = icmp eq ptr %14, null
  br i1 %tobool.not.i77, label %land.lhs.true.i80, label %for.cond.lor.rhs.i83_crit_edge

for.cond.lor.rhs.i83_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs.i83

land.lhs.true.i80:                                ; preds = %for.cond
  %15 = ptrtoint ptr %qcnt.i78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qcnt.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i79 = icmp eq i32 %16, 0
  br i1 %tobool1.not.i79, label %if.end39.thread98.critedge, label %land.lhs.true.i80.lor.rhs.i83_crit_edge

land.lhs.true.i80.lor.rhs.i83_crit_edge:          ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs.i83

lor.rhs.i83:                                      ; preds = %land.lhs.true.i80.lor.rhs.i83_crit_edge, %for.cond.lor.rhs.i83_crit_edge
  %17 = ptrtoint ptr %recovery_halt3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %recovery_halt3.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.i82.not = icmp eq i8 %18, 0
  %19 = xor i8 %18, 1
  %20 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %waiting_for_idle.i, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  br i1 %tobool2.i82.not, label %22, label %lor.rhs.i83.if.end39.thread98_crit_edge

lor.rhs.i83.if.end39.thread98_crit_edge:          ; preds = %lor.rhs.i83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.thread98

if.end39.thread98.critedge:                       ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %waiting_for_idle.i, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  br label %if.end39.thread98

if.end39.thread98:                                ; preds = %if.end39.thread98.critedge, %lor.rhs.i83.if.end39.thread98_crit_edge
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end47

22:                                               ; preds = %lor.rhs.i83
  %tobool29.not = icmp eq i32 %__ret15.0, 0
  br i1 %tobool29.not, label %if.end39, label %cleanup

cleanup:                                          ; preds = %22
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call i32 @schedule_timeout(i32 noundef %__ret15.0) #4
  br label %for.cond

if.end39:                                         ; preds = %22
  call void @__sanitizer_cov_trace_pc() #6
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %cleanup51

if.end47:                                         ; preds = %if.end39.thread98, %mmc_hsq_queue_is_idle.exit.if.end47_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %enabled, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  br label %cleanup51

cleanup51:                                        ; preds = %if.end47, %if.end39, %entry.cleanup51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_hsq_resume(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private.i, align 4
  %lock.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #4
  %enabled.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mmc_hsq_enable.exit_crit_edge

entry.mmc_hsq_enable.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_hsq_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enabled.i, align 4
  br label %mmc_hsq_enable.exit

mmc_hsq_enable.exit:                              ; preds = %if.end.i, %entry.mmc_hsq_enable.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -16, %entry.mmc_hsq_enable.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_hsq_enable(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readnone %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %lock = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %enabled = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_hsq_pump_requests(ptr noundef %hsq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsq, align 4
  %lock = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %mrq = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 1
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %qcnt = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 8
  %4 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %enabled = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 9
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not = icmp eq i8 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.then9_crit_edge, label %if.end11

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %slot12 = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 3
  %8 = ptrtoint ptr %slot12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot12, align 4
  %next_tag = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 6
  %10 = ptrtoint ptr %next_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next_tag, align 4
  %arrayidx = getelementptr %struct.hsq_slot, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mrq, align 4
  %dec = add i32 %5, -1
  %15 = ptrtoint ptr %qcnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec, ptr %qcnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %request_atomic = getelementptr inbounds %struct.mmc_host_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %request_atomic to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %request_atomic, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.end25.thread, label %if.end25

if.end25.thread:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %request = getelementptr inbounds %struct.mmc_host_ops, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %request, align 4
  %22 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mrq, align 4
  tail call void %21(ptr noundef %1, ptr noundef %23) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end11
  %24 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mrq, align 4
  %call22 = tail call i32 %19(ptr noundef %1, ptr noundef %25) #4
  %26 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call22, label %land.rhs [
    i32 -16, label %if.then28
    i32 0, label %if.end25.cleanup_crit_edge
  ]

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %retry_work = getelementptr inbounds %struct.mmc_hsq, ptr %hsq, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %retry_work) #4
  br label %cleanup

land.rhs:                                         ; preds = %if.end25
  %.b101 = load i1, ptr @mmc_hsq_pump_requests.__already_done, align 1
  br i1 %.b101, label %land.rhs.cleanup_crit_edge, label %if.then40, !prof !42

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then40:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @mmc_hsq_pump_requests.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 71, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %land.rhs.cleanup_crit_edge, %if.then28, %if.end25.cleanup_crit_edge, %if.end25.thread, %if.then9, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_hsq_request(ptr nocapture noundef readonly %mmc, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %tag1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 10
  %2 = ptrtoint ptr %tag1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag1, align 4
  %lock = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %enabled = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %recovery_halt = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recovery_halt, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %slot = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot, align 4
  %arrayidx = getelementptr %struct.hsq_slot, ptr %9, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mrq, ptr %arrayidx, align 4
  %next_tag = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %next_tag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %12)
  %cmp = icmp eq i32 %12, 64
  br i1 %cmp, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %next_tag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %next_tag, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %qcnt = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qcnt, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %qcnt, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  tail call fastcc void @mmc_hsq_pump_requests(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then4, %if.then
  %retval.0 = phi i32 [ -16, %if.then4 ], [ 0, %if.end10 ], [ -108, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_hsq_post_req(ptr noundef %mmc, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %mmc, ptr noundef %mrq, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_hsq_wait_for_idle(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 277) #4
  %lock.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #4
  %mrq.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.lor.rhs.i_crit_edge

entry.lor.rhs.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %entry
  %qcnt.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %qcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.mmc_hsq_queue_is_idle.exit_crit_edge, label %land.lhs.true.i.lor.rhs.i_crit_edge

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs.i

land.lhs.true.i.mmc_hsq_queue_is_idle.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_hsq_queue_is_idle.exit

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %entry.lor.rhs.i_crit_edge
  %recovery_halt.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %recovery_halt.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %recovery_halt.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.i = icmp ne i8 %7, 0
  br label %mmc_hsq_queue_is_idle.exit

mmc_hsq_queue_is_idle.exit:                       ; preds = %lor.rhs.i, %land.lhs.true.i.mmc_hsq_queue_is_idle.exit_crit_edge
  %8 = phi i1 [ true, %land.lhs.true.i.mmc_hsq_queue_is_idle.exit_crit_edge ], [ %tobool2.i, %lor.rhs.i ]
  %recovery_halt3.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %recovery_halt3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %recovery_halt3.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  %cond.i = select i1 %tobool4.not.i, i32 0, i32 -16
  %lnot.i = xor i1 %8, true
  %waiting_for_idle.i = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 10
  %frombool6.i = zext i1 %lnot.i to i8
  %11 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool6.i, ptr %waiting_for_idle.i, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #4
  br i1 %8, label %mmc_hsq_queue_is_idle.exit.do.end11_crit_edge, label %if.end

mmc_hsq_queue_is_idle.exit.do.end11_crit_edge:    ; preds = %mmc_hsq_queue_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end:                                           ; preds = %mmc_hsq_queue_is_idle.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %wait_queue = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 2
  %qcnt.i20 = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #4
  %13 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mrq.i, align 4
  %tobool.not.i19 = icmp eq ptr %14, null
  br i1 %tobool.not.i19, label %land.lhs.true.i22, label %for.cond.lor.rhs.i25_crit_edge

for.cond.lor.rhs.i25_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs.i25

land.lhs.true.i22:                                ; preds = %for.cond
  %15 = ptrtoint ptr %qcnt.i20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qcnt.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i21 = icmp eq i32 %16, 0
  br i1 %tobool1.not.i21, label %land.lhs.true.i22.mmc_hsq_queue_is_idle.exit32_crit_edge, label %land.lhs.true.i22.lor.rhs.i25_crit_edge

land.lhs.true.i22.lor.rhs.i25_crit_edge:          ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs.i25

land.lhs.true.i22.mmc_hsq_queue_is_idle.exit32_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #6
  br label %mmc_hsq_queue_is_idle.exit32

lor.rhs.i25:                                      ; preds = %land.lhs.true.i22.lor.rhs.i25_crit_edge, %for.cond.lor.rhs.i25_crit_edge
  %17 = ptrtoint ptr %recovery_halt3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %recovery_halt3.i, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.i24 = icmp ne i8 %18, 0
  br label %mmc_hsq_queue_is_idle.exit32

mmc_hsq_queue_is_idle.exit32:                     ; preds = %lor.rhs.i25, %land.lhs.true.i22.mmc_hsq_queue_is_idle.exit32_crit_edge
  %19 = phi i1 [ true, %land.lhs.true.i22.mmc_hsq_queue_is_idle.exit32_crit_edge ], [ %tobool2.i24, %lor.rhs.i25 ]
  %20 = ptrtoint ptr %recovery_halt3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %recovery_halt3.i, align 2, !range !41
  %lnot.i29 = xor i1 %19, true
  %frombool6.i31 = zext i1 %lnot.i29 to i8
  %22 = ptrtoint ptr %waiting_for_idle.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool6.i31, ptr %waiting_for_idle.i, align 1
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #4
  br i1 %19, label %for.end, label %cleanup

cleanup:                                          ; preds = %mmc_hsq_queue_is_idle.exit32
  call void @__sanitizer_cov_trace_pc() #6
  call void @schedule() #4
  br label %for.cond

for.end:                                          ; preds = %mmc_hsq_queue_is_idle.exit32
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not.i27 = icmp eq i8 %21, 0
  %cond.i28 = select i1 %tobool4.not.i27, i32 0, i32 -16
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %do.end11

do.end11:                                         ; preds = %for.end, %mmc_hsq_queue_is_idle.exit.do.end11_crit_edge
  %ret.0 = phi i32 [ %cond.i, %mmc_hsq_queue_is_idle.exit.do.end11_crit_edge ], [ %cond.i28, %for.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_hsq_recovery_start(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %lock = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %recovery_halt = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %recovery_halt, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_hsq_recovery_finish(ptr nocapture noundef readonly %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %lock = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %recovery_halt = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %recovery_halt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %recovery_halt, align 2
  %qcnt = getelementptr inbounds %struct.mmc_hsq, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qcnt, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @mmc_hsq_pump_requests(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_mmc_hsq_finalize_request, !1, !"__ksymtab_mmc_hsq_finalize_request", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 178, i32 1}
!2 = !{ptr @mmc_hsq_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 354, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mmc_hsq_init.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 355, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mmc_hsq_init.__key.3, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 356, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_mmc_hsq_init, !12, !"__ksymtab_mmc_hsq_init", i1 false, i1 false}
!12 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 360, i32 1}
!13 = !{ptr @__ksymtab_mmc_hsq_suspend, !14, !"__ksymtab_mmc_hsq_suspend", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 366, i32 1}
!15 = !{ptr @__ksymtab_mmc_hsq_resume, !16, !"__ksymtab_mmc_hsq_resume", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 372, i32 1}
!17 = !{ptr @__UNIQUE_ID_description267, !18, !"__UNIQUE_ID_description267", i1 false, i1 false}
!18 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 374, i32 1}
!19 = !{ptr @__UNIQUE_ID_file268, !20, !"__UNIQUE_ID_file268", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 375, i32 1}
!21 = !{ptr @__UNIQUE_ID_license269, !20, !"__UNIQUE_ID_license269", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 71, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mmc_hsq_ops, !26, !"mmc_hsq_ops", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 330, i32 33}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/mmc_hsq.c", i32 301, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mmc_hsq_disable._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mmc_hsq_disable._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i8 0, i8 2}
!42 = !{!"branch_weights", i32 2000, i32 1}
