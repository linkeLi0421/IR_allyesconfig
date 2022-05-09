; ModuleID = '/llk/IR_all_yes/drivers/rtc/dev.c_pt.bc'
source_filename = "../drivers/rtc/dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtc_dev_update_irq_enable_emul\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_dev_update_irq_enable_emul\09\09\09\09"
module asm "\09.long\09__crc_rtc_dev_update_irq_enable_emul\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_dev_update_irq_enable_emul:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_dev_update_irq_enable_emul\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_dev_update_irq_enable_emul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_param = type { i64, %union.anon.67, i32, i32 }
%union.anon.67 = type { i64 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.71 = type { ptr }

@__kstrtab_rtc_dev_update_irq_enable_emul = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_dev_update_irq_enable_emul = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_dev_update_irq_enable_emul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_dev_update_irq_enable_emul to i32), ptr @__kstrtab_rtc_dev_update_irq_enable_emul, ptr @__kstrtabns_rtc_dev_update_irq_enable_emul }, section "___ksymtab+rtc_dev_update_irq_enable_emul", align 4
@rtc_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rtc_dev_prepare.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtc_core\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtc_dev_prepare\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/rtc/dev.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"too many RTC devices\0A\00", [42 x i8] zeroinitializer }, align 32
@rtc_dev_prepare.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&rtc->uie_task)\00", [62 x i8] zeroinitializer }, align 32
@rtc_dev_prepare.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&rtc->uie_timer)\00", [46 x i8] zeroinitializer }, align 32
@rtc_dev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @rtc_dev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtc_dev_poll, ptr @rtc_dev_ioctl, ptr null, ptr null, i32 0, ptr @rtc_dev_open, ptr null, ptr @rtc_dev_release, ptr null, ptr @rtc_dev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@rtc_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013rtc_core: failed to allocate char dev region\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_dev_init\00", [19 x i8] zeroinitializer }, align 32
@rtc_dev_init._entry_ptr = internal global ptr @rtc_dev_init._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 28673, i64 28674, i64 28675, i64 28676, i64 28677, i64 28678, i64 1074032652, i64 1074032654, i64 1075343379, i64 1075343380, i64 1076129799, i64 1076129802, i64 1076391951, i64 2147774475, i64 2149871624, i64 2149871625, i64 2150133776]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 1075343379, i64 1075343380, i64 1076129799, i64 1076129802]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"rtc_devt\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 19, i32 14 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 546, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 553, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 554, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"rtc_dev_fops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 524, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 565, i32 55 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private constant [21 x i8] c"../drivers/rtc/dev.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 567, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 174, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_rtc_dev_update_irq_enable_emul, ptr @rtc_dev_exit, ptr @rtc_dev_init._entry, ptr @rtc_dev_init._entry_ptr, ptr @rtc_devt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtc_dev_prepare.__key, ptr @.str.4, ptr @rtc_dev_prepare.__key.5, ptr @.str.6, ptr @rtc_dev_fops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_dev_prepare.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_dev_prepare.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_dev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtc_dev_update_irq_enable_emul(ptr noundef %rtc, i32 noundef %enabled) #0 align 64 {
entry:
  %tm.i = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm.i) #7
  %0 = call ptr @memset(ptr %tm.i, i32 255, i32 36)
  %call.i = call i32 @rtc_read_time(ptr noundef %rtc, ptr noundef nonnull %tm.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.set_uie.exit_crit_edge

if.then.set_uie.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_uie.exit

if.end.i:                                         ; preds = %if.then
  %irq_lock.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %irq_lock.i) #7
  %uie_irq_active.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 30
  %1 = ptrtoint ptr %uie_irq_active.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %uie_irq_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then2.i:                                       ; preds = %if.end.i
  %bf.set.i = and i8 %bf.load.i, 31
  %2 = ptrtoint ptr %tm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm.i, align 4
  %oldsecs.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 29
  %4 = ptrtoint ptr %oldsecs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %oldsecs.i, align 8
  %bf.set10.i = or i8 %bf.set.i, -96
  %5 = ptrtoint ptr %uie_irq_active.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.set10.i, ptr %uie_irq_active.i, align 4
  %uie_task.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %uie_task.i) #7
  br i1 %call.i.i.i, label %if.then2.i.if.end19.i_crit_edge, label %if.then13.i

if.then2.i.if.end19.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then13.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %uie_irq_active.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load15.i = load i8, ptr %uie_irq_active.i, align 4
  %bf.clear16.i = and i8 %bf.load15.i, -33
  store i8 %bf.clear16.i, ptr %uie_irq_active.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then13.i, %if.then2.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %irq_data.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 7
  %8 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_data.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %irq_lock.i) #7
  br label %set_uie.exit

set_uie.exit:                                     ; preds = %if.end19.i, %if.then.set_uie.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm.i) #7
  br label %return

if.else:                                          ; preds = %entry
  %irq_lock.i3 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock.i3) #7
  %uie_irq_active.i4 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 30
  %9 = ptrtoint ptr %uie_irq_active.i4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i5 = load i8, ptr %uie_irq_active.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i5)
  %tobool.not.i6 = icmp sgt i8 %bf.load.i5, -1
  br i1 %tobool.not.i6, label %if.else.clear_uie.exit_crit_edge, label %if.then.i

if.else.clear_uie.exit_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_uie.exit

if.then.i:                                        ; preds = %if.else
  %bf.set.i7 = or i8 %bf.load.i5, 64
  %10 = ptrtoint ptr %uie_irq_active.i4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.set.i7, ptr %uie_irq_active.i4, align 4
  %11 = and i8 %bf.load.i5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not.i = icmp eq i8 %11, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i9_crit_edge, label %if.then7.i

if.then.i.if.end.i9_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i9

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock.i3) #7
  %uie_timer.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 28
  %call.i8 = tail call i32 @del_timer_sync(ptr noundef %uie_timer.i) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock.i3) #7
  %12 = ptrtoint ptr %uie_irq_active.i4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load11.i = load i8, ptr %uie_irq_active.i4, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -17
  store i8 %bf.clear12.i, ptr %uie_irq_active.i4, align 4
  br label %if.end.i9

if.end.i9:                                        ; preds = %if.then7.i, %if.then.i.if.end.i9_crit_edge
  %13 = ptrtoint ptr %uie_irq_active.i4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load14.i = load i8, ptr %uie_irq_active.i4, align 4
  %14 = and i8 %bf.load14.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not.i = icmp eq i8 %14, 0
  br i1 %tobool18.not.i, label %if.end.i9.if.end22.i_crit_edge, label %if.then19.i

if.end.i9.if.end22.i_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock.i3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %15) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock.i3) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end.i9.if.end22.i_crit_edge
  %16 = ptrtoint ptr %uie_irq_active.i4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load24.i = load i8, ptr %uie_irq_active.i4, align 4
  %bf.clear25.i = and i8 %bf.load24.i, 127
  store i8 %bf.clear25.i, ptr %uie_irq_active.i4, align 4
  br label %clear_uie.exit

clear_uie.exit:                                   ; preds = %if.end22.i, %if.else.clear_uie.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock.i3) #7
  br label %return

return:                                           ; preds = %clear_uie.exit, %set_uie.exit
  %retval.0 = phi i32 [ %call.i, %set_uie.exit ], [ 0, %clear_uie.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_dev_prepare(ptr noundef %rtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rtc_devt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %cmp = icmp sgt i32 %2, 15
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtc_dev_prepare.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtc_dev_prepare, %return)) #7
          to label %if.then6 [label %return], !srcloc !46

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtc_dev_prepare.__UNIQUE_ID_ddebug231, ptr noundef %rtc, ptr noundef nonnull @.str.3) #7
  br label %return

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shr = and i32 %0, -1048576
  %or = or i32 %2, %shr
  %devt = getelementptr inbounds %struct.device, ptr %rtc, i32 0, i32 29
  %3 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %devt, align 8
  %uie_task = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 27
  tail call void @__init_work(ptr noundef %uie_task, i32 noundef 0) #7
  %4 = ptrtoint ptr %uie_task to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %uie_task, align 4
  %lockdep_map = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 27, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtc_dev_prepare.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry15 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 27, i32 1
  %5 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 27, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 27, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rtc_uie_task, ptr %func, align 4
  %uie_timer = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 28
  tail call void @init_timer_key(ptr noundef %uie_timer, ptr noundef nonnull @rtc_uie_timer, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtc_dev_prepare.__key.5) #7
  %char_dev = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 5
  tail call void @cdev_init(ptr noundef %char_dev, ptr noundef nonnull @rtc_dev_fops) #7
  %owner = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 1
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 8
  %owner21 = getelementptr inbounds %struct.rtc_device, ptr %rtc, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %owner21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %owner21, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtc_uie_task(ptr noundef %work) #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1564
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #7
  %0 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %call = call i32 @rtc_read_time(ptr noundef %add.ptr, ptr noundef nonnull %tm) #7
  %irq_lock = getelementptr i8, ptr %work, i32 -364
  call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #7
  %stop_uie_polling = getelementptr i8, ptr %work, i32 96
  %1 = ptrtoint ptr %stop_uie_polling to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %stop_uie_polling, align 4
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.else, label %entry.if.end29.thread.sink.split_crit_edge

entry.if.end29.thread.sink.split_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread.sink.split

if.else:                                          ; preds = %entry
  %oldsecs = getelementptr i8, ptr %work, i32 92
  %3 = ptrtoint ptr %oldsecs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oldsecs, align 8
  %5 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp eq i32 %4, %6
  br i1 %cmp.not, label %if.else19, label %if.end29

if.else19:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #7
  br i1 %call.i.i, label %if.else19.if.end29.thread_crit_edge, label %if.then23

if.else19.if.end29.thread_crit_edge:              ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %stop_uie_polling to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load25 = load i8, ptr %stop_uie_polling, align 4
  br label %if.end29.thread.sink.split

if.end29.thread.sink.split:                       ; preds = %if.then23, %entry.if.end29.thread.sink.split_crit_edge
  %bf.load.sink = phi i8 [ %bf.load25, %if.then23 ], [ %bf.load, %entry.if.end29.thread.sink.split_crit_edge ]
  %bf.clear3 = and i8 %bf.load.sink, -33
  %9 = ptrtoint ptr %stop_uie_polling to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear3, ptr %stop_uie_polling, align 4
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.end29.thread.sink.split, %if.else19.if.end29.thread_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #7
  br label %if.end33

if.end29:                                         ; preds = %if.else
  %add = sub i32 60, %4
  %sub = add i32 %add, %6
  %rem = urem i32 %sub, 60
  %10 = ptrtoint ptr %oldsecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %oldsecs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub10 = add i32 %11, 90
  %uie_timer = getelementptr i8, ptr %work, i32 44
  %expires = getelementptr i8, ptr %work, i32 52
  %12 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub10, ptr %expires, align 8
  %bf.set13 = and i8 %bf.load, -49
  %bf.clear16 = or i8 %bf.set13, 16
  %13 = ptrtoint ptr %stop_uie_polling to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear16, ptr %stop_uie_polling, align 4
  call void @add_timer(ptr noundef %uie_timer) #7
  call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool31.not = icmp eq i32 %rem, 0
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtc_handle_legacy_irq(ptr noundef %add.ptr, i32 noundef %rem, i32 noundef 16) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge, %if.end29.thread
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtc_uie_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr i8, ptr %t, i32 -408
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %uie_timer_active = getelementptr i8, ptr %t, i32 52
  %0 = ptrtoint ptr %uie_timer_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %uie_timer_active, align 4
  %bf.clear7 = and i8 %bf.load, -49
  %bf.set8 = or i8 %bf.clear7, 32
  store i8 %bf.set8, ptr %uie_timer_active, align 4
  %uie_task = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %uie_task) #7
  br i1 %call.i.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %uie_timer_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load14 = load i8, ptr %uie_timer_active, align 4
  %bf.clear15 = and i8 %bf.load14, -33
  store i8 %bf.clear15, ptr %uie_timer_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_dev_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @rtc_devt, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_dev_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @rtc_devt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_handle_legacy_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_dev_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i181 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i181 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp2 = icmp ult i32 %count, 4
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_queue = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 9
  call void @add_wait_queue(ptr noundef %irq_queue, ptr noundef nonnull %wait) #7
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %irq_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 8
  %irq_data = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 7
  br label %__here

__here:                                           ; preds = %if.end71, %if.end
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@rtc_dev_read, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %18, align 128
  call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #7
  %20 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_data, align 4
  store i32 0, ptr %irq_data, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp60.not = icmp eq i32 %21, 0
  br i1 %cmp60.not, label %if.end62, label %__here.__here124_crit_edge

__here.__here124_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here124

if.end62:                                         ; preds = %__here
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %if.end65, label %if.end62.__here124_crit_edge

if.end62.__here124_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here124

if.end65:                                         ; preds = %if.end62
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end65.__here124_crit_edge, !prof !47

if.end65.__here124_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here124

signal_pending.exit:                              ; preds = %if.end65
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  %tobool69.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool69.not, label %if.end71, label %signal_pending.exit.__here124_crit_edge

signal_pending.exit.__here124_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here124

if.end71:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @schedule() #7
  br label %__here

__here124:                                        ; preds = %signal_pending.exit.__here124_crit_edge, %if.end65.__here124_crit_edge, %if.end62.__here124_crit_edge, %__here.__here124_crit_edge
  %ret.0 = phi i32 [ -512, %if.end65.__here124_crit_edge ], [ 0, %__here.__here124_crit_edge ], [ -11, %if.end62.__here124_crit_edge ], [ -512, %signal_pending.exit.__here124_crit_edge ]
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %task_state_change128 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 212
  %35 = ptrtoint ptr %task_state_change128 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 ptrtoint (ptr blockaddress(@rtc_dev_read, %__here124) to i32), ptr %task_state_change128, align 4
  %36 = load ptr, ptr %task, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %36, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  call void @remove_wait_queue(ptr noundef %irq_queue, ptr noundef nonnull %wait) #7
  br i1 %cmp60.not, label %__here124.cleanup_crit_edge, label %if.then156

__here124.cleanup_crit_edge:                      ; preds = %__here124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then156:                                       ; preds = %__here124
  call void @__sanitizer_cov_trace_pc() #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 185) #7
  %38 = call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !49
  %and.i = and i32 %40, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %41 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i32 %21, i32 -1226833921) #7, !srcloc !52
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool163.not = icmp eq i32 %41, 0
  %cond = select i1 %tobool163.not, i32 4, i32 %41
  br label %cleanup

cleanup:                                          ; preds = %if.then156, %__here124.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %cond, %if.then156 ], [ %ret.0, %__here124.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_dev_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq_queue = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 9
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %irq_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %file, ptr noundef nonnull %irq_queue, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %irq_data = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %cond = select i1 %cmp.not, i32 0, i32 65
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_dev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %alarm = alloca %struct.rtc_wkalrm, align 4
  %param = alloca %struct.rtc_param, align 8
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ops1 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #7
  %4 = call ptr @memset(ptr %tm, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %alarm) #7
  %5 = call ptr @memset(ptr %alarm, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %param) #7
  %6 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 2
  %8 = inttoptr i32 %arg to ptr
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  %9 = call ptr @memset(ptr %param, i32 255, i32 24)
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup213_crit_edge

entry.cleanup213_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end:                                           ; preds = %entry
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.sw.default198_crit_edge [
    i32 1074032654, label %if.end.sw.bb_crit_edge
    i32 1076129802, label %if.end.sw.bb_crit_edge504
    i32 1075343380, label %if.end.sw.bb_crit_edge505
    i32 1074032652, label %sw.bb5
    i32 28677, label %sw.bb9
    i32 -2145095672, label %sw.bb19
    i32 1076129799, label %if.end.sw.bb29_crit_edge
    i32 -2145095671, label %sw.bb71
    i32 28678, label %sw.bb90
    i32 28673, label %sw.bb92
    i32 28674, label %sw.bb95
    i32 28675, label %sw.bb98
    i32 28676, label %sw.bb101
    i32 -2147192821, label %sw.bb106
    i32 1076391951, label %sw.bb110
    i32 -2144833520, label %sw.bb117
    i32 1075343379, label %if.end.if.end59.i.i399_crit_edge
  ]

if.end.if.end59.i.i399_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i399

if.end.sw.bb29_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end.sw.bb_crit_edge505:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge504:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.default198_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default198

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge504, %if.end.sw.bb_crit_edge505
  %call2 = tail call zeroext i1 @capable(i32 noundef 25) #7
  br i1 %call2, label %if.end18, label %sw.bb.done_crit_edge

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

sw.bb5:                                           ; preds = %if.end
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_user_freq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %arg)
  %cmp = icmp ult i32 %12, %arg
  br i1 %cmp, label %land.lhs.true, label %sw.bb5.sw.bb104_crit_edge

sw.bb5.sw.bb104_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

land.lhs.true:                                    ; preds = %sw.bb5
  %call6 = tail call zeroext i1 @capable(i32 noundef 24) #7
  br i1 %call6, label %land.lhs.true.sw.bb104_crit_edge, label %land.lhs.true.done_crit_edge

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

land.lhs.true.sw.bb104_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

sw.bb9:                                           ; preds = %if.end
  %irq_freq = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %irq_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_freq, align 4
  %max_user_freq10 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %max_user_freq10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_user_freq10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp11 = icmp sgt i32 %14, %16
  br i1 %cmp11, label %sw.epilog, label %sw.bb9.sw.bb88_crit_edge

sw.bb9.sw.bb88_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb88

sw.epilog:                                        ; preds = %sw.bb9
  %call13 = tail call zeroext i1 @capable(i32 noundef 24) #7
  br i1 %call13, label %sw.epilog.sw.bb88_crit_edge, label %sw.epilog.done_crit_edge

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

sw.epilog.sw.bb88_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb88

if.end18:                                         ; preds = %sw.bb
  %17 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %cmd, label %if.end18.sw.default198_crit_edge [
    i32 1075343379, label %if.end18.if.end59.i.i399_crit_edge
    i32 1076129799, label %if.end18.sw.bb29_crit_edge
    i32 1075343380, label %if.end59.i.i435
    i32 1076129802, label %sw.bb81
  ]

if.end18.sw.bb29_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb29

if.end18.if.end59.i.i399_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i399

if.end18.sw.default198_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default198

sw.bb19:                                          ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  %call21 = call i32 @rtc_read_alarm(ptr noundef %1, ptr noundef nonnull %alarm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %sw.bb19.cleanup213_crit_edge, label %if.end24

sw.bb19.cleanup213_crit_edge:                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end24:                                         ; preds = %sw.bb19
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end24.cleanup213_crit_edge, label %if.end.i.i

if.end24.cleanup213_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end.i.i:                                       ; preds = %if.end24
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 36, i32 -1226833920) #11, !srcloc !53
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup213_crit_edge

if.end.i.i.cleanup213_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %time, i32 noundef 36) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %time, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool26.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool26.not, i32 %call21, i32 -14
  br label %cleanup213

sw.bb29:                                          ; preds = %if.end18.sw.bb29_crit_edge, %if.end.sw.bb29_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  %time31 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i318 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i318, label %sw.bb29.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb29.if.then11.i.i_crit_edge:                  ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb29
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 36, i32 -1226833920) #11, !srcloc !54
  %asmresult.i.i319 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i319)
  %cmp.i6.i320 = icmp eq i32 %asmresult.i.i319, 0
  br i1 %cmp.i6.i320, label %if.end.i.i322, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !47

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i322:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i321 = call zeroext i1 @__kasan_check_write(ptr noundef %time31, i32 noundef 36) #7
  %20 = call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !49
  %and.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %time31, ptr noundef %8, i32 noundef 36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end35, label %if.end.i.i322.if.then11.i.i_crit_edge, !prof !47

if.end.i.i322.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i322
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i322.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb29.if.then11.i.i_crit_edge
  %res.0.i.i462 = phi i32 [ %call1.i.i.i, %if.end.i.i322.if.then11.i.i_crit_edge ], [ 36, %sw.bb29.if.then11.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 36, %res.0.i.i462
  %add.ptr.i.i = getelementptr i8, ptr %time31, i32 %sub.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i462)
  br label %cleanup213

if.end35:                                         ; preds = %if.end.i.i322
  %24 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %alarm, align 4
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %25 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %pending, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %tm_wday, align 4
  %tm_yday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 7
  %27 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %tm_yday, align 4
  %tm_isdst = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 8
  %28 = ptrtoint ptr %tm_isdst to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %tm_isdst, align 4
  %call39 = call i32 @rtc_read_time(ptr noundef %1, ptr noundef nonnull %tm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end35.cleanup213_crit_edge, label %if.end42

if.end35.cleanup213_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end42:                                         ; preds = %if.end35
  %call43 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #7
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_mday, align 4
  %tm_mday45 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %tm_mday45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tm_mday45, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_mon, align 4
  %tm_mon47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %tm_mon47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tm_mon47, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %35 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_year, align 4
  %tm_year49 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %tm_year49 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tm_year49, align 4
  %call51 = call i32 @rtc_valid_tm(ptr noundef %time31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end42.cleanup213_crit_edge, label %if.end54

if.end42.cleanup213_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end54:                                         ; preds = %if.end42
  %call56 = call i64 @rtc_tm_to_time64(ptr noundef %time31) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call56, i64 %call43)
  %cmp57 = icmp slt i64 %call56, %call43
  br i1 %cmp57, label %if.then58, label %if.end54.cleanup.cont_crit_edge

if.end54.cleanup.cont_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.cont

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i64 %call43, 86400
  call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef nonnull %tm) #7
  %38 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mday, align 4
  %40 = ptrtoint ptr %tm_mday45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tm_mday45, align 4
  %41 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mon, align 4
  %43 = ptrtoint ptr %tm_mon47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tm_mon47, align 4
  %44 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_year, align 4
  %46 = ptrtoint ptr %tm_year49 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tm_year49, align 4
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then58, %if.end54.cleanup.cont_crit_edge
  %call70 = call i32 @rtc_set_alarm(ptr noundef %1, ptr noundef nonnull %alarm) #7
  br label %cleanup213

sw.bb71:                                          ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  %call73 = call i32 @rtc_read_time(ptr noundef %1, ptr noundef nonnull %tm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %sw.bb71.cleanup213_crit_edge, label %if.end59.i.i327

sw.bb71.cleanup213_crit_edge:                     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end59.i.i327:                                  ; preds = %sw.bb71
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i328 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i328, label %if.end59.i.i327.cleanup213_crit_edge, label %if.end.i.i331

if.end59.i.i327.cleanup213_crit_edge:             ; preds = %if.end59.i.i327
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end.i.i331:                                    ; preds = %if.end59.i.i327
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 36, i32 -1226833920) #11, !srcloc !53
  %asmresult.i.i329 = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i329)
  %cmp.i6.i330 = icmp eq i32 %asmresult.i.i329, 0
  br i1 %cmp.i6.i330, label %copy_to_user.exit336, label %if.end.i.i331.cleanup213_crit_edge

if.end.i.i331.cleanup213_crit_edge:               ; preds = %if.end.i.i331
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

copy_to_user.exit336:                             ; preds = %if.end.i.i331
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i332 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tm, i32 noundef 36) #7
  %call.i12.i.i333 = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %tm, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i333)
  %tobool78.not = icmp eq i32 %call.i12.i.i333, 0
  %spec.select501 = select i1 %tobool78.not, i32 %call73, i32 -14
  br label %cleanup213

sw.bb81:                                          ; preds = %if.end18
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i341 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i341, label %sw.bb81.if.then11.i.i357_crit_edge, label %land.lhs.true.i.i344

sw.bb81.if.then11.i.i357_crit_edge:               ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i357

land.lhs.true.i.i344:                             ; preds = %sw.bb81
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 36, i32 -1226833920) #11, !srcloc !54
  %asmresult.i.i342 = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i342)
  %cmp.i6.i343 = icmp eq i32 %asmresult.i.i342, 0
  br i1 %cmp.i6.i343, label %if.end.i.i354, label %land.lhs.true.i.i344.if.then11.i.i357_crit_edge, !prof !47

land.lhs.true.i.i344.if.then11.i.i357_crit_edge:  ; preds = %land.lhs.true.i.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i357

if.end.i.i354:                                    ; preds = %land.lhs.true.i.i344
  %call.i.i.i345 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tm, i32 noundef 36) #7
  %49 = call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i.i346 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i.i346 to ptr
  %cpu_domain.i.i.i.i.i347 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i347) #5, !srcloc !49
  %and.i.i.i.i348 = and i32 %51, -13
  %or.i.i.i.i349 = or i32 %and.i.i.i.i348, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i349) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i350 = call i32 @arm_copy_from_user(ptr noundef nonnull %tm, ptr noundef %8, i32 noundef 36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i350)
  %tobool4.not.i.i353 = icmp eq i32 %call1.i.i.i350, 0
  br i1 %tobool4.not.i.i353, label %if.end86, label %if.end.i.i354.if.then11.i.i357_crit_edge, !prof !47

if.end.i.i354.if.then11.i.i357_crit_edge:         ; preds = %if.end.i.i354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i357

if.then11.i.i357:                                 ; preds = %if.end.i.i354.if.then11.i.i357_crit_edge, %land.lhs.true.i.i344.if.then11.i.i357_crit_edge, %sw.bb81.if.then11.i.i357_crit_edge
  %res.0.i.i352471 = phi i32 [ %call1.i.i.i350, %if.end.i.i354.if.then11.i.i357_crit_edge ], [ 36, %sw.bb81.if.then11.i.i357_crit_edge ], [ 36, %land.lhs.true.i.i344.if.then11.i.i357_crit_edge ]
  %sub.i.i355 = sub i32 36, %res.0.i.i352471
  %add.ptr.i.i356 = getelementptr i8, ptr %tm, i32 %sub.i.i355
  %52 = call ptr @memset(ptr %add.ptr.i.i356, i32 0, i32 %res.0.i.i352471)
  br label %cleanup213

if.end86:                                         ; preds = %if.end.i.i354
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = call i32 @rtc_set_time(ptr noundef %1, ptr noundef nonnull %tm) #7
  br label %cleanup213

sw.bb88:                                          ; preds = %sw.epilog.sw.bb88_crit_edge, %sw.bb9.sw.bb88_crit_edge
  %call89 = tail call i32 @rtc_irq_set_state(ptr noundef %1, i32 noundef 1) #7
  br label %done

sw.bb90:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = tail call i32 @rtc_irq_set_state(ptr noundef %1, i32 noundef 0) #7
  br label %done

sw.bb92:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  %call94 = tail call i32 @rtc_alarm_irq_enable(ptr noundef %1, i32 noundef 1) #7
  br label %cleanup213

sw.bb95:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  %call97 = tail call i32 @rtc_alarm_irq_enable(ptr noundef %1, i32 noundef 0) #7
  br label %cleanup213

sw.bb98:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  %call100 = tail call i32 @rtc_update_irq_enable(ptr noundef %1, i32 noundef 1) #7
  br label %cleanup213

sw.bb101:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  %call103 = tail call i32 @rtc_update_irq_enable(ptr noundef %1, i32 noundef 0) #7
  br label %cleanup213

sw.bb104:                                         ; preds = %land.lhs.true.sw.bb104_crit_edge, %sw.bb5.sw.bb104_crit_edge
  %call105 = tail call i32 @rtc_irq_set_freq(ptr noundef %1, i32 noundef %arg) #7
  br label %done

sw.bb106:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_freq107 = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 11
  %53 = ptrtoint ptr %irq_freq107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq_freq107, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 367) #7
  %55 = tail call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 4
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !49
  %and.i = and i32 %57, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %58 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %54, i32 -1226833921) #7, !srcloc !55
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %done

sw.bb110:                                         ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i364 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i364, label %sw.bb110.if.then11.i.i380_crit_edge, label %land.lhs.true.i.i367

sw.bb110.if.then11.i.i380_crit_edge:              ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i380

land.lhs.true.i.i367:                             ; preds = %sw.bb110
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 40, i32 -1226833920) #11, !srcloc !54
  %asmresult.i.i365 = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i365)
  %cmp.i6.i366 = icmp eq i32 %asmresult.i.i365, 0
  br i1 %cmp.i6.i366, label %if.end.i.i377, label %land.lhs.true.i.i367.if.then11.i.i380_crit_edge, !prof !47

land.lhs.true.i.i367.if.then11.i.i380_crit_edge:  ; preds = %land.lhs.true.i.i367
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i380

if.end.i.i377:                                    ; preds = %land.lhs.true.i.i367
  %call.i.i.i368 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %alarm, i32 noundef 40) #7
  %60 = call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i.i369 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i369 to ptr
  %cpu_domain.i.i.i.i.i370 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i370) #5, !srcloc !49
  %and.i.i.i.i371 = and i32 %62, -13
  %or.i.i.i.i372 = or i32 %and.i.i.i.i371, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i372) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i373 = call i32 @arm_copy_from_user(ptr noundef nonnull %alarm, ptr noundef %8, i32 noundef 40) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i373)
  %tobool4.not.i.i376 = icmp eq i32 %call1.i.i.i373, 0
  br i1 %tobool4.not.i.i376, label %if.end115, label %if.end.i.i377.if.then11.i.i380_crit_edge, !prof !47

if.end.i.i377.if.then11.i.i380_crit_edge:         ; preds = %if.end.i.i377
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i380

if.then11.i.i380:                                 ; preds = %if.end.i.i377.if.then11.i.i380_crit_edge, %land.lhs.true.i.i367.if.then11.i.i380_crit_edge, %sw.bb110.if.then11.i.i380_crit_edge
  %res.0.i.i375476 = phi i32 [ %call1.i.i.i373, %if.end.i.i377.if.then11.i.i380_crit_edge ], [ 40, %sw.bb110.if.then11.i.i380_crit_edge ], [ 40, %land.lhs.true.i.i367.if.then11.i.i380_crit_edge ]
  %sub.i.i378 = sub i32 40, %res.0.i.i375476
  %add.ptr.i.i379 = getelementptr i8, ptr %alarm, i32 %sub.i.i378
  %63 = call ptr @memset(ptr %add.ptr.i.i379, i32 0, i32 %res.0.i.i375476)
  br label %cleanup213

if.end115:                                        ; preds = %if.end.i.i377
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = call i32 @rtc_set_alarm(ptr noundef %1, ptr noundef nonnull %alarm) #7
  br label %cleanup213

sw.bb117:                                         ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef %ops_lock) #7
  %call119 = call i32 @rtc_read_alarm(ptr noundef %1, ptr noundef nonnull %alarm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %sw.bb117.cleanup213_crit_edge, label %if.end59.i.i386

sw.bb117.cleanup213_crit_edge:                    ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end59.i.i386:                                  ; preds = %sw.bb117
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i387 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i387, label %if.end59.i.i386.cleanup213_crit_edge, label %if.end.i.i390

if.end59.i.i386.cleanup213_crit_edge:             ; preds = %if.end59.i.i386
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end.i.i390:                                    ; preds = %if.end59.i.i386
  %64 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 40, i32 -1226833920) #11, !srcloc !53
  %asmresult.i.i388 = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i388)
  %cmp.i6.i389 = icmp eq i32 %asmresult.i.i388, 0
  br i1 %cmp.i6.i389, label %copy_to_user.exit395, label %if.end.i.i390.cleanup213_crit_edge

if.end.i.i390.cleanup213_crit_edge:               ; preds = %if.end.i.i390
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

copy_to_user.exit395:                             ; preds = %if.end.i.i390
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i391 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %alarm, i32 noundef 40) #7
  %call.i12.i.i392 = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %alarm, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i392)
  %tobool124.not = icmp eq i32 %call.i12.i.i392, 0
  %spec.select502 = select i1 %tobool124.not, i32 %call119, i32 -14
  br label %cleanup213

if.end59.i.i399:                                  ; preds = %if.end18.if.end59.i.i399_crit_edge, %if.end.if.end59.i.i399_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i400 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i400, label %if.end59.i.i399.if.then11.i.i416_crit_edge, label %land.lhs.true.i.i403

if.end59.i.i399.if.then11.i.i416_crit_edge:       ; preds = %if.end59.i.i399
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i416

land.lhs.true.i.i403:                             ; preds = %if.end59.i.i399
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 24, i32 -1226833920) #11
  %asmresult.i.i401 = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i401)
  %cmp.i6.i402 = icmp eq i32 %asmresult.i.i401, 0
  br i1 %cmp.i6.i402, label %if.end.i.i413, label %land.lhs.true.i.i403.if.then11.i.i416_crit_edge, !prof !47

land.lhs.true.i.i403.if.then11.i.i416_crit_edge:  ; preds = %land.lhs.true.i.i403
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i416

if.end.i.i413:                                    ; preds = %land.lhs.true.i.i403
  %call.i.i.i404 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %param, i32 noundef 24) #7
  %66 = call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i.i405 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i405 to ptr
  %cpu_domain.i.i.i.i.i406 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i406) #5, !srcloc !49
  %and.i.i.i.i407 = and i32 %68, -13
  %or.i.i.i.i408 = or i32 %and.i.i.i.i407, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i408) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i409 = call i32 @arm_copy_from_user(ptr noundef nonnull %param, ptr noundef %8, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i409)
  %tobool4.not.i.i412 = icmp eq i32 %call1.i.i.i409, 0
  br i1 %tobool4.not.i.i412, label %if.end132, label %if.end.i.i413.if.then11.i.i416_crit_edge, !prof !47

if.end.i.i413.if.then11.i.i416_crit_edge:         ; preds = %if.end.i.i413
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i416

if.then11.i.i416:                                 ; preds = %if.end.i.i413.if.then11.i.i416_crit_edge, %land.lhs.true.i.i403.if.then11.i.i416_crit_edge, %if.end59.i.i399.if.then11.i.i416_crit_edge
  %res.0.i.i411483 = phi i32 [ %call1.i.i.i409, %if.end.i.i413.if.then11.i.i416_crit_edge ], [ 24, %if.end59.i.i399.if.then11.i.i416_crit_edge ], [ 24, %land.lhs.true.i.i403.if.then11.i.i416_crit_edge ]
  %sub.i.i414 = sub i32 24, %res.0.i.i411483
  %add.ptr.i.i415 = getelementptr i8, ptr %param, i32 %sub.i.i414
  %69 = call ptr @memset(ptr %add.ptr.i.i415, i32 0, i32 %res.0.i.i411483)
  call void @mutex_unlock(ptr noundef %ops_lock) #7
  br label %cleanup213

if.end132:                                        ; preds = %if.end.i.i413
  %70 = ptrtoint ptr %param to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %param, align 8
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.15)
  switch i64 %71, label %sw.default [
    i64 0, label %sw.bb134
    i64 1, label %sw.bb138
  ]

sw.bb134:                                         ; preds = %if.end132
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp135.not = icmp eq i32 %73, 0
  %features = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 21
  %74 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %features, align 8
  %conv = zext i32 %75 to i64
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv, ptr %6, align 8
  br i1 %cmp135.not, label %sw.bb134.if.end59.i.i422_crit_edge, label %sw.bb134.done_crit_edge

sw.bb134.done_crit_edge:                          ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

sw.bb134.if.end59.i.i422_crit_edge:               ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i422

sw.bb138:                                         ; preds = %if.end132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #7
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %offset, align 4, !annotation !56
  call void @mutex_unlock(ptr noundef %ops_lock) #7
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp141.not = icmp eq i32 %79, 0
  br i1 %cmp141.not, label %if.end144, label %cleanup152

if.end144:                                        ; preds = %sw.bb138
  %call145 = call i32 @rtc_read_offset(ptr noundef %1, ptr noundef nonnull %offset) #7
  call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp147 = icmp eq i32 %call145, 0
  br i1 %cmp147, label %if.then149, label %if.end144.cleanup152.thread_crit_edge

if.end144.cleanup152.thread_crit_edge:            ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup152.thread

if.then149:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset, align 4
  %conv150 = sext i32 %81 to i64
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv150, ptr %6, align 8
  br label %cleanup152.thread

cleanup152.thread:                                ; preds = %if.then149, %if.end144.cleanup152.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #7
  br label %sw.epilog161

cleanup152:                                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #7
  br label %cleanup213

sw.default:                                       ; preds = %if.end132
  %83 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops1, align 8
  %param_get = getelementptr inbounds %struct.rtc_class_ops, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %param_get to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %param_get, align 4
  %tobool155.not = icmp eq ptr %86, null
  br i1 %tobool155.not, label %sw.default.done_crit_edge, label %if.then156

sw.default.done_crit_edge:                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then156:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %87 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %parent, align 8
  %call159 = call i32 %86(ptr noundef %88, ptr noundef nonnull %param) #7
  br label %sw.epilog161

sw.epilog161:                                     ; preds = %if.then156, %cleanup152.thread
  %err.6 = phi i32 [ %call159, %if.then156 ], [ %call145, %cleanup152.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.6)
  %tobool162.not = icmp eq i32 %err.6, 0
  br i1 %tobool162.not, label %sw.epilog161.if.end59.i.i422_crit_edge, label %sw.epilog161.done_crit_edge

sw.epilog161.done_crit_edge:                      ; preds = %sw.epilog161
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

sw.epilog161.if.end59.i.i422_crit_edge:           ; preds = %sw.epilog161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i422

if.end59.i.i422:                                  ; preds = %sw.epilog161.if.end59.i.i422_crit_edge, %sw.bb134.if.end59.i.i422_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i423 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i423, label %if.end59.i.i422.done_crit_edge, label %copy_to_user.exit431

if.end59.i.i422.done_crit_edge:                   ; preds = %if.end59.i.i422
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

copy_to_user.exit431:                             ; preds = %if.end59.i.i422
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i427 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %param, i32 noundef 24) #7
  %call.i12.i.i428 = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %param, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i428)
  %tobool165.not = icmp eq i32 %call.i12.i.i428, 0
  %spec.select503 = select i1 %tobool165.not, i32 0, i32 -14
  br label %done

if.end59.i.i435:                                  ; preds = %if.end18
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i436 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i436, label %if.end59.i.i435.if.then11.i.i452_crit_edge, label %land.lhs.true.i.i439

if.end59.i.i435.if.then11.i.i452_crit_edge:       ; preds = %if.end59.i.i435
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i452

land.lhs.true.i.i439:                             ; preds = %if.end59.i.i435
  %89 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 24, i32 -1226833920) #11, !srcloc !54
  %asmresult.i.i437 = extractvalue { i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i437)
  %cmp.i6.i438 = icmp eq i32 %asmresult.i.i437, 0
  br i1 %cmp.i6.i438, label %if.end.i.i449, label %land.lhs.true.i.i439.if.then11.i.i452_crit_edge, !prof !47

land.lhs.true.i.i439.if.then11.i.i452_crit_edge:  ; preds = %land.lhs.true.i.i439
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i452

if.end.i.i449:                                    ; preds = %land.lhs.true.i.i439
  %call.i.i.i440 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %param, i32 noundef 24) #7
  %90 = call i32 @llvm.read_register.i32(metadata !36) #7
  %and.i.i.i.i.i.i441 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i.i441 to ptr
  %cpu_domain.i.i.i.i.i442 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 4
  %92 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i442) #5, !srcloc !49
  %and.i.i.i.i443 = and i32 %92, -13
  %or.i.i.i.i444 = or i32 %and.i.i.i.i443, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i444) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i445 = call i32 @arm_copy_from_user(ptr noundef nonnull %param, ptr noundef %8, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i445)
  %tobool4.not.i.i448 = icmp eq i32 %call1.i.i.i445, 0
  br i1 %tobool4.not.i.i448, label %if.end174, label %if.end.i.i449.if.then11.i.i452_crit_edge, !prof !47

if.end.i.i449.if.then11.i.i452_crit_edge:         ; preds = %if.end.i.i449
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i452

if.then11.i.i452:                                 ; preds = %if.end.i.i449.if.then11.i.i452_crit_edge, %land.lhs.true.i.i439.if.then11.i.i452_crit_edge, %if.end59.i.i435.if.then11.i.i452_crit_edge
  %res.0.i.i447496 = phi i32 [ %call1.i.i.i445, %if.end.i.i449.if.then11.i.i452_crit_edge ], [ 24, %if.end59.i.i435.if.then11.i.i452_crit_edge ], [ 24, %land.lhs.true.i.i439.if.then11.i.i452_crit_edge ]
  %sub.i.i450 = sub i32 24, %res.0.i.i447496
  %add.ptr.i.i451 = getelementptr i8, ptr %param, i32 %sub.i.i450
  %93 = call ptr @memset(ptr %add.ptr.i.i451, i32 0, i32 %res.0.i.i447496)
  call void @mutex_unlock(ptr noundef %ops_lock) #7
  br label %cleanup213

if.end174:                                        ; preds = %if.end.i.i449
  %94 = ptrtoint ptr %param to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %param, align 8
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.16)
  switch i64 %95, label %sw.default186 [
    i64 0, label %if.end174.done_crit_edge
    i64 1, label %sw.bb177
  ]

if.end174.done_crit_edge:                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

sw.bb177:                                         ; preds = %if.end174
  call void @mutex_unlock(ptr noundef %ops_lock) #7
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp180.not = icmp eq i32 %97, 0
  br i1 %cmp180.not, label %if.end183, label %sw.bb177.cleanup213_crit_edge

sw.bb177.cleanup213_crit_edge:                    ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup213

if.end183:                                        ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %6, align 8
  %conv184 = trunc i64 %99 to i32
  %call185 = call i32 @rtc_set_offset(ptr noundef %1, i32 noundef %conv184) #7
  br label %cleanup213

sw.default186:                                    ; preds = %if.end174
  %100 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops1, align 8
  %param_set = getelementptr inbounds %struct.rtc_class_ops, ptr %101, i32 0, i32 10
  %102 = ptrtoint ptr %param_set to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %param_set, align 4
  %tobool188.not = icmp eq ptr %103, null
  br i1 %tobool188.not, label %sw.default186.done_crit_edge, label %if.then189

sw.default186.done_crit_edge:                     ; preds = %sw.default186
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then189:                                       ; preds = %sw.default186
  call void @__sanitizer_cov_trace_pc() #9
  %parent193 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %parent193 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %parent193, align 8
  %call194 = call i32 %103(ptr noundef %105, ptr noundef nonnull %param) #7
  br label %done

sw.default198:                                    ; preds = %if.end18.sw.default198_crit_edge, %if.end.sw.default198_crit_edge
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %3, align 4
  %tobool199.not = icmp eq ptr %107, null
  br i1 %tobool199.not, label %sw.default198.done_crit_edge, label %if.then200

sw.default198.done_crit_edge:                     ; preds = %sw.default198
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then200:                                       ; preds = %sw.default198
  call void @__sanitizer_cov_trace_pc() #9
  %parent203 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %108 = ptrtoint ptr %parent203 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %parent203, align 8
  %call204 = tail call i32 %107(ptr noundef %109, i32 noundef %cmd, i32 noundef %arg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call204)
  %cmp205 = icmp eq i32 %call204, -515
  %spec.store.select = select i1 %cmp205, i32 -25, i32 %call204
  br label %done

done:                                             ; preds = %if.then200, %sw.default198.done_crit_edge, %if.then189, %sw.default186.done_crit_edge, %if.end174.done_crit_edge, %copy_to_user.exit431, %if.end59.i.i422.done_crit_edge, %sw.epilog161.done_crit_edge, %sw.default.done_crit_edge, %sw.bb134.done_crit_edge, %sw.bb106, %sw.bb104, %sw.bb90, %sw.bb88, %sw.epilog.done_crit_edge, %land.lhs.true.done_crit_edge, %sw.bb.done_crit_edge
  %err.7 = phi i32 [ -13, %sw.epilog.done_crit_edge ], [ %spec.store.select, %if.then200 ], [ %call194, %if.then189 ], [ %err.6, %sw.epilog161.done_crit_edge ], [ %58, %sw.bb106 ], [ %call105, %sw.bb104 ], [ %call91, %sw.bb90 ], [ %call89, %sw.bb88 ], [ -22, %if.end174.done_crit_edge ], [ -22, %sw.default186.done_crit_edge ], [ -25, %sw.default198.done_crit_edge ], [ -13, %sw.bb.done_crit_edge ], [ -13, %land.lhs.true.done_crit_edge ], [ -22, %sw.bb134.done_crit_edge ], [ -22, %sw.default.done_crit_edge ], [ -14, %if.end59.i.i422.done_crit_edge ], [ %spec.select503, %copy_to_user.exit431 ]
  call void @mutex_unlock(ptr noundef %ops_lock) #7
  br label %cleanup213

cleanup213:                                       ; preds = %done, %if.end183, %sw.bb177.cleanup213_crit_edge, %if.then11.i.i452, %cleanup152, %if.then11.i.i416, %copy_to_user.exit395, %if.end.i.i390.cleanup213_crit_edge, %if.end59.i.i386.cleanup213_crit_edge, %sw.bb117.cleanup213_crit_edge, %if.end115, %if.then11.i.i380, %sw.bb101, %sw.bb98, %sw.bb95, %sw.bb92, %if.end86, %if.then11.i.i357, %copy_to_user.exit336, %if.end.i.i331.cleanup213_crit_edge, %if.end59.i.i327.cleanup213_crit_edge, %sw.bb71.cleanup213_crit_edge, %cleanup.cont, %if.end42.cleanup213_crit_edge, %if.end35.cleanup213_crit_edge, %if.then11.i.i, %copy_to_user.exit, %if.end.i.i.cleanup213_crit_edge, %if.end24.cleanup213_crit_edge, %sw.bb19.cleanup213_crit_edge, %entry.cleanup213_crit_edge
  %retval.2 = phi i32 [ %err.7, %done ], [ -14, %if.then11.i.i452 ], [ %call185, %if.end183 ], [ -14, %if.then11.i.i416 ], [ -22, %cleanup152 ], [ %call116, %if.end115 ], [ %call103, %sw.bb101 ], [ %call100, %sw.bb98 ], [ %call97, %sw.bb95 ], [ %call94, %sw.bb92 ], [ %call87, %if.end86 ], [ %call70, %cleanup.cont ], [ %call, %entry.cleanup213_crit_edge ], [ %call21, %sw.bb19.cleanup213_crit_edge ], [ %call73, %sw.bb71.cleanup213_crit_edge ], [ %call119, %sw.bb117.cleanup213_crit_edge ], [ -22, %sw.bb177.cleanup213_crit_edge ], [ %call39, %if.end35.cleanup213_crit_edge ], [ %call51, %if.end42.cleanup213_crit_edge ], [ -14, %if.end24.cleanup213_crit_edge ], [ -14, %if.end.i.i.cleanup213_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i327.cleanup213_crit_edge ], [ -14, %if.end.i.i331.cleanup213_crit_edge ], [ -14, %if.then11.i.i357 ], [ -14, %if.then11.i.i380 ], [ -14, %if.end59.i.i386.cleanup213_crit_edge ], [ -14, %if.end.i.i390.cleanup213_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select501, %copy_to_user.exit336 ], [ %spec.select502, %copy_to_user.exit395 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %param) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %alarm) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_dev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %flags = getelementptr i8, ptr %2, i32 160
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #7
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

test_and_set_bit_lock.exit:                       ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 1, ptr elementtype(i32) %flags) #7, !srcloc !57
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %and1.i.i = and i32 %asmresult.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %phi.cmp.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %phi.cmp.i.not, label %if.end, label %test_and_set_bit_lock.exit.cleanup_crit_edge

test_and_set_bit_lock.exit.cleanup_crit_edge:     ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %2, i32 -1032
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %private_data, align 4
  %irq_lock = getelementptr i8, ptr %2, i32 168
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #7
  %irq_data = getelementptr i8, ptr %2, i32 164
  %7 = ptrtoint ptr %irq_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %irq_data, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %test_and_set_bit_lock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %test_and_set_bit_lock.exit.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_dev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.rtc_dev_ioctl.exit_crit_edge

entry.rtc_dev_ioctl.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtc_dev_ioctl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #7
  %call103.i = tail call i32 @rtc_update_irq_enable(ptr noundef %1, i32 noundef 0) #7
  br label %rtc_dev_ioctl.exit

rtc_dev_ioctl.exit:                               ; preds = %if.end.i, %entry.rtc_dev_ioctl.exit_crit_edge
  %call1 = tail call i32 @rtc_update_irq_enable(ptr noundef %1, i32 noundef 0) #7
  %call2 = tail call i32 @rtc_irq_set_state(ptr noundef %1, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 1, ptr elementtype(i32) %flags) #7, !srcloc !60
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_dev_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 10
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %async_queue) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_alarm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_alarm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_irq_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_alarm_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_update_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_irq_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__ksymtab_rtc_dev_update_irq_enable_emul, !1, !"__ksymtab_rtc_dev_update_irq_enable_emul", i1 false, i1 false}
!1 = !{!"../drivers/rtc/dev.c", i32 137, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/rtc/dev.c", i32 546, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rtc_dev_prepare.__UNIQUE_ID_ddebug231, !3, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!8 = !{ptr @rtc_dev_prepare.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/rtc/dev.c", i32 553, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtc_dev_prepare.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/rtc/dev.c", i32 554, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/dev.c", i32 565, i32 55}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/dev.c", i32 567, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rtc_dev_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @rtc_dev_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @rtc_devt, !22, !"rtc_devt", i1 false, i1 false}
!22 = !{!"../drivers/rtc/dev.c", i32 19, i32 14}
!23 = !{ptr @rtc_dev_fops, !24, !"rtc_dev_fops", i1 false, i1 false}
!24 = !{!"../drivers/rtc/dev.c", i32 524, i32 37}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/rtc/dev.c", i32 155, i32 3}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/rtc/dev.c", i32 176, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148943274, i64 2148943279, i64 2148943292, i64 2148943336, i64 2148943370, i64 2148943391}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2153914380}
!49 = !{i64 4770098}
!50 = !{i64 4770295}
!51 = !{i64 2152255528}
!52 = !{i64 2153929248, i64 2153929528, i64 2153929862, i64 2153930196}
!53 = !{i64 2152275224, i64 2152275249}
!54 = !{i64 2152274543, i64 2152274568}
!55 = !{i64 2153949242, i64 2153949522, i64 2153949856, i64 2153950190}
!56 = !{!"auto-init"}
!57 = !{i64 2148252202, i64 2148252234, i64 2148252263, i64 2148252297, i64 2148252328, i64 2148252351}
!58 = !{i64 2148341283}
!59 = !{i64 2148340170}
!60 = !{i64 2148250589, i64 2148250621, i64 2148250650, i64 2148250684, i64 2148250715, i64 2148250738}
