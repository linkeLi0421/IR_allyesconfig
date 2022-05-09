; ModuleID = '/llk/IR_all_yes/drivers/regulator/irq_helpers.c_pt.bc'
source_filename = "../drivers/regulator/irq_helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+regulator_irq_helper\22, \22a\22\09"
module asm "\09.weak\09__crc_regulator_irq_helper\09\09\09\09"
module asm "\09.long\09__crc_regulator_irq_helper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_irq_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_irq_helper\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_irq_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regulator_irq_helper_cancel\22, \22a\22\09"
module asm "\09.weak\09__crc_regulator_irq_helper_cancel\09\09\09\09"
module asm "\09.long\09__crc_regulator_irq_helper_cancel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_irq_helper_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_irq_helper_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_irq_helper_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regulator_irq_map_event_simple\22, \22a\22\09"
module asm "\09.weak\09__crc_regulator_irq_map_event_simple\09\09\09\09"
module asm "\09.long\09__crc_regulator_irq_map_event_simple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_irq_map_event_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_irq_map_event_simple\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_irq_map_event_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_irq_desc = type { ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr }
%struct.regulator_irq = type { %struct.regulator_irq_data, %struct.regulator_irq_desc, i32, i32, %struct.delayed_work }
%struct.regulator_irq_data = type { ptr, i32, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.regulator_err_state = type { ptr, i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@regulator_irq_helper.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&h->isr_work)->work)\00", [55 x i8] zeroinitializer }, align 32
@regulator_irq_helper.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&h->isr_work)->timer\00", [41 x i8] zeroinitializer }, align 32
@regulator_irq_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 369, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regulator_irq_helper\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/regulator/irq_helpers.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@regulator_irq_helper._entry_ptr = internal global ptr @regulator_irq_helper._entry, section ".printk_index", align 4
@__kstrtab_regulator_irq_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_irq_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_irq_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_irq_helper to i32), ptr @__kstrtab_regulator_irq_helper, ptr @__kstrtabns_regulator_irq_helper }, section "___ksymtab_gpl+regulator_irq_helper", align 4
@__kstrtab_regulator_irq_helper_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_irq_helper_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_irq_helper_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_irq_helper_cancel to i32), ptr @__kstrtab_regulator_irq_helper_cancel, ptr @__kstrtabns_regulator_irq_helper_cancel }, section "___ksymtab_gpl+regulator_irq_helper_cancel", align 4
@__kstrtab_regulator_irq_map_event_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_irq_map_event_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_irq_map_event_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_irq_map_event_simple to i32), ptr @__kstrtab_regulator_irq_map_event_simple, ptr @__kstrtabns_regulator_irq_map_event_simple }, section "___ksymtab_gpl+regulator_irq_map_event_simple", align 4
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Regulator HW failure? - no IC recovery\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Regulator HW failure. IC recovery failed\00", [55 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@regulator_notifier_isr.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"irq_helpers\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator_notifier_isr\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Sending regulator notification EVT 0x%lx\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Regulator failure. Retry count exceeded\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Regulator failure. Recovery failed\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 364, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 369, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 67, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 75, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 243, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 266, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [35 x i8] c"../drivers/regulator/irq_helpers.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 272, i32 28 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_regulator_irq_helper, ptr @__ksymtab_regulator_irq_helper_cancel, ptr @__ksymtab_regulator_irq_map_event_simple, ptr @regulator_irq_helper._entry, ptr @regulator_irq_helper._entry_ptr, ptr @regulator_irq_helper.__key, ptr @.str, ptr @regulator_irq_helper.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_irq_helper.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_irq_helper.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_irq_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @regulator_irq_helper(ptr noundef %dev, ptr noundef readonly %d, i32 noundef %irq, i32 noundef %irq_flags, i32 noundef %common_errs, ptr noundef readonly %per_rdev_errs, ptr nocapture noundef readonly %rdev, i32 noundef %rdev_amount) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdev_amount)
  %tobool.not = icmp eq i32 %rdev_amount, 0
  %tobool1.not = icmp eq ptr %d, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %map_event = getelementptr inbounds %struct.regulator_irq_desc, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %map_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_event, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #4
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %irq11 = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %irq11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %irq11, align 4
  %desc = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %desc, ptr %d, i32 36)
  %mul.i = shl i32 %rdev_amount, 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul.i, i32 noundef 3520) #4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %call.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.end.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %num_states.i = getelementptr inbounds %struct.regulator_irq_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %num_states.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rdev_amount, ptr %num_states.i, align 4
  %data.i = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %data5.i = getelementptr inbounds %struct.regulator_irq_data, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %data5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %data5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdev_amount)
  %cmp34.i = icmp sgt i32 %rdev_amount, 0
  br i1 %cmp34.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end16_crit_edge

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %if.end14.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %rdev_err.addr.036.i = phi ptr [ %rdev_err.addr.1.i, %if.end14.i.for.body.i_crit_edge ], [ %per_rdev_errs, %if.end.i.for.body.i_crit_edge ]
  %rdev.addr.035.i = phi ptr [ %incdec.ptr15.i, %if.end14.i.for.body.i_crit_edge ], [ %rdev, %if.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %possible_errs.i = getelementptr %struct.regulator_err_state, ptr %12, i32 %i.037.i, i32 3
  %13 = ptrtoint ptr %possible_errs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %common_errs, ptr %possible_errs.i, align 4
  %tobool8.not.i = icmp eq ptr %rdev_err.addr.036.i, null
  br i1 %tobool8.not.i, label %for.body.i.if.end14.i_crit_edge, label %if.then9.i

for.body.i.if.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr.i = getelementptr i32, ptr %rdev_err.addr.036.i, i32 1
  %14 = ptrtoint ptr %rdev_err.addr.036.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rdev_err.addr.036.i, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %possible_errs13.i = getelementptr %struct.regulator_err_state, ptr %17, i32 %i.037.i, i32 3
  %18 = ptrtoint ptr %possible_errs13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %possible_errs13.i, align 4
  %or.i = or i32 %19, %15
  store i32 %or.i, ptr %possible_errs13.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %for.body.i.if.end14.i_crit_edge
  %rdev_err.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then9.i ], [ null, %for.body.i.if.end14.i_crit_edge ]
  %incdec.ptr15.i = getelementptr ptr, ptr %rdev.addr.035.i, i32 1
  %20 = ptrtoint ptr %rdev.addr.035.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rdev.addr.035.i, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %arrayidx18.i = getelementptr %struct.regulator_err_state, ptr %23, i32 %i.037.i
  %24 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %arrayidx18.i, align 4
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %rdev_amount
  br i1 %exitcond.not.i, label %if.end14.i.if.end16_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end14.i.if.end16_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end16:                                         ; preds = %if.end14.i.if.end16_crit_edge, %if.end.i.if.end16_crit_edge
  %25 = ptrtoint ptr %num_states.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_states.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp10.i = icmp sgt i32 %26, 0
  br i1 %cmp10.i, label %if.end16.for.body.i77_crit_edge, label %if.end16.init_rdev_errors.exit_crit_edge

if.end16.init_rdev_errors.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_rdev_errors.exit

if.end16.for.body.i77_crit_edge:                  ; preds = %if.end16
  br label %for.body.i77

for.body.i77:                                     ; preds = %for.inc.i.for.body.i77_crit_edge, %if.end16.for.body.i77_crit_edge
  %i.011.i = phi i32 [ %inc.i78, %for.inc.i.for.body.i77_crit_edge ], [ 0, %if.end16.for.body.i77_crit_edge ]
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %possible_errs.i75 = getelementptr %struct.regulator_err_state, ptr %28, i32 %i.011.i, i32 3
  %29 = ptrtoint ptr %possible_errs.i75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %possible_errs.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i76 = icmp eq i32 %30, 0
  br i1 %tobool.not.i76, label %for.body.i77.for.inc.i_crit_edge, label %if.then.i

for.body.i77.for.inc.i_crit_edge:                 ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.regulator_err_state, ptr %28, i32 %i.011.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %use_cached_err.i = getelementptr inbounds %struct.regulator_dev, ptr %32, i32 0, i32 25
  %33 = ptrtoint ptr %use_cached_err.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %use_cached_err.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i77.for.inc.i_crit_edge
  %inc.i78 = add nuw nsw i32 %i.011.i, 1
  %34 = ptrtoint ptr %num_states.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_states.i, align 4
  %cmp.i = icmp slt i32 %inc.i78, %35
  br i1 %cmp.i, label %for.inc.i.for.body.i77_crit_edge, label %for.inc.i.init_rdev_errors.exit_crit_edge

for.inc.i.init_rdev_errors.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %init_rdev_errors.exit

for.inc.i.for.body.i77_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i77

init_rdev_errors.exit:                            ; preds = %for.inc.i.init_rdev_errors.exit_crit_edge, %if.end16.init_rdev_errors.exit_crit_edge
  %irq_off_ms = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %irq_off_ms to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq_off_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not = icmp eq i32 %37, 0
  br i1 %tobool18.not, label %init_rdev_errors.exit.if.end36_crit_edge, label %do.body20

init_rdev_errors.exit.if.end36_crit_edge:         ; preds = %init_rdev_errors.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.body20:                                        ; preds = %init_rdev_errors.exit
  call void @__sanitizer_cov_trace_pc() #6
  %isr_work = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %isr_work, i32 noundef 0) #4
  %38 = ptrtoint ptr %isr_work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %isr_work, align 4
  %lockdep_map = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @regulator_irq_helper.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry27 = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %39 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry27, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @regulator_notifier_isr_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.regulator_irq, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @regulator_irq_helper.__key.1) #4
  br label %if.end36

if.end36:                                         ; preds = %do.body20, %init_rdev_errors.exit.if.end36_crit_edge
  %42 = ptrtoint ptr %irq11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq11, align 4
  %or = or i32 %irq_flags, 8192
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc, align 4
  %call40 = tail call i32 @request_threaded_irq(i32 noundef %43, ptr noundef null, ptr noundef nonnull @regulator_notifier_isr, i32 noundef %or, ptr noundef %45, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end36.cleanup_crit_edge, label %do.end45

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %irq) #7
  %46 = inttoptr i32 %call40 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end36.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %46, %do.end45 ], [ %call.i, %if.end36.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false4.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false2.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regulator_notifier_isr_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %num_states = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %num_states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_states, align 4
  %fatal_cnt = getelementptr i8, ptr %work, i32 -40
  %retry_cnt = getelementptr i8, ptr %work, i32 -4
  %renable = getelementptr i8, ptr %work, i32 -12
  %reread_ms = getelementptr i8, ptr %work, i32 -36
  br label %reread

reread:                                           ; preds = %if.then14.reread_crit_edge, %entry
  %2 = ptrtoint ptr %fatal_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fatal_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %reread.if.end8_crit_edge, label %land.lhs.true

reread.if.end8_crit_edge:                         ; preds = %reread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

land.lhs.true:                                    ; preds = %reread
  %4 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %retry_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp sgt i32 %5, %3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %die = getelementptr i8, ptr %work, i32 -20
  %6 = ptrtoint ptr %die to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %die, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hw_protection_shutdown(ptr noundef nonnull @.str.8, i32 noundef 10000) #4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call = tail call i32 %7(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.enable_out_crit_edge, label %if.then6

if.end.enable_out_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %enable_out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hw_protection_shutdown(ptr noundef nonnull @.str.9, i32 noundef 10000) #4
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %reread.if.end8_crit_edge
  %8 = ptrtoint ptr %renable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %renable, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end8.if.end29_crit_edge, label %if.then10

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then10:                                        ; preds = %if.end8
  %call12 = tail call i32 %9(ptr noundef %add.ptr) #4
  %10 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %for.cond.preheader [
    i32 1, label %if.then14
    i32 0, label %if.then10.if.end29_crit_edge
  ]

if.then10.if.end29_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

for.cond.preheader:                               ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp23107 = icmp sgt i32 %1, 0
  br i1 %cmp23107, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then14:                                        ; preds = %if.then10
  %11 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retry_cnt, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %retry_cnt, align 4
  %13 = ptrtoint ptr %reread_ms to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reread_ms, align 4
  %tobool16.not = icmp eq i32 %14, 0
  br i1 %tobool16.not, label %if.then14.reread_crit_edge, label %if.then14.reschedule_crit_edge

if.then14.reschedule_crit_edge:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %reschedule

if.then14.reread_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %reread

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0108 = phi i32 [ %inc25, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %arrayidx = getelementptr %struct.regulator_err_state, ptr %16, i32 %i.0108
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %errors = getelementptr %struct.regulator_err_state, ptr %16, i32 %i.0108, i32 2
  %19 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %errors, align 4
  %possible_errs = getelementptr %struct.regulator_err_state, ptr %16, i32 %i.0108, i32 3
  %21 = ptrtoint ptr %possible_errs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %possible_errs, align 4
  %err_lock.i = getelementptr inbounds %struct.regulator_dev, ptr %18, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %err_lock.i) #4
  %.not = xor i32 %22, -1
  %neg.i = or i32 %20, %.not
  %cached_err.i = getelementptr inbounds %struct.regulator_dev, ptr %18, i32 0, i32 24
  %23 = ptrtoint ptr %cached_err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cached_err.i, align 8
  %and.i = and i32 %24, %neg.i
  store i32 %and.i, ptr %cached_err.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %err_lock.i) #4
  %inc25 = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc25, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %25 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %retry_cnt, align 4
  %inc27 = add i32 %26, 1
  store i32 %inc27, ptr %retry_cnt, align 4
  %irq_off_ms = getelementptr i8, ptr %work, i32 -32
  %27 = ptrtoint ptr %irq_off_ms to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_off_ms, align 4
  br label %reschedule

if.end29:                                         ; preds = %if.then10.if.end29_crit_edge, %if.end8.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31109 = icmp sgt i32 %1, 0
  br i1 %cmp31109, label %if.end29.for.body32_crit_edge, label %if.end29.for.end41_crit_edge

if.end29.for.end41_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end41

if.end29.for.body32_crit_edge:                    ; preds = %if.end29
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %if.end29.for.body32_crit_edge
  %i.1110 = phi i32 [ %inc40, %for.body32.for.body32_crit_edge ], [ 0, %if.end29.for.body32_crit_edge ]
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %arrayidx36 = getelementptr %struct.regulator_err_state, ptr %30, i32 %i.1110
  %31 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx36, align 4
  %possible_errs38 = getelementptr %struct.regulator_err_state, ptr %30, i32 %i.1110, i32 3
  %33 = ptrtoint ptr %possible_errs38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %possible_errs38, align 4
  %err_lock.i102 = getelementptr inbounds %struct.regulator_dev, ptr %32, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %err_lock.i102) #4
  %neg.i103 = xor i32 %34, -1
  %cached_err.i104 = getelementptr inbounds %struct.regulator_dev, ptr %32, i32 0, i32 24
  %35 = ptrtoint ptr %cached_err.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cached_err.i104, align 8
  %and.i105 = and i32 %36, %neg.i103
  store i32 %and.i105, ptr %cached_err.i104, align 8
  tail call void @_raw_spin_unlock(ptr noundef %err_lock.i102) #4
  %inc40 = add nuw nsw i32 %i.1110, 1
  %exitcond111.not = icmp eq i32 %inc40, %1
  br i1 %exitcond111.not, label %for.body32.for.end41_crit_edge, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body32

for.body32.for.end41_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end41

for.end41:                                        ; preds = %for.body32.for.end41_crit_edge, %if.end29.for.end41_crit_edge
  %37 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %retry_cnt, align 4
  br label %enable_out

enable_out:                                       ; preds = %for.end41, %if.end.enable_out_crit_edge
  %irq = getelementptr i8, ptr %work, i32 -8
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %39) #4
  br label %cleanup

reschedule:                                       ; preds = %for.end, %if.then14.reschedule_crit_edge
  %tmo.0 = phi i32 [ %28, %for.end ], [ %14, %if.then14.reschedule_crit_edge ]
  %high_prio = getelementptr i8, ptr %work, i32 -27
  %40 = ptrtoint ptr %high_prio to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %high_prio, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool43.not = icmp eq i8 %41, 0
  br i1 %tobool43.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %reschedule
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %tmo.0) #4
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %work, i32 noundef %call2.i) #4
  br label %cleanup

if.else:                                          ; preds = %reschedule
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %43 = load ptr, ptr @system_highpri_wq, align 4
  %call2.i98 = tail call i32 @__msecs_to_jiffies(i32 noundef %tmo.0) #4
  %call.i106 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work, i32 noundef %call2.i98) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then44, %enable_out, %if.then6, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regulator_notifier_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %rdev_map = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdev_map) #4
  %0 = ptrtoint ptr %rdev_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rdev_map, align 4
  %num_states = getelementptr inbounds %struct.regulator_irq_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %num_states to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_states, align 4
  %fatal_cnt = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %fatal_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fatal_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %retry_cnt = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %retry_cnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %retry_cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %map_event = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %map_event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map_event, align 4
  %call = call i32 %8(i32 noundef %irq, ptr noundef %data, ptr noundef nonnull %rdev_map) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %fail_out, label %if.end4, !prof !42

if.end4:                                          ; preds = %if.end
  %retry_cnt5 = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %retry_cnt5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %retry_cnt5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end4.cleanup87_crit_edge

if.end4.cleanup87_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

lor.lhs.false:                                    ; preds = %if.end4
  %10 = ptrtoint ptr %rdev_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rdev_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup87_crit_edge, label %if.end9

lor.lhs.false.cleanup87_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

if.end9:                                          ; preds = %lor.lhs.false
  %skip_off = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %skip_off to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %skip_off, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %if.end9.if.end26_crit_edge, label %if.then11

if.end9.if.end26_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %rdev_map, i32 noundef %2, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %2)
  %cmp13150 = icmp slt i32 %call12, %2
  br i1 %cmp13150, label %if.then11.for.body_crit_edge, label %if.then11.for.end_crit_edge

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then11.for.body_crit_edge:                     ; preds = %if.then11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then11.for.body_crit_edge
  %i.0151 = phi i32 [ %call22, %for.inc.for.body_crit_edge ], [ %call12, %if.then11.for.body_crit_edge ]
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.regulator_err_state, ptr %15, i32 %i.0151
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ops16 = getelementptr inbounds %struct.regulator_desc, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops16, align 4
  %is_enabled = getelementptr inbounds %struct.regulator_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %is_enabled, align 4
  %call17 = call i32 %23(ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %add = add nsw i32 %i.0151, 1
  %call22 = call i32 @_find_next_bit_be(ptr noundef nonnull %rdev_map, i32 noundef %2, i32 noundef %add) #4
  %cmp13 = icmp slt i32 %call22, %2
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.then11.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %call12, %if.then11.for.end_crit_edge ], [ %i.0151, %for.body.for.end_crit_edge ], [ %call22, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %2)
  %cmp23 = icmp eq i32 %i.0.lcssa, %2
  br i1 %cmp23, label %for.end.cleanup87_crit_edge, label %for.end.if.end26_crit_edge

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

for.end.cleanup87_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

if.end26:                                         ; preds = %for.end.if.end26_crit_edge, %if.end9.if.end26_crit_edge
  %irq_off_ms = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %irq_off_ms to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_off_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool27.not = icmp eq i32 %25, 0
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void @disable_irq_nosync(i32 noundef %irq) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %call30 = call i32 @_find_next_bit_be(ptr noundef nonnull %rdev_map, i32 noundef %2, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %2)
  %cmp32153 = icmp slt i32 %call30, %2
  br i1 %cmp32153, label %if.end29.for.body33_crit_edge, label %if.end29.for.end56_crit_edge

if.end29.for.end56_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end56

if.end29.for.body33_crit_edge:                    ; preds = %if.end29
  br label %for.body33

for.body33:                                       ; preds = %do.end.for.body33_crit_edge, %if.end29.for.body33_crit_edge
  %i.1154 = phi i32 [ %call55, %do.end.for.body33_crit_edge ], [ %call30, %if.end29.for.body33_crit_edge ]
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %arrayidx36 = getelementptr %struct.regulator_err_state, ptr %27, i32 %i.1154
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx36, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regulator_notifier_isr.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@regulator_notifier_isr, %do.end)) #4
          to label %if.then48 [label %do.end], !srcloc !43

if.then48:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = call ptr @rdev_get_name(ptr noundef %29) #4
  %notifs = getelementptr %struct.regulator_err_state, ptr %27, i32 %i.1154, i32 1
  %30 = ptrtoint ptr %notifs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %notifs, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @regulator_notifier_isr.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.12, ptr noundef %call49, i32 noundef %31) #4
  br label %do.end

do.end:                                           ; preds = %if.then48, %for.body33
  %notifs51 = getelementptr %struct.regulator_err_state, ptr %27, i32 %i.1154, i32 1
  %32 = ptrtoint ptr %notifs51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %notifs51, align 4
  %call52 = call i32 @regulator_notifier_call_chain(ptr noundef %29, i32 noundef %33, ptr noundef null) #4
  %errors = getelementptr %struct.regulator_err_state, ptr %27, i32 %i.1154, i32 2
  %34 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %errors, align 4
  %err_lock.i = getelementptr inbounds %struct.regulator_dev, ptr %29, i32 0, i32 26
  call void @_raw_spin_lock(ptr noundef %err_lock.i) #4
  %cached_err.i = getelementptr inbounds %struct.regulator_dev, ptr %29, i32 0, i32 24
  %36 = ptrtoint ptr %cached_err.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cached_err.i, align 8
  %or.i = or i32 %37, %35
  store i32 %or.i, ptr %cached_err.i, align 8
  call void @_raw_spin_unlock(ptr noundef %err_lock.i) #4
  %add54 = add nsw i32 %i.1154, 1
  %call55 = call i32 @_find_next_bit_be(ptr noundef nonnull %rdev_map, i32 noundef %2, i32 noundef %add54) #4
  %cmp32 = icmp slt i32 %call55, %2
  br i1 %cmp32, label %do.end.for.body33_crit_edge, label %do.end.for.end56_crit_edge

do.end.for.end56_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end56

do.end.for.body33_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body33

for.end56:                                        ; preds = %do.end.for.end56_crit_edge, %if.end29.for.end56_crit_edge
  %38 = ptrtoint ptr %irq_off_ms to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq_off_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool58.not = icmp eq i32 %39, 0
  br i1 %tobool58.not, label %for.end56.cleanup87_crit_edge, label %if.then59

for.end56.cleanup87_crit_edge:                    ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

if.then59:                                        ; preds = %for.end56
  %high_prio = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 1, i32 5
  %40 = ptrtoint ptr %high_prio to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %high_prio, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool60.not = icmp eq i8 %41, 0
  br i1 %tobool60.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  %isr_work = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %39) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %isr_work, i32 noundef %call2.i) #4
  br label %cleanup87

if.else:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %43 = load ptr, ptr @system_highpri_wq, align 4
  %isr_work65 = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 4
  %call2.i145 = call i32 @__msecs_to_jiffies(i32 noundef %39) #4
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %isr_work65, i32 noundef %call2.i145) #4
  br label %cleanup87

fail_out:                                         ; preds = %if.end
  %44 = ptrtoint ptr %fatal_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fatal_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool72.not = icmp eq i32 %45, 0
  br i1 %tobool72.not, label %fail_out.cleanup87_crit_edge, label %land.lhs.true

fail_out.cleanup87_crit_edge:                     ; preds = %fail_out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

land.lhs.true:                                    ; preds = %fail_out
  %retry_cnt73 = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 3
  %46 = ptrtoint ptr %retry_cnt73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %retry_cnt73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp75 = icmp sgt i32 %47, %45
  br i1 %cmp75, label %if.then76, label %land.lhs.true.cleanup87_crit_edge

land.lhs.true.cleanup87_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

if.then76:                                        ; preds = %land.lhs.true
  %die = getelementptr inbounds %struct.regulator_irq, ptr %data, i32 0, i32 1, i32 7
  %48 = ptrtoint ptr %die to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %die, align 4
  %tobool77.not = icmp eq ptr %49, null
  br i1 %tobool77.not, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  call void @hw_protection_shutdown(ptr noundef nonnull @.str.13, i32 noundef 10000) #4
  br label %cleanup87

if.else79:                                        ; preds = %if.then76
  %call81 = call i32 %49(ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.else79.cleanup87_crit_edge, label %if.then83

if.else79.cleanup87_crit_edge:                    ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup87

if.then83:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #6
  call void @hw_protection_shutdown(ptr noundef nonnull @.str.14, i32 noundef 10000) #4
  br label %cleanup87

cleanup87:                                        ; preds = %if.then83, %if.else79.cleanup87_crit_edge, %if.then78, %land.lhs.true.cleanup87_crit_edge, %fail_out.cleanup87_crit_edge, %if.else, %if.then61, %for.end56.cleanup87_crit_edge, %for.end.cleanup87_crit_edge, %lor.lhs.false.cleanup87_crit_edge, %if.end4.cleanup87_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup87_crit_edge ], [ 0, %if.end4.cleanup87_crit_edge ], [ 0, %for.end.cleanup87_crit_edge ], [ 1, %if.then61 ], [ 1, %if.else ], [ 1, %for.end56.cleanup87_crit_edge ], [ 0, %if.then78 ], [ 0, %if.then83 ], [ 0, %if.else79.cleanup87_crit_edge ], [ 0, %land.lhs.true.cleanup87_crit_edge ], [ 0, %fail_out.cleanup87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdev_map) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regulator_irq_helper_cancel(ptr noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %irq = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef nonnull %1) #4
  %irq_off_ms = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %irq_off_ms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_off_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %isr_work = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 4
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %isr_work) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regulator_irq_map_event_simple(i32 %irq, ptr nocapture noundef readonly %rid, ptr nocapture noundef writeonly %dev_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rid, align 4
  %possible_errs = getelementptr inbounds %struct.regulator_err_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %possible_errs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %possible_errs, align 4
  %4 = ptrtoint ptr %dev_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %dev_mask, align 4
  %num_states = getelementptr inbounds %struct.regulator_irq_data, ptr %rid, i32 0, i32 1
  %5 = ptrtoint ptr %num_states to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %cond.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

cond.false:                                       ; preds = %entry
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp280.not = icmp eq i32 %call.i, 1
  br i1 %cmp280.not, label %if.end306, label %cond.false.do.end_crit_edge, !prof !44

cond.false.do.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %cond.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 427, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end306:                                        ; preds = %cond.false
  %7 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rid, align 4
  %errors = getelementptr inbounds %struct.regulator_err_state, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %errors to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %errors, align 4
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %sw.epilog.i [
    i32 2, label %if.end306.regulator_err2notif.exit_crit_edge
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb2.i
    i32 16, label %sw.bb3.i
    i32 32, label %sw.bb4.i
    i32 64, label %sw.bb5.i
    i32 128, label %sw.bb6.i
    i32 256, label %sw.bb7.i
    i32 512, label %sw.bb8.i
  ]

if.end306.regulator_err2notif.exit_crit_edge:     ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.bb1.i:                                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.bb2.i:                                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.bb3.i:                                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.bb4.i:                                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.bb5.i:                                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.bb6.i:                                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.bb7.i:                                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.bb8.i:                                         ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

sw.epilog.i:                                      ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %regulator_err2notif.exit

regulator_err2notif.exit:                         ; preds = %sw.epilog.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end306.regulator_err2notif.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 65536, %sw.bb8.i ], [ 32768, %sw.bb7.i ], [ 16384, %sw.bb6.i ], [ 8192, %sw.bb5.i ], [ 16, %sw.bb4.i ], [ 8, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.end306.regulator_err2notif.exit_crit_edge ]
  %11 = ptrtoint ptr %rid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rid, align 4
  %notifs = getelementptr inbounds %struct.regulator_err_state, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %notifs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %notifs, align 4
  br label %cleanup

cleanup:                                          ; preds = %regulator_err2notif.exit, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_protection_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @regulator_irq_helper.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/regulator/irq_helpers.c", i32 364, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @regulator_irq_helper.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/regulator/irq_helpers.c", i32 369, i32 3}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @regulator_irq_helper._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @regulator_irq_helper._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_regulator_irq_helper, !14, !"__ksymtab_regulator_irq_helper", i1 false, i1 false}
!14 = !{!"../drivers/regulator/irq_helpers.c", i32 376, i32 1}
!15 = !{ptr @__ksymtab_regulator_irq_helper_cancel, !16, !"__ksymtab_regulator_irq_helper_cancel", i1 false, i1 false}
!16 = !{!"../drivers/regulator/irq_helpers.c", i32 399, i32 1}
!17 = !{ptr @__ksymtab_regulator_irq_map_event_simple, !18, !"__ksymtab_regulator_irq_map_event_simple", i1 false, i1 false}
!18 = !{!"../drivers/regulator/irq_helpers.c", i32 435, i32 1}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/irq_helpers.c", i32 67, i32 34}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/irq_helpers.c", i32 75, i32 34}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/irq_helpers.c", i32 243, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @regulator_notifier_isr.__UNIQUE_ID_ddebug288, !24, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/irq_helpers.c", i32 266, i32 27}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/irq_helpers.c", i32 272, i32 28}
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
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2148287205, i64 2148287210, i64 2148287223, i64 2148287267, i64 2148287301, i64 2148287322}
!44 = !{!"branch_weights", i32 2000, i32 1}
