; ModuleID = '/llk/IR_all_yes/drivers/media/rc/lirc_dev.c_pt.bc'
source_filename = "../drivers/media/rc/lirc_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lirc_scancode_event\22, \22a\22\09"
module asm "\09.weak\09__crc_lirc_scancode_event\09\09\09\09"
module asm "\09.long\09__crc_lirc_scancode_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lirc_scancode_event:\09\09\09\09\09"
module asm "\09.asciz \09\22lirc_scancode_event\22\09\09\09\09\09"
module asm "__kstrtabns_lirc_scancode_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lirc_fh = type { %struct.list_head, ptr, i32, %struct.anon.75, %struct.anon.77, %struct.wait_queue_head, i8, i8 }
%struct.anon.75 = type { %union.anon.76, [0 x i32] }
%union.anon.76 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.anon.77 = type { %union.anon.78, [0 x %struct.lirc_scancode] }
%union.anon.78 = type { %struct.__kfifo }
%struct.lirc_scancode = type { i64, i16, i16, i32, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { %union.anon.69, i8, i8 }
%union.anon.69 = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.74 = type { ptr }

@lirc_raw_event.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rc_core\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lirc_raw_event\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/rc/lirc_dev.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"delivering reset sync space to lirc_dev\0A\00", [55 x i8] zeroinitializer }, align 32
@lirc_raw_event.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"carrier report (freq: %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@lirc_raw_event.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout report (duration: %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@lirc_raw_event.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"delivering %uus %s to lirc_dev\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_lirc_scancode_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_lirc_scancode_event = external dso_local constant [0 x i8], align 1
@__ksymtab_lirc_scancode_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lirc_scancode_event to i32), ptr @__kstrtab_lirc_scancode_event, ptr @__kstrtabns_lirc_scancode_event }, section "___ksymtab_gpl+lirc_scancode_event", align 4
@lirc_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@lirc_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lirc_base_dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lirc%d\00", [25 x i8] zeroinitializer }, align 32
@lirc_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->lirc_fh_lock\00", [45 x i8] zeroinitializer }, align 32
@lirc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @lirc_read, ptr @lirc_transmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lirc_poll, ptr @lirc_ioctl, ptr null, ptr null, i32 0, ptr @lirc_open, ptr null, ptr @lirc_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scancode\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"raw IR\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@lirc_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 766, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"lirc_dev: driver %s registered at minor = %d, %s receiver, %s transmitter\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lirc_register\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lirc_register._entry_ptr = internal global ptr @lirc_register._entry, section ".printk_index", align 4
@lirc_unregister.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lirc_unregister\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lirc_dev: driver %s unregistered from minor = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@lirc_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lirc\00", [27 x i8] zeroinitializer }, align 32
@lirc_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013rc_core: class_create failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lirc_dev_init\00", [18 x i8] zeroinitializer }, align 32
@lirc_dev_init._entry_ptr = internal global ptr @lirc_dev_init._entry, section ".printk_index", align 4
@lirc_dev_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013rc_core: alloc_chrdev_region failed\0A\00", [57 x i8] zeroinitializer }, align 32
@lirc_dev_init._entry_ptr.25 = internal global ptr @lirc_dev_init._entry.23, section ".printk_index", align 4
@lirc_dev_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.26, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"IR Remote Control driver registered, major %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"rc_core: IR Remote Control driver registered, major %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias237 = internal constant [23 x i8] c"rc_core.alias=lirc_dev\00", section ".modinfo", align 1
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lirc_ida.xa_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lirc_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fh->wait_poll\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 8]
@__sancov_gen_cov_switch_values.33 = internal global [20 x i64] [i64 18, i64 32, i64 1074030865, i64 1074030866, i64 1074030867, i64 1074030868, i64 1074030869, i64 1074030871, i64 1074030872, i64 1074030873, i64 1074030877, i64 1074030879, i64 1074030883, i64 2147772672, i64 2147772673, i64 2147772674, i64 2147772679, i64 2147772680, i64 2147772681, i64 2147772708]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 54, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 59, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 71, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 93, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"lirc_ida\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"lirc_class\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 30, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"lirc_base_dev\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 24, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 735, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 738, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"lirc_fops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 702, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 750, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 753, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 756, i32 13 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 765, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 780, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 796, i32 15 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 798, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 805, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 809, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 27, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 156, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [31 x i8] c"../drivers/media/rc/lirc_dev.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 177, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__ksymtab_lirc_scancode_event, ptr @lirc_dev_exit, ptr @lirc_dev_init._entry, ptr @lirc_dev_init._entry.23, ptr @lirc_dev_init._entry_ptr, ptr @lirc_dev_init._entry_ptr.25, ptr @lirc_register._entry, ptr @lirc_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @lirc_ida, ptr @lirc_class, ptr @lirc_base_dev, ptr @.str.9, ptr @lirc_register.__key, ptr @.str.10, ptr @lirc_fops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @lirc_dev_init.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @lirc_open.__key, ptr @.str.32], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_base_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_dev_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lirc_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lirc_raw_event(ptr noundef %dev, [2 x i32] %ev.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %0 = and i32 %ev.coerce.fca.1.extract, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lirc_raw_event.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lirc_raw_event, %if.then4)) #9
          to label %if.end165 [label %if.then4], !srcloc !90

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lirc_raw_event.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %if.end165

if.else:                                          ; preds = %entry
  %1 = and i32 %ev.coerce.fca.1.extract, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool10.not = icmp eq i32 %1, 0
  br i1 %tobool10.not, label %if.else29, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %ev.coerce.fca.0.extract, 16777215
  %or = or i32 %and, 33554432
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lirc_raw_event.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lirc_raw_event, %if.then24)) #9
          to label %if.end165 [label %if.then24], !srcloc !90

if.then24:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lirc_raw_event.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %or) #9
  br label %if.end165

if.else29:                                        ; preds = %if.else
  %2 = and i32 %ev.coerce.fca.1.extract, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool34.not = icmp eq i32 %2, 0
  %gap61 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 43
  %3 = ptrtoint ptr %gap61 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gap61, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool62.not = icmp eq i8 %4, 0
  br i1 %tobool34.not, label %if.else60, label %if.then35

if.then35:                                        ; preds = %if.else29
  br i1 %tobool62.not, label %if.end38, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i64 @ktime_get() #9
  %gap_start = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 41
  %5 = ptrtoint ptr %gap_start to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call39, ptr %gap_start, align 8
  %6 = ptrtoint ptr %gap61 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %gap61, align 8
  %conv = zext i32 %ev.coerce.fca.0.extract to i64
  %gap_duration = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 42
  %7 = ptrtoint ptr %gap_duration to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %gap_duration, align 8
  %and41 = and i32 %ev.coerce.fca.0.extract, 16777215
  %or42 = or i32 %and41, 50331648
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lirc_raw_event.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lirc_raw_event, %if.then55)) #9
          to label %if.end165 [label %if.then55], !srcloc !90

if.then55:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lirc_raw_event.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %or42) #9
  br label %if.end165

if.else60:                                        ; preds = %if.else29
  br i1 %tobool62.not, label %if.else60.if.end127_crit_edge, label %if.then63

if.else60.if.end127_crit_edge:                    ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then63:                                        ; preds = %if.else60
  %call64 = tail call i64 @ktime_get() #9
  %gap_start65 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 41
  %8 = ptrtoint ptr %gap_start65 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %gap_start65, align 8
  %sub = sub i64 %call64, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %10 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #9
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #12, !srcloc !92
  %asmresult.i.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !93
  %asmresult10.i.i.i = extractvalue { i64, i32 } %12, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %gap_duration67 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 42
  %13 = ptrtoint ptr %gap_duration67 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %gap_duration67, align 8
  %add = add i64 %cond213.i.i, %14
  %15 = tail call i64 @llvm.umin.i64(i64 %add, i64 16777215)
  %16 = ptrtoint ptr %gap_duration67 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %gap_duration67, align 8
  %lirc_fh_lock = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 44
  %call78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lirc_fh_lock) #9
  %lirc_fh = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 45
  %17 = ptrtoint ptr %lirc_fh to i32
  call void @__asan_load4_noabort(i32 %17)
  %fh.0319 = load ptr, ptr %lirc_fh, align 8
  %cmp85.not320 = icmp eq ptr %fh.0319, %lirc_fh
  br i1 %cmp85.not320, label %if.then63.for.end_crit_edge, label %if.then63.for.body_crit_edge

if.then63.for.body_crit_edge:                     ; preds = %if.then63
  br label %for.body

if.then63.for.end_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end118.for.body_crit_edge, %if.then63.for.body_crit_edge
  %fh.0321 = phi ptr [ %fh.0, %if.end118.for.body_crit_edge ], [ %fh.0319, %if.then63.for.body_crit_edge ]
  %rawir = getelementptr inbounds %struct.lirc_fh, ptr %fh.0321, i32 0, i32 3
  %18 = ptrtoint ptr %rawir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rawir, align 4
  %out = getelementptr inbounds %struct.lirc_fh, ptr %fh.0321, i32 0, i32 3, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out, align 4
  %sub99 = sub i32 %19, %21
  %mask = getelementptr inbounds %struct.lirc_fh, ptr %fh.0321, i32 0, i32 3, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub99, i32 %23)
  %cmp100.not = icmp ugt i32 %sub99, %23
  br i1 %cmp100.not, label %for.body.if.end118_crit_edge, label %if.then106

for.body.if.end118_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then106:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %gap_duration67 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %gap_duration67, align 8
  %26 = trunc i64 %25 to i32
  %conv92 = and i32 %26, 16777215
  %data = getelementptr inbounds %struct.lirc_fh, ptr %fh.0321, i32 0, i32 3, i32 0, i32 0, i32 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %and109 = and i32 %23, %19
  %arrayidx = getelementptr i32, ptr %28, i32 %and109
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv92, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  %30 = ptrtoint ptr %rawir to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rawir, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %rawir, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then106, %for.body.if.end118_crit_edge
  %32 = ptrtoint ptr %fh.0321 to i32
  call void @__asan_load4_noabort(i32 %32)
  %fh.0 = load ptr, ptr %fh.0321, align 8
  %cmp85.not = icmp eq ptr %fh.0, %lirc_fh
  br i1 %cmp85.not, label %if.end118.for.end_crit_edge, label %if.end118.for.body_crit_edge

if.end118.for.body_crit_edge:                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end118.for.end_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end118.for.end_crit_edge, %if.then63.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lirc_fh_lock, i32 noundef %call78) #9
  %33 = ptrtoint ptr %gap61 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %gap61, align 8
  br label %if.end127

if.end127:                                        ; preds = %for.end, %if.else60.if.end127_crit_edge
  %34 = and i32 %ev.coerce.fca.1.extract, 8388608
  %and133 = and i32 %ev.coerce.fca.0.extract, 16777215
  %35 = shl nuw nsw i32 %34, 1
  %36 = or i32 %35, %and133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lirc_raw_event.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lirc_raw_event, %if.then152)) #9
          to label %if.end165 [label %if.then152], !srcloc !90

if.then152:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool131.not = icmp eq i32 %34, 0
  %cond159 = select i1 %tobool131.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lirc_raw_event.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond159) #9
  br label %if.end165

if.end165:                                        ; preds = %if.then152, %if.end127, %if.then55, %if.end38, %if.then24, %if.then11, %if.then4, %if.then
  %sample.0 = phi i32 [ 16777215, %if.then4 ], [ %or, %if.then24 ], [ %or42, %if.then55 ], [ %36, %if.then152 ], [ 16777215, %if.then ], [ %or, %if.then11 ], [ %or42, %if.end38 ], [ %36, %if.end127 ]
  tail call void @lirc_bpf_run(ptr noundef %dev, i32 noundef %sample.0) #9
  %lirc_fh_lock173 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 44
  %call175 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lirc_fh_lock173) #9
  %lirc_fh181 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 45
  %37 = ptrtoint ptr %lirc_fh181 to i32
  call void @__asan_load4_noabort(i32 %37)
  %fh.1322 = load ptr, ptr %lirc_fh181, align 8
  %cmp188.not323 = icmp eq ptr %fh.1322, %lirc_fh181
  br i1 %cmp188.not323, label %if.end165.for.end243_crit_edge, label %if.end165.for.body192_crit_edge

if.end165.for.body192_crit_edge:                  ; preds = %if.end165
  br label %for.body192

if.end165.for.end243_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end243

for.body192:                                      ; preds = %for.inc237.for.body192_crit_edge, %if.end165.for.body192_crit_edge
  %fh.1324 = phi ptr [ %fh.1, %for.inc237.for.body192_crit_edge ], [ %fh.1322, %if.end165.for.body192_crit_edge ]
  %rawir194 = getelementptr inbounds %struct.lirc_fh, ptr %fh.1324, i32 0, i32 3
  %38 = ptrtoint ptr %rawir194 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rawir194, align 4
  %out208 = getelementptr inbounds %struct.lirc_fh, ptr %fh.1324, i32 0, i32 3, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %out208 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out208, align 4
  %sub209 = sub i32 %39, %41
  %mask210 = getelementptr inbounds %struct.lirc_fh, ptr %fh.1324, i32 0, i32 3, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %mask210 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mask210, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub209, i32 %43)
  %cmp211.not = icmp ugt i32 %sub209, %43
  br i1 %cmp211.not, label %for.body192.for.inc237_crit_edge, label %if.then217

for.body192.for.inc237_crit_edge:                 ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc237

if.then217:                                       ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #11
  %data218 = getelementptr inbounds %struct.lirc_fh, ptr %fh.1324, i32 0, i32 3, i32 0, i32 0, i32 4
  %44 = ptrtoint ptr %data218 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data218, align 4
  %and221 = and i32 %43, %39
  %arrayidx222 = getelementptr i32, ptr %45, i32 %and221
  %46 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sample.0, ptr %arrayidx222, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  %47 = ptrtoint ptr %rawir194 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rawir194, align 4
  %inc230 = add i32 %48, 1
  store i32 %inc230, ptr %rawir194, align 4
  %wait_poll = getelementptr inbounds %struct.lirc_fh, ptr %fh.1324, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_poll, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #9
  br label %for.inc237

for.inc237:                                       ; preds = %if.then217, %for.body192.for.inc237_crit_edge
  %49 = ptrtoint ptr %fh.1324 to i32
  call void @__asan_load4_noabort(i32 %49)
  %fh.1 = load ptr, ptr %fh.1324, align 8
  %cmp188.not = icmp eq ptr %fh.1, %lirc_fh181
  br i1 %cmp188.not, label %for.inc237.for.end243_crit_edge, label %for.inc237.for.body192_crit_edge

for.inc237.for.body192_crit_edge:                 ; preds = %for.inc237
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body192

for.inc237.for.end243_crit_edge:                  ; preds = %for.inc237
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end243

for.end243:                                       ; preds = %for.inc237.for.end243_crit_edge, %if.end165.for.end243_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lirc_fh_lock173, i32 noundef %call175) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end243, %if.then35.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lirc_bpf_run(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lirc_scancode_event(ptr noundef %dev, ptr nocapture noundef %lsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get() #9
  %0 = ptrtoint ptr %lsc to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call.i, ptr %lsc, align 8
  %lirc_fh_lock = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lirc_fh_lock) #9
  %lirc_fh = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %lirc_fh to i32
  call void @__asan_load4_noabort(i32 %1)
  %fh.060 = load ptr, ptr %lirc_fh, align 8
  %cmp8.not61 = icmp eq ptr %fh.060, %lirc_fh
  br i1 %cmp8.not61, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %__val.sroa.9.0.lsc.sroa_idx = getelementptr inbounds i8, ptr %lsc, i32 16
  %__val.sroa.8.0.lsc.sroa_idx = getelementptr inbounds i8, ptr %lsc, i32 12
  %__val.sroa.7.0.lsc.sroa_idx = getelementptr inbounds i8, ptr %lsc, i32 10
  %__val.sroa.6.0.lsc.sroa_idx = getelementptr inbounds i8, ptr %lsc, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fh.062 = phi ptr [ %fh.060, %for.body.lr.ph ], [ %fh.0, %for.inc.for.body_crit_edge ]
  %scancodes = getelementptr inbounds %struct.lirc_fh, ptr %fh.062, i32 0, i32 4
  %2 = ptrtoint ptr %scancodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scancodes, align 8
  %out = getelementptr inbounds %struct.lirc_fh, ptr %fh.062, i32 0, i32 4, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub = sub i32 %3, %5
  %mask = getelementptr inbounds %struct.lirc_fh, ptr %fh.062, i32 0, i32 4, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp13.not = icmp ugt i32 %sub, %7
  br i1 %cmp13.not, label %for.body.for.inc_crit_edge, label %if.then18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %__val.sroa.9.0.lsc.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %8)
  %__val.sroa.9.0.copyload = load i64, ptr %__val.sroa.9.0.lsc.sroa_idx, align 8
  %9 = ptrtoint ptr %__val.sroa.8.0.lsc.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %__val.sroa.8.0.copyload = load i32, ptr %__val.sroa.8.0.lsc.sroa_idx, align 4
  %10 = ptrtoint ptr %__val.sroa.7.0.lsc.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %__val.sroa.7.0.copyload = load i16, ptr %__val.sroa.7.0.lsc.sroa_idx, align 2
  %11 = ptrtoint ptr %__val.sroa.6.0.lsc.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %__val.sroa.6.0.copyload = load i16, ptr %__val.sroa.6.0.lsc.sroa_idx, align 8
  %12 = ptrtoint ptr %lsc to i32
  call void @__asan_load8_noabort(i32 %12)
  %__val.sroa.0.0.copyload = load i64, ptr %lsc, align 8
  %data = getelementptr inbounds %struct.lirc_fh, ptr %fh.062, i32 0, i32 4, i32 0, i32 0, i32 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %and = and i32 %7, %3
  %arrayidx = getelementptr %struct.lirc_scancode, ptr %14, i32 %and
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %__val.sroa.0.0.copyload, ptr %arrayidx, align 8
  %__val.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %16 = ptrtoint ptr %__val.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %__val.sroa.6.0.copyload, ptr %__val.sroa.6.0.arrayidx.sroa_idx, align 8
  %__val.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 10
  %17 = ptrtoint ptr %__val.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %__val.sroa.7.0.copyload, ptr %__val.sroa.7.0.arrayidx.sroa_idx, align 2
  %__val.sroa.8.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %18 = ptrtoint ptr %__val.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %__val.sroa.8.0.copyload, ptr %__val.sroa.8.0.arrayidx.sroa_idx, align 4
  %__val.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %19 = ptrtoint ptr %__val.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %__val.sroa.9.0.copyload, ptr %__val.sroa.9.0.arrayidx.sroa_idx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  %20 = ptrtoint ptr %scancodes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scancodes, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %scancodes, align 4
  %wait_poll = getelementptr inbounds %struct.lirc_fh, ptr %fh.062, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_poll, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %fh.062 to i32
  call void @__asan_load4_noabort(i32 %22)
  %fh.0 = load ptr, ptr %fh.062, align 8
  %cmp8.not = icmp eq ptr %fh.0, %lirc_fh
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lirc_fh_lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lirc_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ida_alloc_range(ptr noundef nonnull @lirc_ida, i32 noundef 0, i32 noundef 255, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lirc_dev = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 39
  tail call void @device_initialize(ptr noundef %lirc_dev) #9
  %0 = load ptr, ptr @lirc_class, align 4
  %class = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 39, i32 33
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %class, align 4
  %parent = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 39, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 39, i32 35
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @lirc_release_device, ptr %release, align 4
  %4 = load i32, ptr @lirc_base_dev, align 4
  %shr = and i32 %4, -1048576
  %or = or i32 %shr, %call
  %devt = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 39, i32 29
  %5 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %devt, align 8
  %call7 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %lirc_dev, ptr noundef nonnull @.str.9, i32 noundef %call) #9
  %lirc_fh = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 45
  %6 = ptrtoint ptr %lirc_fh to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %lirc_fh, ptr %lirc_fh, align 4
  %prev.i = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 45, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lirc_fh, ptr %prev.i, align 4
  %lirc_fh_lock = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %lirc_fh_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @lirc_register.__key, i16 noundef signext 3) #9
  %lirc_cdev = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 40
  tail call void @cdev_init(ptr noundef %lirc_cdev, ptr noundef nonnull @lirc_fops) #9
  %call11 = tail call i32 @cdev_device_add(ptr noundef %lirc_cdev, ptr noundef %lirc_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %out_ida

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call ptr @get_device(ptr noundef %dev) #9
  %driver_type = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 13
  %8 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %switch.selectcmp = icmp eq i32 %9, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.12, ptr @.str.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %switch.selectcmp49 = icmp eq i32 %9, 0
  %switch.select50 = select i1 %switch.selectcmp49, ptr @.str.11, ptr %switch.select
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 54
  %10 = ptrtoint ptr %tx_ir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ir, align 8
  %tobool17.not = icmp eq ptr %11, null
  %tx_type.0 = select i1 %tobool17.not, ptr @.str.13, ptr @.str.12
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %driver_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_name, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %13, i32 noundef %call, ptr noundef nonnull %switch.select50, ptr noundef nonnull %tx_type.0) #13
  br label %cleanup

out_ida:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ida_free(ptr noundef nonnull @lirc_ida, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_ida, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %out_ida ], [ 0, %if.end13 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lirc_release_device(ptr noundef %ld) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ld, i32 -1408
  tail call void @put_device(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lirc_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lirc_unregister.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lirc_unregister, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_name, align 8
  %devt = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 39, i32 29
  %2 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devt, align 8
  %and = and i32 %3, 1048575
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lirc_unregister.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %1, i32 noundef %and) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lirc_fh_lock = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 44
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lirc_fh_lock) #9
  %lirc_fh = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 45
  %4 = ptrtoint ptr %lirc_fh to i32
  call void @__asan_load4_noabort(i32 %4)
  %fh.041 = load ptr, ptr %lirc_fh, align 8
  %cmp15.not42 = icmp eq ptr %fh.041, %lirc_fh
  br i1 %cmp15.not42, label %do.body5.for.end_crit_edge, label %do.body5.for.body_crit_edge

do.body5.for.body_crit_edge:                      ; preds = %do.body5
  br label %for.body

do.body5.for.end_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body5.for.body_crit_edge
  %fh.043 = phi ptr [ %fh.0, %for.body.for.body_crit_edge ], [ %fh.041, %do.body5.for.body_crit_edge ]
  %wait_poll = getelementptr inbounds %struct.lirc_fh, ptr %fh.043, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait_poll, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 24 to ptr)) #9
  %5 = ptrtoint ptr %fh.043 to i32
  call void @__asan_load4_noabort(i32 %5)
  %fh.0 = load ptr, ptr %fh.043, align 8
  %cmp15.not = icmp eq ptr %fh.0, %lirc_fh
  br i1 %cmp15.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body5.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lirc_fh_lock, i32 noundef %call8) #9
  %lirc_cdev = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 40
  %lirc_dev25 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 39
  tail call void @cdev_device_del(ptr noundef %lirc_cdev, ptr noundef %lirc_dev25) #9
  %devt27 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 39, i32 29
  %6 = ptrtoint ptr %devt27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devt27, align 8
  %and28 = and i32 %7, 1048575
  tail call void @ida_free(ptr noundef nonnull @lirc_ida, i32 noundef %and28) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lirc_dev_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @lirc_dev_init.__key) #9
  store ptr %call, ptr @lirc_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  %0 = load ptr, ptr @lirc_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @lirc_base_dev, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.body14, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @lirc_class, align 4
  tail call void @class_destroy(ptr noundef %2) #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #13
  br label %cleanup

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lirc_dev_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lirc_dev_init, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !90

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load i32, ptr @lirc_base_dev, align 4
  %shr = lshr i32 %3, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lirc_dev_init.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.27, i32 noundef %shr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body14, %if.then7, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %call6, %if.then7 ], [ 0, %if.then20 ], [ 0, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @lirc_dev_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @lirc_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  %1 = load i32, ptr @lirc_base_dev, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 256) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rc_dev_get_from_fd(i32 noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #9, !noalias !97
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %2, @lirc_fops
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.cleanup_crit_edge, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %rc = getelementptr inbounds %struct.lirc_fh, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rc, align 8
  %call7 = tail call ptr @get_device(ptr noundef %6) #9
  %and.i17 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.end4.cleanup_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end4.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ inttoptr (i32 -22 to ptr), %if.then2.cleanup.sink.split_crit_edge ], [ %6, %if.end4.cleanup.sink.split_crit_edge ]
  tail call void @fput(ptr noundef nonnull %0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -9 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then2.cleanup_crit_edge ], [ %6, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lirc_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %length, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %copied.i14 = alloca i32, align 4
  %__wq_entry.i15 = alloca %struct.wait_queue_entry, align 4
  %copied.i = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rc = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 8
  %driver_type = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %registered = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %rec_mode = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %rec_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rec_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp3 = icmp eq i8 %9, 4
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied.i) #9
  %10 = ptrtoint ptr %copied.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %copied.i, align 4, !annotation !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %length)
  %cmp.i = icmp ugt i32 %length, 3
  %rem.i = and i32 %length, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %do.body.preheader.i, label %if.then5.lirc_read_mode2.exit_crit_edge

if.then5.lirc_read_mode2.exit_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_mode2.exit

do.body.preheader.i:                              ; preds = %if.then5
  %rawir.i = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 3
  %out.i = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %wait_poll.i = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 9
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond63.i.do.body.i_crit_edge, %do.body.preheader.i
  %11 = ptrtoint ptr %rawir.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rawir.i, align 4
  %13 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp1.i = icmp eq i32 %12, %14
  br i1 %cmp1.i, label %if.then3.i, label %do.body.i.if.end46.i_crit_edge

do.body.i.if.end46.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then3.i:                                       ; preds = %do.body.i
  %15 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then3.i.lirc_read_mode2.exit_crit_edge

if.then3.i.lirc_read_mode2.exit_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_mode2.exit

if.end6.i:                                        ; preds = %if.then3.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 625) #9
  %17 = ptrtoint ptr %rawir.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rawir.i, align 4
  %19 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp16.i = icmp eq i32 %18, %20
  br i1 %cmp16.i, label %lor.lhs.false19.i, label %if.end6.i.if.end46.i_crit_edge

if.end6.i.if.end46.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

lor.lhs.false19.i:                                ; preds = %if.end6.i
  %21 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool20.not.i = icmp eq i8 %22, 0
  br i1 %tobool20.not.i, label %lor.lhs.false19.i.lirc_read_mode2.exit_crit_edge, label %if.then21.i

lor.lhs.false19.i.lirc_read_mode2.exit_crit_edge: ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_mode2.exit

if.then21.i:                                      ; preds = %lor.lhs.false19.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %23 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %call107.i = call i32 @prepare_to_wait_event(ptr noundef %wait_poll.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %24 = ptrtoint ptr %rawir.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rawir.i, align 4
  %26 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp28108.i = icmp eq i32 %25, %27
  br i1 %cmp28108.i, label %if.then21.i.lor.lhs.false31.i_crit_edge, label %if.then21.i.if.end41.thread102.i_crit_edge

if.then21.i.if.end41.thread102.i_crit_edge:       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.thread102.i

if.then21.i.lor.lhs.false31.i_crit_edge:          ; preds = %if.then21.i
  br label %lor.lhs.false31.i

lor.lhs.false31.i:                                ; preds = %cleanup.i.lor.lhs.false31.i_crit_edge, %if.then21.i.lor.lhs.false31.i_crit_edge
  %call109.i = phi i32 [ %call.i, %cleanup.i.lor.lhs.false31.i_crit_edge ], [ %call107.i, %if.then21.i.lor.lhs.false31.i_crit_edge ]
  %28 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool33.not.i = icmp eq i8 %29, 0
  br i1 %tobool33.not.i, label %lor.lhs.false31.i.if.end41.thread102.i_crit_edge, label %if.end35.i

lor.lhs.false31.i.if.end41.thread102.i_crit_edge: ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.thread102.i

if.end35.i:                                       ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool36.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool36.not.i, label %cleanup.i, label %if.end41.i

cleanup.i:                                        ; preds = %if.end35.i
  call void @schedule() #9
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %wait_poll.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %30 = ptrtoint ptr %rawir.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rawir.i, align 4
  %32 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out.i, align 4
  %cmp28.i = icmp eq i32 %31, %33
  br i1 %cmp28.i, label %cleanup.i.lor.lhs.false31.i_crit_edge, label %cleanup.i.if.end41.thread102.i_crit_edge

cleanup.i.if.end41.thread102.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.thread102.i

cleanup.i.lor.lhs.false31.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false31.i

if.end41.thread102.i:                             ; preds = %cleanup.i.if.end41.thread102.i_crit_edge, %lor.lhs.false31.i.if.end41.thread102.i_crit_edge, %if.then21.i.if.end41.thread102.i_crit_edge
  call void @finish_wait(ptr noundef %wait_poll.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %if.end46.i

if.end41.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %lirc_read_mode2.exit

if.end46.i:                                       ; preds = %if.end41.thread102.i, %if.end6.i.if.end46.i_crit_edge, %do.body.i.if.end46.i_crit_edge
  %34 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr.i = load i8, ptr %registered, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool48.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.lirc_read_mode2.exit_crit_edge, label %if.end50.i

if.end46.i.lirc_read_mode2.exit_crit_edge:        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_mode2.exit

if.end50.i:                                       ; preds = %if.end46.i
  %call51.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end50.i.lirc_read_mode2.exit_crit_edge

if.end50.i.lirc_read_mode2.exit_crit_edge:        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_mode2.exit

if.end54.i:                                       ; preds = %if.end50.i
  %call57.i = call i32 @__kfifo_to_user(ptr noundef %rawir.i, ptr noundef %buffer, i32 noundef %length, ptr noundef nonnull %copied.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool60.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool60.not.i, label %do.cond63.i, label %if.end54.i.lirc_read_mode2.exit_crit_edge

if.end54.i.lirc_read_mode2.exit_crit_edge:        ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_mode2.exit

do.cond63.i:                                      ; preds = %if.end54.i
  %35 = ptrtoint ptr %copied.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %copied.i, align 4
  %cmp64.i = icmp eq i32 %36, 0
  br i1 %cmp64.i, label %do.cond63.i.do.body.i_crit_edge, label %do.cond63.i.lirc_read_mode2.exit_crit_edge

do.cond63.i.lirc_read_mode2.exit_crit_edge:       ; preds = %do.cond63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_mode2.exit

do.cond63.i.do.body.i_crit_edge:                  ; preds = %do.cond63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lirc_read_mode2.exit:                             ; preds = %do.cond63.i.lirc_read_mode2.exit_crit_edge, %if.end54.i.lirc_read_mode2.exit_crit_edge, %if.end50.i.lirc_read_mode2.exit_crit_edge, %if.end46.i.lirc_read_mode2.exit_crit_edge, %if.end41.i, %lor.lhs.false19.i.lirc_read_mode2.exit_crit_edge, %if.then3.i.lirc_read_mode2.exit_crit_edge, %if.then5.lirc_read_mode2.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then5.lirc_read_mode2.exit_crit_edge ], [ %call109.i, %if.end41.i ], [ -11, %if.then3.i.lirc_read_mode2.exit_crit_edge ], [ -19, %if.end46.i.lirc_read_mode2.exit_crit_edge ], [ %call51.i, %if.end50.i.lirc_read_mode2.exit_crit_edge ], [ %call57.i, %if.end54.i.lirc_read_mode2.exit_crit_edge ], [ %36, %do.cond63.i.lirc_read_mode2.exit_crit_edge ], [ -19, %lor.lhs.false19.i.lirc_read_mode2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied.i14) #9
  %37 = ptrtoint ptr %copied.i14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %copied.i14, align 4, !annotation !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %length)
  %cmp.i18 = icmp ugt i32 %length, 23
  %rem.i19 = urem i32 %length, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i19)
  %tobool.not.i20 = icmp eq i32 %rem.i19, 0
  %or.cond.i21 = and i1 %cmp.i18, %tobool.not.i20
  br i1 %or.cond.i21, label %do.body.preheader.i27, label %if.else.lirc_read_scancode.exit_crit_edge

if.else.lirc_read_scancode.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_scancode.exit

do.body.preheader.i27:                            ; preds = %if.else
  %scancodes.i = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 4
  %out.i22 = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %f_flags.i23 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %wait_poll.i25 = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 5
  %lock.i26 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 9
  br label %do.body.i29

do.body.i29:                                      ; preds = %do.cond63.i60.do.body.i29_crit_edge, %do.body.preheader.i27
  %38 = ptrtoint ptr %scancodes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scancodes.i, align 8
  %40 = ptrtoint ptr %out.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp1.i28 = icmp eq i32 %39, %41
  br i1 %cmp1.i28, label %if.then3.i32, label %do.body.i29.if.end46.i52_crit_edge

do.body.i29.if.end46.i52_crit_edge:               ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i52

if.then3.i32:                                     ; preds = %do.body.i29
  %42 = ptrtoint ptr %f_flags.i23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %f_flags.i23, align 4
  %and.i30 = and i32 %43, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool4.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool4.not.i31, label %if.end6.i34, label %if.then3.i32.lirc_read_scancode.exit_crit_edge

if.then3.i32.lirc_read_scancode.exit_crit_edge:   ; preds = %if.then3.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_scancode.exit

if.end6.i34:                                      ; preds = %if.then3.i32
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 664) #9
  %44 = ptrtoint ptr %scancodes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %scancodes.i, align 8
  %46 = ptrtoint ptr %out.i22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %out.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp16.i33 = icmp eq i32 %45, %47
  br i1 %cmp16.i33, label %lor.lhs.false19.i36, label %if.end6.i34.if.end46.i52_crit_edge

if.end6.i34.if.end46.i52_crit_edge:               ; preds = %if.end6.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i52

lor.lhs.false19.i36:                              ; preds = %if.end6.i34
  %48 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool20.not.i35 = icmp eq i8 %49, 0
  br i1 %tobool20.not.i35, label %lor.lhs.false19.i36.lirc_read_scancode.exit_crit_edge, label %if.then21.i39

lor.lhs.false19.i36.lirc_read_scancode.exit_crit_edge: ; preds = %lor.lhs.false19.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_scancode.exit

if.then21.i39:                                    ; preds = %lor.lhs.false19.i36
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i15) #9
  %50 = call ptr @memset(ptr %__wq_entry.i15, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i15, i32 noundef 0) #9
  %call107.i37 = call i32 @prepare_to_wait_event(ptr noundef %wait_poll.i25, ptr noundef nonnull %__wq_entry.i15, i32 noundef 1) #9
  %51 = ptrtoint ptr %scancodes.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %scancodes.i, align 8
  %53 = ptrtoint ptr %out.i22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %out.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp28108.i38 = icmp eq i32 %52, %54
  br i1 %cmp28108.i38, label %if.then21.i39.lor.lhs.false31.i42_crit_edge, label %if.then21.i39.if.end41.thread102.i48_crit_edge

if.then21.i39.if.end41.thread102.i48_crit_edge:   ; preds = %if.then21.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.thread102.i48

if.then21.i39.lor.lhs.false31.i42_crit_edge:      ; preds = %if.then21.i39
  br label %lor.lhs.false31.i42

lor.lhs.false31.i42:                              ; preds = %cleanup.i47.lor.lhs.false31.i42_crit_edge, %if.then21.i39.lor.lhs.false31.i42_crit_edge
  %call109.i40 = phi i32 [ %call.i45, %cleanup.i47.lor.lhs.false31.i42_crit_edge ], [ %call107.i37, %if.then21.i39.lor.lhs.false31.i42_crit_edge ]
  %55 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool33.not.i41 = icmp eq i8 %56, 0
  br i1 %tobool33.not.i41, label %lor.lhs.false31.i42.if.end41.thread102.i48_crit_edge, label %if.end35.i44

lor.lhs.false31.i42.if.end41.thread102.i48_crit_edge: ; preds = %lor.lhs.false31.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.thread102.i48

if.end35.i44:                                     ; preds = %lor.lhs.false31.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i40)
  %tobool36.not.i43 = icmp eq i32 %call109.i40, 0
  br i1 %tobool36.not.i43, label %cleanup.i47, label %if.end41.i49

cleanup.i47:                                      ; preds = %if.end35.i44
  call void @schedule() #9
  %call.i45 = call i32 @prepare_to_wait_event(ptr noundef %wait_poll.i25, ptr noundef nonnull %__wq_entry.i15, i32 noundef 1) #9
  %57 = ptrtoint ptr %scancodes.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scancodes.i, align 8
  %59 = ptrtoint ptr %out.i22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %out.i22, align 4
  %cmp28.i46 = icmp eq i32 %58, %60
  br i1 %cmp28.i46, label %cleanup.i47.lor.lhs.false31.i42_crit_edge, label %cleanup.i47.if.end41.thread102.i48_crit_edge

cleanup.i47.if.end41.thread102.i48_crit_edge:     ; preds = %cleanup.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.thread102.i48

cleanup.i47.lor.lhs.false31.i42_crit_edge:        ; preds = %cleanup.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false31.i42

if.end41.thread102.i48:                           ; preds = %cleanup.i47.if.end41.thread102.i48_crit_edge, %lor.lhs.false31.i42.if.end41.thread102.i48_crit_edge, %if.then21.i39.if.end41.thread102.i48_crit_edge
  call void @finish_wait(ptr noundef %wait_poll.i25, ptr noundef nonnull %__wq_entry.i15) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i15) #9
  br label %if.end46.i52

if.end41.i49:                                     ; preds = %if.end35.i44
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i15) #9
  br label %lirc_read_scancode.exit

if.end46.i52:                                     ; preds = %if.end41.thread102.i48, %if.end6.i34.if.end46.i52_crit_edge, %do.body.i29.if.end46.i52_crit_edge
  %61 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %61)
  %.pr.i50 = load i8, ptr %registered, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i50)
  %tobool48.not.i51 = icmp eq i8 %.pr.i50, 0
  br i1 %tobool48.not.i51, label %if.end46.i52.lirc_read_scancode.exit_crit_edge, label %if.end50.i55

if.end46.i52.lirc_read_scancode.exit_crit_edge:   ; preds = %if.end46.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_scancode.exit

if.end50.i55:                                     ; preds = %if.end46.i52
  %call51.i53 = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i26, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i53)
  %tobool52.not.i54 = icmp eq i32 %call51.i53, 0
  br i1 %tobool52.not.i54, label %if.end54.i58, label %if.end50.i55.lirc_read_scancode.exit_crit_edge

if.end50.i55.lirc_read_scancode.exit_crit_edge:   ; preds = %if.end50.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_scancode.exit

if.end54.i58:                                     ; preds = %if.end50.i55
  %call57.i56 = call i32 @__kfifo_to_user(ptr noundef %scancodes.i, ptr noundef %buffer, i32 noundef %length, ptr noundef nonnull %copied.i14) #9
  call void @mutex_unlock(ptr noundef %lock.i26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i56)
  %tobool60.not.i57 = icmp eq i32 %call57.i56, 0
  br i1 %tobool60.not.i57, label %do.cond63.i60, label %if.end54.i58.lirc_read_scancode.exit_crit_edge

if.end54.i58.lirc_read_scancode.exit_crit_edge:   ; preds = %if.end54.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_scancode.exit

do.cond63.i60:                                    ; preds = %if.end54.i58
  %62 = ptrtoint ptr %copied.i14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %copied.i14, align 4
  %cmp64.i59 = icmp eq i32 %63, 0
  br i1 %cmp64.i59, label %do.cond63.i60.do.body.i29_crit_edge, label %do.cond63.i60.lirc_read_scancode.exit_crit_edge

do.cond63.i60.lirc_read_scancode.exit_crit_edge:  ; preds = %do.cond63.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %lirc_read_scancode.exit

do.cond63.i60.do.body.i29_crit_edge:              ; preds = %do.cond63.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i29

lirc_read_scancode.exit:                          ; preds = %do.cond63.i60.lirc_read_scancode.exit_crit_edge, %if.end54.i58.lirc_read_scancode.exit_crit_edge, %if.end50.i55.lirc_read_scancode.exit_crit_edge, %if.end46.i52.lirc_read_scancode.exit_crit_edge, %if.end41.i49, %lor.lhs.false19.i36.lirc_read_scancode.exit_crit_edge, %if.then3.i32.lirc_read_scancode.exit_crit_edge, %if.else.lirc_read_scancode.exit_crit_edge
  %retval.0.i61 = phi i32 [ -22, %if.else.lirc_read_scancode.exit_crit_edge ], [ %call109.i40, %if.end41.i49 ], [ -11, %if.then3.i32.lirc_read_scancode.exit_crit_edge ], [ -19, %if.end46.i52.lirc_read_scancode.exit_crit_edge ], [ %call51.i53, %if.end50.i55.lirc_read_scancode.exit_crit_edge ], [ %call57.i56, %if.end54.i58.lirc_read_scancode.exit_crit_edge ], [ %63, %do.cond63.i60.lirc_read_scancode.exit_crit_edge ], [ -19, %lor.lhs.false19.i36.lirc_read_scancode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied.i14) #9
  br label %cleanup

cleanup:                                          ; preds = %lirc_read_scancode.exit, %lirc_read_mode2.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %lirc_read_mode2.exit ], [ %retval.0.i61, %lirc_read_scancode.exit ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lirc_transmit(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %n, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %scan = alloca %struct.lirc_scancode, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rc = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 8
  %lock = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 9
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup190_crit_edge

entry.cleanup190_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup190

if.end:                                           ; preds = %entry
  %registered = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end.out_unlock_crit_edge, label %if.end3

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 54
  %6 = ptrtoint ptr %tx_ir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ir, align 8
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end3.out_unlock_crit_edge, label %if.end6

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end6:                                          ; preds = %if.end3
  %send_mode = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %send_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %send_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp = icmp eq i8 %9, 8
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scan) #9
  %10 = getelementptr inbounds %struct.lirc_scancode, ptr %scan, i32 0, i32 1
  %11 = getelementptr inbounds %struct.lirc_scancode, ptr %scan, i32 0, i32 2
  %12 = getelementptr inbounds %struct.lirc_scancode, ptr %scan, i32 0, i32 3
  %13 = getelementptr inbounds %struct.lirc_scancode, ptr %scan, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %n)
  %cmp9.not = icmp eq i32 %n, 24
  %14 = call ptr @memset(ptr %scan, i32 255, i32 24)
  br i1 %cmp9.not, label %if.then.i, label %if.then8.cleanup.thread_crit_edge

if.then8.cleanup.thread_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then.i:                                        ; preds = %if.then8
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 24, i32 -1226833920) #12, !srcloc !101
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !102

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %scan, i32 noundef 24) #9
  %16 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !103
  %and.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %scan, ptr noundef %buf, i32 noundef 24) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !102

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.then.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %scan, i32 %sub.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup.thread

if.end16:                                         ; preds = %if.end.i.i
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool18.not = icmp eq i16 %21, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.cleanup.thread_crit_edge

if.end16.cleanup.thread_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.end16
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool19.not = icmp eq i32 %23, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false.cleanup.thread_crit_edge

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %scan to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %scan, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool21.not = icmp eq i64 %25, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false20.cleanup.thread_crit_edge

lor.lhs.false20.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %11, align 2
  %conv23 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %27)
  %cmp24 = icmp ugt i16 %27, 27
  br i1 %cmp24, label %lor.lhs.false22.cleanup.thread_crit_edge, label %if.end27

lor.lhs.false22.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end27:                                         ; preds = %lor.lhs.false22
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %29)
  %cmp28 = icmp ugt i64 %29, 4294967295
  br i1 %cmp28, label %if.end27.cleanup.thread_crit_edge, label %lor.lhs.false30

if.end27.cleanup.thread_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

lor.lhs.false30:                                  ; preds = %if.end27
  %conv34 = trunc i64 %29 to i32
  %call35 = call zeroext i1 @rc_validate_scancode(i32 noundef %conv23, i32 noundef %conv34) #9
  br i1 %call35, label %if.end37, label %lor.lhs.false30.cleanup.thread_crit_edge

lor.lhs.false30.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end37:                                         ; preds = %lor.lhs.false30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 8192) #14
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %if.end37.cleanup.thread_crit_edge, label %if.end41

if.end37.cleanup.thread_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end41:                                         ; preds = %if.end37
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %11, align 2
  %conv43 = zext i16 %32 to i32
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %13, align 8
  %conv45 = trunc i64 %34 to i32
  %call46 = call i32 @ir_raw_encode_scancode(i32 noundef %conv43, i32 noundef %conv45, ptr noundef nonnull %call7.i.i, i32 noundef 1024) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end41.cleanup_crit_edge, label %if.end50

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call46, i32 4) #9
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %if.end50.cleanup_crit_edge, label %if.end7.i, !prof !106

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end50
  %37 = extractvalue { i32, i1 } %35, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #15
  %tobool52.not = icmp eq ptr %call8.i, null
  br i1 %tobool52.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp55286.not = icmp eq i32 %call46, 0
  br i1 %cmp55286.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0287 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ir_raw_event, ptr %call7.i.i, i32 %i.0287
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 8
  %arrayidx57 = getelementptr i32, ptr %call8.i, i32 %i.0287
  %40 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx57, align 4
  %inc = add nuw i32 %i.0287, 1
  %exitcond.not = icmp eq i32 %inc, %call46
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 51
  %41 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_tx_carrier, align 4
  %tobool58.not = icmp eq ptr %42, null
  br i1 %tobool58.not, label %for.end.if.end89_crit_edge, label %if.then59

for.end.if.end89_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then59:                                        ; preds = %for.end
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %11, align 2
  %conv61 = zext i16 %44 to i32
  %call62 = call i32 @ir_raw_encode_carrier(i32 noundef %conv61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp sgt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %if.then59.if.end89_crit_edge

if.then59.if.end89_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then65:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_tx_carrier, align 4
  %call67 = call i32 %46(ptr noundef %3, i32 noundef %call62) #9
  br label %if.end89

cleanup.thread:                                   ; preds = %if.end37.cleanup.thread_crit_edge, %lor.lhs.false30.cleanup.thread_crit_edge, %if.end27.cleanup.thread_crit_edge, %lor.lhs.false22.cleanup.thread_crit_edge, %lor.lhs.false20.cleanup.thread_crit_edge, %lor.lhs.false.cleanup.thread_crit_edge, %if.end16.cleanup.thread_crit_edge, %if.then11.i.i, %if.then8.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end37.cleanup.thread_crit_edge ], [ -22, %if.end27.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false30.cleanup.thread_crit_edge ], [ -22, %if.end16.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false20.cleanup.thread_crit_edge ], [ -22, %lor.lhs.false22.cleanup.thread_crit_edge ], [ -22, %if.then8.cleanup.thread_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scan) #9
  br label %out_unlock

cleanup:                                          ; preds = %if.end7.i.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end41.cleanup_crit_edge
  %ret.0 = phi i32 [ %call46, %if.end41.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scan) #9
  br label %out_kfree_raw

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %n)
  %cmp70 = icmp ugt i32 %n, 3
  %rem = and i32 %n, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool73.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp70, %tobool73.not
  br i1 %or.cond, label %if.end75, label %if.else.out_unlock_crit_edge

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end75:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4099, i32 %n)
  %cmp76 = icmp ugt i32 %n, 4099
  %47 = and i32 %n, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp80 = icmp eq i32 %47, 0
  %or.cond255 = or i1 %cmp76, %cmp80
  br i1 %or.cond255, label %if.end75.out_unlock_crit_edge, label %if.end83

if.end75.out_unlock_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end83:                                         ; preds = %if.end75
  %div254 = lshr i32 %n, 2
  %call84 = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %n) #9
  %cmp.i268 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.then86, label %if.end83.for.body93.preheader_crit_edge

if.end83.for.body93.preheader_crit_edge:          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93.preheader

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %call84 to i32
  br label %out_unlock

if.end89:                                         ; preds = %if.then65, %if.then59.if.end89_crit_edge, %for.end.if.end89_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp91288.not = icmp eq i32 %call46, 0
  br i1 %cmp91288.not, label %if.end89.for.end105_crit_edge, label %if.end89.for.body93.preheader_crit_edge

if.end89.for.body93.preheader_crit_edge:          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93.preheader

if.end89.for.end105_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end105

for.body93.preheader:                             ; preds = %if.end89.for.body93.preheader_crit_edge, %if.end83.for.body93.preheader_crit_edge
  %count.1306 = phi i32 [ %call46, %if.end89.for.body93.preheader_crit_edge ], [ %div254, %if.end83.for.body93.preheader_crit_edge ]
  %raw.1305 = phi ptr [ %call7.i.i, %if.end89.for.body93.preheader_crit_edge ], [ null, %if.end83.for.body93.preheader_crit_edge ]
  %txbuf.1300 = phi ptr [ %call8.i, %if.end89.for.body93.preheader_crit_edge ], [ %call84, %if.end83.for.body93.preheader_crit_edge ]
  br label %for.body93

for.body93:                                       ; preds = %if.end101.for.body93_crit_edge, %for.body93.preheader
  %i.1290 = phi i32 [ %inc104, %if.end101.for.body93_crit_edge ], [ 0, %for.body93.preheader ]
  %duration.0289 = phi i32 [ %add, %if.end101.for.body93_crit_edge ], [ 0, %for.body93.preheader ]
  %arrayidx94 = getelementptr i32, ptr %txbuf.1300, i32 %i.1290
  %49 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx94, align 4
  %sub = sub i32 500000, %duration.0289
  %51 = add i32 %50, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %sub)
  %.not = icmp ult i32 %51, %sub
  br i1 %.not, label %if.end101, label %for.body93.out_kfree_crit_edge

for.body93.out_kfree_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_kfree

if.end101:                                        ; preds = %for.body93
  %add = add i32 %50, %duration.0289
  %inc104 = add nuw i32 %i.1290, 1
  %exitcond291.not = icmp eq i32 %inc104, %count.1306
  br i1 %exitcond291.not, label %if.end101.for.end105_crit_edge, label %if.end101.for.body93_crit_edge

if.end101.for.body93_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93

if.end101.for.end105_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end105

for.end105:                                       ; preds = %if.end101.for.end105_crit_edge, %if.end89.for.end105_crit_edge
  %count.1307 = phi i32 [ 0, %if.end89.for.end105_crit_edge ], [ %count.1306, %if.end101.for.end105_crit_edge ]
  %raw.1304 = phi ptr [ %call7.i.i, %if.end89.for.end105_crit_edge ], [ %raw.1305, %if.end101.for.end105_crit_edge ]
  %txbuf.1302 = phi ptr [ %call8.i, %if.end89.for.end105_crit_edge ], [ %txbuf.1300, %if.end101.for.end105_crit_edge ]
  %duration.0.lcssa = phi i32 [ 0, %if.end89.for.end105_crit_edge ], [ %add, %if.end101.for.end105_crit_edge ]
  %call106 = call i64 @ktime_get() #9
  %52 = ptrtoint ptr %tx_ir to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_ir, align 8
  %call108 = call i32 %53(ptr noundef %3, ptr noundef %txbuf.1302, i32 noundef %count.1307) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %for.end105.out_kfree_crit_edge, label %if.end112

for.end105.out_kfree_crit_edge:                   ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_kfree

if.end112:                                        ; preds = %for.end105
  call void @kfree(ptr noundef %txbuf.1302) #9
  call void @kfree(ptr noundef %raw.1304) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  %conv114 = zext i32 %duration.0.lcssa to i64
  %mul.i = mul nuw nsw i64 %conv114, 1000
  %add.i = add i64 %call106, %mul.i
  %call116 = call i64 @ktime_get() #9
  %sub.i = sub i64 %add.i, %call116
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %54 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %55 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %54, i32 0) #12, !srcloc !92
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %55, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %55, 1
  %56 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %54, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !93
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %56, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i.i)
  %cmp118 = icmp sgt i64 %cond213.i.i.i, 0
  br i1 %cmp118, label %__here, label %if.end112.cleanup190_crit_edge

if.end112.cleanup190_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup190

__here:                                           ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %57 = call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 212
  %61 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 ptrtoint (ptr blockaddress(@lirc_transmit, %__here) to i32), ptr %task_state_change, align 4
  %62 = load ptr, ptr %task, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 1, ptr %62, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  %conv185 = trunc i64 %cond213.i.i.i to i32
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %conv185) #9
  %call187 = call i32 @schedule_timeout(i32 noundef %call3.i) #9
  br label %cleanup190

out_kfree:                                        ; preds = %for.end105.out_kfree_crit_edge, %for.body93.out_kfree_crit_edge
  %raw.1303 = phi ptr [ %raw.1304, %for.end105.out_kfree_crit_edge ], [ %raw.1305, %for.body93.out_kfree_crit_edge ]
  %txbuf.1301 = phi ptr [ %txbuf.1302, %for.end105.out_kfree_crit_edge ], [ %txbuf.1300, %for.body93.out_kfree_crit_edge ]
  %ret.1 = phi i32 [ %call108, %for.end105.out_kfree_crit_edge ], [ -22, %for.body93.out_kfree_crit_edge ]
  call void @kfree(ptr noundef %txbuf.1301) #9
  br label %out_kfree_raw

out_kfree_raw:                                    ; preds = %out_kfree, %cleanup
  %raw.2 = phi ptr [ %call7.i.i, %cleanup ], [ %raw.1303, %out_kfree ]
  %ret.2 = phi i32 [ %ret.0, %cleanup ], [ %ret.1, %out_kfree ]
  call void @kfree(ptr noundef %raw.2) #9
  br label %out_unlock

out_unlock:                                       ; preds = %out_kfree_raw, %if.then86, %if.end75.out_unlock_crit_edge, %if.else.out_unlock_crit_edge, %cleanup.thread, %if.end3.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_kfree_raw ], [ %48, %if.then86 ], [ -19, %if.end.out_unlock_crit_edge ], [ -22, %if.end3.out_unlock_crit_edge ], [ -22, %if.else.out_unlock_crit_edge ], [ -22, %if.end75.out_unlock_crit_edge ], [ %ret.0.ph, %cleanup.thread ]
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup190

cleanup190:                                       ; preds = %out_unlock, %__here, %if.end112.cleanup190_crit_edge, %entry.cleanup190_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_unlock ], [ %call, %entry.cleanup190_crit_edge ], [ %n, %__here ], [ %n, %if.end112.cleanup190_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lirc_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rc = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 8
  %wait_poll = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %wait_poll, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %file, ptr noundef nonnull %wait_poll, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %registered = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %poll_wait.exit.if.end23_crit_edge, label %if.else

poll_wait.exit.if.end23_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else:                                          ; preds = %poll_wait.exit
  %driver_type = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %if.else.if.end23_crit_edge, label %if.then1

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then1:                                         ; preds = %if.else
  %rec_mode = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %rec_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rec_mode, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.then1.if.end23_crit_edge [
    i8 8, label %if.end.thread
    i8 4, label %land.lhs.true12
  ]

if.then1.if.end23_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end.thread:                                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %scancodes = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 4
  %out = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  br label %if.end23.sink.split

land.lhs.true12:                                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %rawir = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 3
  %out16 = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %land.lhs.true12, %if.end.thread
  %out.sink = phi ptr [ %out, %if.end.thread ], [ %out16, %land.lhs.true12 ]
  %.sink.in = phi ptr [ %scancodes, %if.end.thread ], [ %rawir, %land.lhs.true12 ]
  %13 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink = load i32, ptr %.sink.in, align 4
  %14 = ptrtoint ptr %out.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out.sink, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink, i32 %15)
  %cmp4 = icmp eq i32 %.sink, %15
  %spec.select = select i1 %cmp4, i32 0, i32 65
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.then1.if.end23_crit_edge, %if.else.if.end23_crit_edge, %poll_wait.exit.if.end23_crit_edge
  %events.1 = phi i32 [ 0, %if.else.if.end23_crit_edge ], [ 24, %poll_wait.exit.if.end23_crit_edge ], [ 0, %if.then1.if.end23_crit_edge ], [ %spec.select, %if.end23.sink.split ]
  ret i32 %events.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lirc_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rc = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 8
  %4 = inttoptr i32 %arg to ptr
  %5 = and i32 %cmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 373) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !103
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #9, !srcloc !108
  %asmresult = extractvalue { i32, i32 } %9, 0
  %asmresult2 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool4.not = icmp eq i32 %asmresult, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %val.0 = phi i32 [ %asmresult2, %if.then.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ]
  %lock = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 9
  %call7 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %registered = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 46
  %10 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %if.end10.out_crit_edge, label %if.end13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.end10
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %cmd, label %if.end13.sw.epilog240.thread_crit_edge [
    i32 -2147194624, label %sw.bb
    i32 -2147194622, label %sw.bb57
    i32 1074030866, label %sw.bb62
    i32 -2147194623, label %sw.bb82
    i32 1074030865, label %sw.bb89
    i32 1074030871, label %sw.bb105
    i32 1074030867, label %sw.bb113
    i32 1074030869, label %sw.bb121
    i32 1074030868, label %sw.bb137
    i32 1074030879, label %sw.bb150
    i32 -2147194617, label %sw.bb162
    i32 1074030883, label %sw.bb169
    i32 1074030877, label %sw.bb179
    i32 -2147194616, label %sw.bb192
    i32 -2147194615, label %sw.bb198
    i32 1074030872, label %sw.bb205
    i32 -2147194588, label %sw.bb227
    i32 1074030873, label %sw.bb234
  ]

if.end13.sw.epilog240.thread_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

sw.bb:                                            ; preds = %if.end13
  %driver_type = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %or = or i32 %val.0, 524288
  %spec.select = select i1 %cmp, i32 %or, i32 %val.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp17 = icmp eq i32 %14, 1
  br i1 %cmp17, label %if.then18, label %sw.bb.if.end24_crit_edge

sw.bb.if.end24_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 37
  %15 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_resolution, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not = icmp eq i32 %16, 0
  %spec.select372.v = select i1 %tobool20.not, i32 262144, i32 537133056
  %spec.select372 = or i32 %spec.select372.v, %spec.select
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %sw.bb.if.end24_crit_edge
  %val.2 = phi i32 [ %spec.select, %sw.bb.if.end24_crit_edge ], [ %spec.select372, %if.then18 ]
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 54
  %17 = ptrtoint ptr %tx_ir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ir, align 8
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.end24.if.end40_crit_edge, label %if.then26

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %s_tx_mask = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 50
  %19 = ptrtoint ptr %s_tx_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_tx_mask, align 8
  %tobool28.not = icmp eq ptr %20, null
  %spec.select373.v = select i1 %tobool28.not, i32 2, i32 1026
  %spec.select373 = or i32 %spec.select373.v, %val.2
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 51
  %21 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_tx_carrier, align 4
  %tobool32.not = icmp eq ptr %22, null
  %or34 = or i32 %spec.select373, 256
  %val.4 = select i1 %tobool32.not, i32 %spec.select373, i32 %or34
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 52
  %23 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_tx_duty_cycle, align 8
  %tobool36.not = icmp eq ptr %24, null
  %or38 = or i32 %val.4, 512
  %spec.select383 = select i1 %tobool36.not, i32 %val.4, i32 %or38
  br label %if.end40

if.end40:                                         ; preds = %if.then26, %if.end24.if.end40_crit_edge
  %val.5 = phi i32 [ %val.2, %if.end24.if.end40_crit_edge ], [ %spec.select383, %if.then26 ]
  %s_rx_carrier_range = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 53
  %25 = ptrtoint ptr %s_rx_carrier_range to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_rx_carrier_range, align 4
  %tobool41.not = icmp eq ptr %26, null
  %or43 = or i32 %val.5, -2130706432
  %spec.select374 = select i1 %tobool41.not, i32 %val.5, i32 %or43
  %s_wideband_receiver = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 56
  %27 = ptrtoint ptr %s_wideband_receiver to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_wideband_receiver, align 8
  %tobool45.not = icmp eq ptr %28, null
  %or47 = or i32 %spec.select374, 67108864
  %val.7 = select i1 %tobool45.not, i32 %spec.select374, i32 %or47
  %s_carrier_report = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 57
  %29 = ptrtoint ptr %s_carrier_report to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_carrier_report, align 4
  %tobool49.not = icmp eq ptr %30, null
  %or51 = or i32 %val.7, 33554432
  %val.8 = select i1 %tobool49.not, i32 %val.7, i32 %or51
  %max_timeout = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 36
  %31 = ptrtoint ptr %max_timeout to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool53.not = icmp eq i32 %32, 0
  %or55 = or i32 %val.8, 268435456
  %spec.select384 = select i1 %tobool53.not, i32 %val.8, i32 %or55
  br label %if.then246

sw.bb57:                                          ; preds = %if.end13
  %driver_type58 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 13
  %33 = ptrtoint ptr %driver_type58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %driver_type58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp59 = icmp eq i32 %34, 2
  br i1 %cmp59, label %sw.bb57.sw.epilog240.thread_crit_edge, label %if.else

sw.bb57.sw.epilog240.thread_crit_edge:            ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else:                                          ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  %rec_mode = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %rec_mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rec_mode, align 1
  %conv = zext i8 %36 to i32
  br label %if.then246

sw.bb62:                                          ; preds = %if.end13
  %driver_type63 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 13
  %37 = ptrtoint ptr %driver_type63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_type63, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %38, label %sw.bb62.if.then78_crit_edge [
    i32 2, label %sw.bb62.sw.epilog240.thread_crit_edge
    i32 0, label %sw.epilog
    i32 1, label %sw.bb70
  ]

sw.bb62.sw.epilog240.thread_crit_edge:            ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

sw.bb62.if.then78_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

sw.bb70:                                          ; preds = %sw.bb62
  %40 = zext i32 %val.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %val.0, label %sw.bb70.sw.epilog240.thread_crit_edge [
    i32 4, label %sw.bb70.if.then78_crit_edge
    i32 8, label %sw.bb70.if.then78_crit_edge414
  ]

sw.bb70.if.then78_crit_edge414:                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

sw.bb70.if.then78_crit_edge:                      ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

sw.bb70.sw.epilog240.thread_crit_edge:            ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

sw.epilog:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %val.0)
  %cmp66.not = icmp eq i32 %val.0, 8
  br i1 %cmp66.not, label %sw.epilog.if.then78_crit_edge, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.epilog.if.then78_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then78

if.then78:                                        ; preds = %sw.epilog.if.then78_crit_edge, %sw.bb70.if.then78_crit_edge, %sw.bb70.if.then78_crit_edge414, %sw.bb62.if.then78_crit_edge
  %conv79 = trunc i32 %val.0 to i8
  %rec_mode80 = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 7
  %41 = ptrtoint ptr %rec_mode80 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv79, ptr %rec_mode80, align 1
  br label %out

sw.bb82:                                          ; preds = %if.end13
  %tx_ir83 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 54
  %42 = ptrtoint ptr %tx_ir83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_ir83, align 8
  %tobool84.not = icmp eq ptr %43, null
  br i1 %tobool84.not, label %sw.bb82.sw.epilog240.thread_crit_edge, label %if.else86

sw.bb82.sw.epilog240.thread_crit_edge:            ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else86:                                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #11
  %send_mode = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %send_mode to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %send_mode, align 4
  %conv87 = zext i8 %45 to i32
  br label %if.then246

sw.bb89:                                          ; preds = %if.end13
  %tx_ir90 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 54
  %46 = ptrtoint ptr %tx_ir90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_ir90, align 8
  %tobool91.not = icmp eq ptr %47, null
  br i1 %tobool91.not, label %sw.bb89.sw.epilog240.thread_crit_edge, label %if.else93

sw.bb89.sw.epilog240.thread_crit_edge:            ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else93:                                        ; preds = %sw.bb89
  %48 = zext i32 %val.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %val.0, label %if.else93.sw.epilog240.thread_crit_edge [
    i32 2, label %if.else93.if.else100_crit_edge
    i32 8, label %if.else93.if.else100_crit_edge415
  ]

if.else93.if.else100_crit_edge415:                ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else100

if.else93.if.else100_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else100

if.else93.sw.epilog240.thread_crit_edge:          ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else100:                                       ; preds = %if.else93.if.else100_crit_edge, %if.else93.if.else100_crit_edge415
  %conv101 = trunc i32 %val.0 to i8
  %send_mode102 = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %send_mode102 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv101, ptr %send_mode102, align 4
  br label %out

sw.bb105:                                         ; preds = %if.end13
  %s_tx_mask106 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 50
  %50 = ptrtoint ptr %s_tx_mask106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_tx_mask106, align 8
  %tobool107.not = icmp eq ptr %51, null
  br i1 %tobool107.not, label %sw.bb105.sw.epilog240.thread_crit_edge, label %if.else109

sw.bb105.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else109:                                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  %call111 = tail call i32 %51(ptr noundef %3, i32 noundef %val.0) #9
  br label %out

sw.bb113:                                         ; preds = %if.end13
  %s_tx_carrier114 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 51
  %52 = ptrtoint ptr %s_tx_carrier114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_tx_carrier114, align 4
  %tobool115.not = icmp eq ptr %53, null
  br i1 %tobool115.not, label %sw.bb113.sw.epilog240.thread_crit_edge, label %if.else117

sw.bb113.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else117:                                       ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #11
  %call119 = tail call i32 %53(ptr noundef %3, i32 noundef %val.0) #9
  br label %out

sw.bb121:                                         ; preds = %if.end13
  %s_tx_duty_cycle122 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 52
  %54 = ptrtoint ptr %s_tx_duty_cycle122 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_tx_duty_cycle122, align 8
  %tobool123.not = icmp eq ptr %55, null
  br i1 %tobool123.not, label %sw.bb121.sw.epilog240.thread_crit_edge, label %if.else125

sw.bb121.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else125:                                       ; preds = %sw.bb121
  %56 = add i32 %val.0, -100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %56)
  %57 = icmp ult i32 %56, -99
  br i1 %57, label %if.else125.sw.epilog240.thread_crit_edge, label %if.else132

if.else125.sw.epilog240.thread_crit_edge:         ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else132:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #11
  %call134 = tail call i32 %55(ptr noundef %3, i32 noundef %val.0) #9
  br label %out

sw.bb137:                                         ; preds = %if.end13
  %s_rx_carrier_range138 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 53
  %58 = ptrtoint ptr %s_rx_carrier_range138 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_rx_carrier_range138, align 4
  %tobool139.not = icmp eq ptr %59, null
  br i1 %tobool139.not, label %sw.bb137.sw.epilog240.thread_crit_edge, label %if.else141

sw.bb137.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else141:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp142 = icmp eq i32 %val.0, 0
  br i1 %cmp142, label %if.else141.sw.epilog240.thread_crit_edge, label %if.else145

if.else141.sw.epilog240.thread_crit_edge:         ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else145:                                       ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #11
  %carrier_low = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %carrier_low to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %carrier_low, align 4
  %call147 = tail call i32 %59(ptr noundef %3, i32 noundef %61, i32 noundef %val.0) #9
  br label %out

sw.bb150:                                         ; preds = %if.end13
  %s_rx_carrier_range151 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 53
  %62 = ptrtoint ptr %s_rx_carrier_range151 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_rx_carrier_range151, align 4
  %tobool152.not = icmp eq ptr %63, null
  br i1 %tobool152.not, label %sw.bb150.sw.epilog240.thread_crit_edge, label %if.else154

sw.bb150.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else154:                                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %cmp155 = icmp eq i32 %val.0, 0
  br i1 %cmp155, label %if.else154.sw.epilog240.thread_crit_edge, label %if.else158

if.else154.sw.epilog240.thread_crit_edge:         ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else158:                                       ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #11
  %carrier_low159 = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %carrier_low159 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %val.0, ptr %carrier_low159, align 4
  br label %out

sw.bb162:                                         ; preds = %if.end13
  %rx_resolution163 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 37
  %65 = ptrtoint ptr %rx_resolution163 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_resolution163, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool164.not = icmp eq i32 %66, 0
  br i1 %tobool164.not, label %sw.bb162.sw.epilog240.thread_crit_edge, label %sw.bb162.if.then246_crit_edge

sw.bb162.if.then246_crit_edge:                    ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then246

sw.bb162.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

sw.bb169:                                         ; preds = %if.end13
  %s_wideband_receiver170 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 56
  %67 = ptrtoint ptr %s_wideband_receiver170 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_wideband_receiver170, align 8
  %tobool171.not = icmp eq ptr %68, null
  br i1 %tobool171.not, label %sw.bb169.sw.epilog240.thread_crit_edge, label %if.else173

sw.bb169.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else173:                                       ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool175 = icmp ne i32 %val.0, 0
  %lnot.ext = zext i1 %tobool175 to i32
  %call177 = tail call i32 %68(ptr noundef %3, i32 noundef %lnot.ext) #9
  br label %out

sw.bb179:                                         ; preds = %if.end13
  %s_carrier_report180 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 57
  %69 = ptrtoint ptr %s_carrier_report180 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_carrier_report180, align 4
  %tobool181.not = icmp eq ptr %70, null
  br i1 %tobool181.not, label %sw.bb179.sw.epilog240.thread_crit_edge, label %if.else183

sw.bb179.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else183:                                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool185 = icmp ne i32 %val.0, 0
  %lnot.ext189 = zext i1 %tobool185 to i32
  %call190 = tail call i32 %70(ptr noundef %3, i32 noundef %lnot.ext189) #9
  br label %out

sw.bb192:                                         ; preds = %if.end13
  %max_timeout193 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 36
  %71 = ptrtoint ptr %max_timeout193 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_timeout193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool194.not = icmp eq i32 %72, 0
  br i1 %tobool194.not, label %sw.bb192.sw.epilog240.thread_crit_edge, label %if.else196

sw.bb192.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else196:                                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #11
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 35
  %73 = ptrtoint ptr %min_timeout to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %min_timeout, align 8
  br label %if.then246

sw.bb198:                                         ; preds = %if.end13
  %max_timeout199 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 36
  %75 = ptrtoint ptr %max_timeout199 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_timeout199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool200.not = icmp eq i32 %76, 0
  br i1 %tobool200.not, label %sw.bb198.sw.epilog240.thread_crit_edge, label %sw.bb198.if.then246_crit_edge

sw.bb198.if.then246_crit_edge:                    ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then246

sw.bb198.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

sw.bb205:                                         ; preds = %if.end13
  %max_timeout206 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 36
  %77 = ptrtoint ptr %max_timeout206 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_timeout206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool207.not = icmp eq i32 %78, 0
  br i1 %tobool207.not, label %sw.bb205.sw.epilog240.thread_crit_edge, label %if.else209

sw.bb205.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb205
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else209:                                       ; preds = %sw.bb205
  %min_timeout210 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 35
  %79 = ptrtoint ptr %min_timeout210 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %min_timeout210, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %80)
  %cmp211 = icmp ult i32 %val.0, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %78)
  %cmp215 = icmp ugt i32 %val.0, %78
  %or.cond379 = select i1 %cmp211, i1 true, i1 %cmp215
  br i1 %or.cond379, label %if.else209.sw.epilog240.thread_crit_edge, label %if.else218

if.else209.sw.epilog240.thread_crit_edge:         ; preds = %if.else209
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

if.else218:                                       ; preds = %if.else209
  %s_timeout = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 60
  %81 = ptrtoint ptr %s_timeout to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_timeout, align 8
  %tobool219.not = icmp eq ptr %82, null
  br i1 %tobool219.not, label %if.else223, label %if.then220

if.then220:                                       ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #11
  %call222 = tail call i32 %82(ptr noundef %3, i32 noundef %val.0) #9
  br label %out

if.else223:                                       ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #11
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 34
  %83 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %val.0, ptr %timeout, align 4
  br label %out

sw.bb227:                                         ; preds = %if.end13
  %timeout228 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 34
  %84 = ptrtoint ptr %timeout228 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %timeout228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool229.not = icmp eq i32 %85, 0
  br i1 %tobool229.not, label %sw.bb227.sw.epilog240.thread_crit_edge, label %sw.bb227.if.then246_crit_edge

sw.bb227.if.then246_crit_edge:                    ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then246

sw.bb227.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

sw.bb234:                                         ; preds = %if.end13
  %driver_type235 = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 13
  %86 = ptrtoint ptr %driver_type235 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %driver_type235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp236.not = icmp eq i32 %87, 1
  br i1 %cmp236.not, label %sw.bb234.out_crit_edge, label %sw.bb234.sw.epilog240.thread_crit_edge

sw.bb234.sw.epilog240.thread_crit_edge:           ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog240.thread

sw.bb234.out_crit_edge:                           ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.epilog240.thread:                              ; preds = %sw.bb234.sw.epilog240.thread_crit_edge, %sw.bb227.sw.epilog240.thread_crit_edge, %if.else209.sw.epilog240.thread_crit_edge, %sw.bb205.sw.epilog240.thread_crit_edge, %sw.bb198.sw.epilog240.thread_crit_edge, %sw.bb192.sw.epilog240.thread_crit_edge, %sw.bb179.sw.epilog240.thread_crit_edge, %sw.bb169.sw.epilog240.thread_crit_edge, %sw.bb162.sw.epilog240.thread_crit_edge, %if.else154.sw.epilog240.thread_crit_edge, %sw.bb150.sw.epilog240.thread_crit_edge, %if.else141.sw.epilog240.thread_crit_edge, %sw.bb137.sw.epilog240.thread_crit_edge, %if.else125.sw.epilog240.thread_crit_edge, %sw.bb121.sw.epilog240.thread_crit_edge, %sw.bb113.sw.epilog240.thread_crit_edge, %sw.bb105.sw.epilog240.thread_crit_edge, %if.else93.sw.epilog240.thread_crit_edge, %sw.bb89.sw.epilog240.thread_crit_edge, %sw.bb82.sw.epilog240.thread_crit_edge, %sw.bb70.sw.epilog240.thread_crit_edge, %sw.bb62.sw.epilog240.thread_crit_edge, %sw.bb57.sw.epilog240.thread_crit_edge, %if.end13.sw.epilog240.thread_crit_edge
  %ret.1.ph = phi i32 [ -25, %if.end13.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb234.sw.epilog240.thread_crit_edge ], [ -22, %if.else209.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb205.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb192.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb179.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb169.sw.epilog240.thread_crit_edge ], [ -22, %if.else154.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb150.sw.epilog240.thread_crit_edge ], [ -22, %if.else141.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb137.sw.epilog240.thread_crit_edge ], [ -22, %if.else125.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb121.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb113.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb105.sw.epilog240.thread_crit_edge ], [ -22, %if.else93.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb89.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb82.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb57.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb62.sw.epilog240.thread_crit_edge ], [ -22, %sw.bb70.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb162.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb198.sw.epilog240.thread_crit_edge ], [ -25, %sw.bb227.sw.epilog240.thread_crit_edge ]
  br label %out

if.then246:                                       ; preds = %sw.bb227.if.then246_crit_edge, %sw.bb198.if.then246_crit_edge, %if.else196, %sw.bb162.if.then246_crit_edge, %if.else86, %if.else, %if.end40
  %val.9.ph.ph = phi i32 [ %74, %if.else196 ], [ %conv87, %if.else86 ], [ %conv, %if.else ], [ %66, %sw.bb162.if.then246_crit_edge ], [ %76, %sw.bb198.if.then246_crit_edge ], [ %85, %sw.bb227.if.then246_crit_edge ], [ %spec.select384, %if.end40 ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 577) #9
  %88 = tail call i32 @llvm.read_register.i32(metadata !80) #9
  %and.i.i.i385 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i385 to ptr
  %cpu_domain.i.i386 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 4
  %90 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i386) #8, !srcloc !103
  %and.i387 = and i32 %90, -13
  %or.i388 = or i32 %and.i387, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i388) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  %91 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %val.9.ph.ph, i32 -1226833921) #9, !srcloc !109
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #9, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  br label %out

out:                                              ; preds = %if.then246, %sw.epilog240.thread, %sw.bb234.out_crit_edge, %if.else223, %if.then220, %if.else183, %if.else173, %if.else158, %if.else145, %if.else132, %if.else117, %if.else109, %if.else100, %if.then78, %sw.epilog.out_crit_edge, %if.end10.out_crit_edge
  %ret.2 = phi i32 [ %91, %if.then246 ], [ -19, %if.end10.out_crit_edge ], [ %ret.1.ph, %sw.epilog240.thread ], [ 0, %if.else223 ], [ 0, %if.else158 ], [ 0, %if.else100 ], [ 0, %if.then78 ], [ 0, %sw.bb234.out_crit_edge ], [ %call222, %if.then220 ], [ %call190, %if.else183 ], [ %call177, %if.else173 ], [ %call147, %if.else145 ], [ %call134, %if.else132 ], [ %call119, %if.else117 ], [ %call111, %if.else109 ], [ -22, %sw.epilog.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ %asmresult, %if.then.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lirc_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -2336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 120) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @get_device(ptr noundef %add.ptr) #9
  %registered = getelementptr i8, ptr %2, i32 232
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %registered, align 8, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.out_fh_crit_edge, label %if.end6

if.end.out_fh_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fh

if.end6:                                          ; preds = %if.end
  %driver_type = getelementptr i8, ptr %2, i32 -1188
  %6 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then7, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then7:                                         ; preds = %if.end6
  %rawir = getelementptr inbounds %struct.lirc_fh, ptr %call7.i.i, i32 0, i32 3
  %call9 = tail call i32 @__kfifo_alloc(ptr noundef %rawir, i32 noundef 512, i32 noundef 4, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end14thread-pre-split, label %if.then7.out_fh_crit_edge

if.then7.out_fh_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fh

if.end14thread-pre-split:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %driver_type, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end14thread-pre-split, %if.end6.if.end14_crit_edge
  %9 = phi i32 [ %.pr, %if.end14thread-pre-split ], [ %7, %if.end6.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp16.not = icmp eq i32 %9, 2
  br i1 %cmp16.not, label %if.end14.if.end26_crit_edge, label %if.then17

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then17:                                        ; preds = %if.end14
  %scancodes = getelementptr inbounds %struct.lirc_fh, ptr %call7.i.i, i32 0, i32 4
  %call21 = tail call i32 @__kfifo_alloc(ptr noundef %scancodes, i32 noundef 32, i32 noundef 24, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.then17.if.end26_crit_edge, label %if.then17.out_rawir_crit_edge

if.then17.out_rawir_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rawir

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %if.then17.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  %send_mode = getelementptr inbounds %struct.lirc_fh, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %send_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %send_mode, align 4
  %rc = getelementptr inbounds %struct.lirc_fh, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %rc, align 8
  %12 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp28 = icmp eq i32 %13, 0
  %spec.select = select i1 %cmp28, i8 8, i8 4
  %14 = getelementptr inbounds %struct.lirc_fh, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select, ptr %14, align 1
  %call32 = tail call i32 @rc_open(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body, label %out_kfifo

do.body:                                          ; preds = %if.end26
  %wait_poll = getelementptr inbounds %struct.lirc_fh, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait_poll, ptr noundef nonnull @.str.32, ptr noundef nonnull @lirc_open.__key) #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %private_data, align 4
  %lirc_fh_lock = getelementptr i8, ptr %2, i32 180
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lirc_fh_lock) #9
  %lirc_fh = getelementptr i8, ptr %2, i32 224
  %17 = ptrtoint ptr %lirc_fh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lirc_fh, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %lirc_fh, ptr noundef %18) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_add.exit_crit_edge

do.body.list_add.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %lirc_fh, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %lirc_fh to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i, ptr %lirc_fh, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lirc_fh_lock, i32 noundef %call41) #9
  %call47 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #9
  br label %cleanup

out_kfifo:                                        ; preds = %if.end26
  %23 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp49.not = icmp eq i32 %24, 2
  br i1 %cmp49.not, label %out_kfifo.out_fh_crit_edge, label %if.then51

out_kfifo.out_fh_crit_edge:                       ; preds = %out_kfifo
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fh

if.then51:                                        ; preds = %out_kfifo
  call void @__sanitizer_cov_trace_pc() #11
  %scancodes53 = getelementptr inbounds %struct.lirc_fh, ptr %call7.i.i, i32 0, i32 4
  tail call void @__kfifo_free(ptr noundef %scancodes53) #9
  br label %out_rawir

out_rawir:                                        ; preds = %if.then51, %if.then17.out_rawir_crit_edge
  %retval1.0.ph = phi i32 [ -12, %if.then17.out_rawir_crit_edge ], [ %call32, %if.then51 ]
  %25 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr95 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr95)
  %cmp57 = icmp eq i32 %.pr95, 1
  br i1 %cmp57, label %if.then59, label %out_rawir.out_fh_crit_edge

out_rawir.out_fh_crit_edge:                       ; preds = %out_rawir
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fh

if.then59:                                        ; preds = %out_rawir
  call void @__sanitizer_cov_trace_pc() #11
  %rawir61 = getelementptr inbounds %struct.lirc_fh, ptr %call7.i.i, i32 0, i32 3
  tail call void @__kfifo_free(ptr noundef %rawir61) #9
  br label %out_fh

out_fh:                                           ; preds = %if.then59, %out_rawir.out_fh_crit_edge, %out_kfifo.out_fh_crit_edge, %if.then7.out_fh_crit_edge, %if.end.out_fh_crit_edge
  %retval1.1 = phi i32 [ %retval1.0.ph, %if.then59 ], [ %retval1.0.ph, %out_rawir.out_fh_crit_edge ], [ -19, %if.end.out_fh_crit_edge ], [ -12, %if.then7.out_fh_crit_edge ], [ %call32, %out_kfifo.out_fh_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  tail call void @put_device(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %out_fh, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %out_fh ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lirc_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rc = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 8
  %lirc_fh_lock = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 44
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lirc_fh_lock) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lirc_fh_lock, i32 noundef %call2) #9
  %driver_type = getelementptr inbounds %struct.rc_dev, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rawir = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 3
  tail call void @__kfifo_free(ptr noundef %rawir) #9
  %14 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %driver_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %15 = phi i32 [ %.pr, %if.then ], [ %13, %list_del.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp9.not = icmp eq i32 %15, 2
  br i1 %cmp9.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %scancodes = getelementptr inbounds %struct.lirc_fh, ptr %1, i32 0, i32 4
  tail call void @__kfifo_free(ptr noundef %scancodes) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  tail call void @kfree(ptr noundef %1) #9
  tail call void @rc_close(ptr noundef %3) #9
  tail call void @put_device(ptr noundef %3) #9
  ret i32 0
}

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
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rc_validate_scancode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_encode_scancode(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_encode_carrier(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !68, !70, !72, !73, !75, !77, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/lirc_dev.c", i32 54, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @lirc_raw_event.__UNIQUE_ID_ddebug228, !1, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/rc/lirc_dev.c", i32 59, i32 3}
!8 = !{ptr @lirc_raw_event.__UNIQUE_ID_ddebug229, !7, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/lirc_dev.c", i32 71, i32 3}
!11 = !{ptr @lirc_raw_event.__UNIQUE_ID_ddebug230, !10, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/lirc_dev.c", i32 93, i32 3}
!14 = !{ptr @lirc_raw_event.__UNIQUE_ID_ddebug233, !13, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_lirc_scancode_event, !18, !"__ksymtab_lirc_scancode_event", i1 false, i1 false}
!18 = !{!"../drivers/media/rc/lirc_dev.c", i32 131, i32 1}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/rc/lirc_dev.c", i32 735, i32 31}
!21 = !{ptr @lirc_register.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/lirc_dev.c", i32 738, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/lirc_dev.c", i32 750, i32 13}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/lirc_dev.c", i32 753, i32 13}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/lirc_dev.c", i32 756, i32 13}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/lirc_dev.c", i32 765, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lirc_register._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @lirc_register._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/rc/lirc_dev.c", i32 780, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @lirc_unregister.__UNIQUE_ID_ddebug235, !38, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!41 = !{ptr @lirc_dev_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/lirc_dev.c", i32 796, i32 15}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/lirc_dev.c", i32 798, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lirc_dev_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lirc_dev_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/rc/lirc_dev.c", i32 805, i32 3}
!51 = !{ptr @lirc_dev_init._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @lirc_dev_init._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/rc/lirc_dev.c", i32 809, i32 2}
!55 = !{ptr @lirc_dev_init.__UNIQUE_ID_ddebug236, !54, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!56 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_alias237, !58, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!58 = !{!"../drivers/media/rc/lirc_dev.c", i32 844, i32 1}
!59 = !{ptr @lirc_base_dev, !60, !"lirc_base_dev", i1 false, i1 false}
!60 = !{!"../drivers/media/rc/lirc_dev.c", i32 24, i32 14}
!61 = !{ptr @lirc_class, !62, !"lirc_class", i1 false, i1 false}
!62 = !{!"../drivers/media/rc/lirc_dev.c", i32 30, i32 22}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/rc/lirc_dev.c", i32 27, i32 8}
!65 = !{ptr @lirc_ida, !64, !"lirc_ida", i1 false, i1 false}
!66 = !{ptr @lirc_fops, !67, !"lirc_fops", i1 false, i1 false}
!67 = !{!"../drivers/media/rc/lirc_dev.c", i32 702, i32 37}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/media/rc/lirc_dev.c", i32 350, i32 3}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!72 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!77 = !{ptr @lirc_open.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/media/rc/lirc_dev.c", i32 177, i32 2}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148969712, i64 2148969717, i64 2148969730, i64 2148969774, i64 2148969808, i64 2148969829}
!91 = !{i8 0, i8 2}
!92 = !{i64 717215, i64 717242, i64 717264, i64 717292}
!93 = !{i64 717623, i64 717650, i64 717683, i64 717704, i64 717731, i64 717757}
!94 = !{i64 2154324091}
!95 = !{i64 2154331844}
!96 = !{i64 2154341358}
!97 = !{!98}
!98 = distinct !{!98, !99, !"fdget: %agg.result"}
!99 = distinct !{!99, !"fdget"}
!100 = !{!"auto-init"}
!101 = !{i64 2152668160, i64 2152668185}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 5163715}
!104 = !{i64 5163912}
!105 = !{i64 2152649145}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i64 2154356257}
!108 = !{i64 2154365007, i64 2154365287, i64 2154365621, i64 2154365955}
!109 = !{i64 2154388464, i64 2154388744, i64 2154389078, i64 2154389412}
