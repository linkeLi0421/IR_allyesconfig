; ModuleID = '/llk/IR_all_yes/drivers/parport/daisy.c_pt.bc'
source_filename = "../drivers/parport/daisy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.daisydev = type { ptr, ptr, i32, i32 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }

@parport_daisy_init.th = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"th\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"st\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"nd\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rd\00", [29 x i8] zeroinitializer }, align 32
@daisy_init_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@daisy_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str.14, ptr null, ptr null, ptr null, ptr @daisy_drv_probe, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"parport\00", [24 x i8] zeroinitializer }, align 32
@parport_daisy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013daisy registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"parport_daisy_init\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/parport/daisy.c\00", [40 x i8] zeroinitializer }, align 32
@parport_daisy_init._entry_ptr = internal global ptr @parport_daisy_init._entry, section ".printk_index", align 4
@parport_daisy_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: 1st (default) port of %d-way multiplexor\0A\00", [48 x i8] zeroinitializer }, align 32
@parport_daisy_init._entry_ptr.10 = internal global ptr @parport_daisy_init._entry.8, section ".printk_index", align 4
@parport_daisy_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: %d%s port of %d-way multiplexor on %s\0A\00", [51 x i8] zeroinitializer }, align 32
@parport_daisy_init._entry_ptr.13 = internal global ptr @parport_daisy_init._entry.11, section ".printk_index", align 4
@numdevs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@topology_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@topology = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"daisy_drv\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Device ID probe\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"topology_lock\00", [18 x i8] zeroinitializer }, align 32
@cpp_daisy.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.17, ptr @.str.7, ptr @.str.18, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpp_daisy\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: cpp_daisy: aa5500ff(%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@cpp_daisy.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.17, ptr @.str.7, ptr @.str.19, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: cpp_daisy: aa5500ff87(%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@cpp_mux.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.20, ptr @.str.7, ptr @.str.21, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpp_mux\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: cpp_mux: aa55f00f52ad%02x(%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@assign_addrs.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.7, ptr @.str.23, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"assign_addrs\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: assign_addrs: aa5500ff(%02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@assign_addrs.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.7, ptr @.str.24, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: assign_addrs: aa5500ff87(%02x)\0A\00", [60 x i8] zeroinitializer }, align 32
@assign_addrs.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.7, ptr @.str.25, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Found %d daisy-chained devices\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 16, i64 48, i64 64, i64 1024, i64 2048, i64 4096]
@___asan_gen_.27 = private unnamed_addr constant [3 x i8] c"th\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 109, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 109, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 109, i32 41 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 109, i32 47 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 109, i32 53 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"daisy_init_done\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"daisy_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 97, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 123, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 125, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 142, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 155, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"numdevs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 41, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"topology_lock\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"topology\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 38, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 98, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 91, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 39, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 318, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 328, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 363, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 449, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 459, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [27 x i8] c"../drivers/parport/daisy.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 496, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @parport_daisy_init._entry, ptr @parport_daisy_init._entry.11, ptr @parport_daisy_init._entry.8, ptr @parport_daisy_init._entry_ptr, ptr @parport_daisy_init._entry_ptr.10, ptr @parport_daisy_init._entry_ptr.13, ptr @parport_daisy_init.th, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @daisy_init_done, ptr @daisy_driver, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @numdevs, ptr @topology_lock, ptr @topology, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_daisy_init.th to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daisy_init_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @daisy_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_daisy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_daisy_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_daisy_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numdevs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topology_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topology to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_daisy_init(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b99 = load i1, ptr @daisy_init_done, align 1
  br i1 %.b99, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  store i1 true, ptr @daisy_init_done, align 1
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @daisy_driver, ptr noundef null, ptr noundef nonnull @.str.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  store i1 false, ptr @daisy_init_done, align 1
  br label %cleanup62

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %muxport = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 7
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %irq.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 5
  %dma.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 6
  %ops.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %portnum.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 8
  br label %again

again:                                            ; preds = %parport_daisy_fini.exit, %if.end4
  %tobool57.not = phi i1 [ true, %parport_daisy_fini.exit ], [ false, %if.end4 ]
  %0 = ptrtoint ptr %muxport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %muxport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %again.if.then40_crit_edge

again.if.then40_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

land.lhs.true:                                    ; preds = %again
  %call.i = tail call fastcc i32 @cpp_mux(ptr noundef %port, i32 noundef 81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 3
  br i1 %cmp.i.not, label %land.lhs.true7, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call.i100 = tail call fastcc i32 @cpp_mux(ptr noundef %port, i32 noundef 88) #8
  %2 = zext i32 %call.i100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i100, label %land.lhs.true7.if.end37_crit_edge [
    i32 2, label %land.lhs.true7.for.body.preheader_crit_edge
    i32 4, label %land.lhs.true7.for.body.preheader_crit_edge121
  ]

land.lhs.true7.for.body.preheader_crit_edge121:   ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

land.lhs.true7.for.body.preheader_crit_edge:      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

land.lhs.true7.if.end37_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.body.preheader:                               ; preds = %land.lhs.true7.for.body.preheader_crit_edge, %land.lhs.true7.for.body.preheader_crit_edge121
  %3 = ptrtoint ptr %muxport to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %muxport, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %5, i32 noundef %call.i100) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0119 = phi i32 [ %inc.pre-phi, %for.inc.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 8
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  %10 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma.i, align 8
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %call.i101 = tail call ptr @parport_register_port(i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %13) #8
  %tobool.not.i = icmp eq ptr %call.i101, null
  br i1 %tobool.not.i, label %if.then21, label %do.end30

if.then21:                                        ; preds = %for.body
  %14 = tail call i32 @llvm.read_register.i32(metadata !62) #8
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i102 = icmp eq i32 %22, 0
  br i1 %tobool.not.i102, label %signal_pending.exit, label %if.then21.if.end37_crit_edge, !prof !72

if.then21.if.end37_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

signal_pending.exit:                              ; preds = %if.then21
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool24.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool24.not, label %if.end26, label %signal_pending.exit.if.end37_crit_edge

signal_pending.exit.if.end37_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end26:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @schedule() #8
  %.pre = add nuw nsw i32 %i.0119, 1
  br label %for.inc

do.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %portnum.i, align 8
  %portnum1.i = getelementptr inbounds %struct.parport, ptr %call.i101, i32 0, i32 8
  %27 = ptrtoint ptr %portnum1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %portnum1.i, align 8
  %physport.i = getelementptr inbounds %struct.parport, ptr %call.i101, i32 0, i32 11
  %28 = ptrtoint ptr %physport.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %port, ptr %physport.i, align 8
  %muxport2.i = getelementptr inbounds %struct.parport, ptr %call.i101, i32 0, i32 7
  %29 = ptrtoint ptr %muxport2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.0119, ptr %muxport2.i, align 4
  %sub.i = add nsw i32 %i.0119, -1
  %arrayidx.i = getelementptr %struct.parport, ptr %port, i32 0, i32 35, i32 %sub.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i101, ptr %arrayidx.i, align 4
  %name32 = getelementptr inbounds %struct.parport, ptr %call.i101, i32 0, i32 3
  %31 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name32, align 4
  %add = add nuw nsw i32 %i.0119, 1
  %arrayidx = getelementptr [5 x ptr], ptr @parport_daisy_init.th, i32 0, i32 %add
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %32, i32 noundef %add, ptr noundef %34, i32 noundef %call.i100, ptr noundef %36) #11
  %call36 = tail call i32 @parport_daisy_init(ptr noundef nonnull %call.i101)
  br label %for.inc

for.inc:                                          ; preds = %do.end30, %if.end26
  %inc.pre-phi = phi i32 [ %.pre, %if.end26 ], [ %add, %do.end30 ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, %call.i100
  br i1 %exitcond.not, label %for.inc.if.end37_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end37_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %for.inc.if.end37_crit_edge, %signal_pending.exit.if.end37_crit_edge, %if.then21.if.end37_crit_edge, %land.lhs.true7.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge
  %37 = ptrtoint ptr %muxport to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %muxport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp39 = icmp sgt i32 %.pr, -1
  br i1 %cmp39, label %if.end37.if.then40_crit_edge, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end37.if.then40_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %if.end37.if.then40_crit_edge, %again.if.then40_crit_edge
  %38 = phi i32 [ %.pr, %if.end37.if.then40_crit_edge ], [ %1, %again.if.then40_crit_edge ]
  %add.i = add nuw i32 %38, 96
  %call.i103 = tail call fastcc i32 @cpp_mux(ptr noundef %port, i32 noundef %add.i) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %call.i104 = tail call fastcc i32 @cpp_daisy(ptr noundef %port, i32 noundef 48) #8
  %call43 = tail call fastcc i32 @assign_addrs(ptr noundef %port)
  %39 = load i32, ptr @numdevs, align 4
  %inc45 = add i32 %39, 1
  store i32 %inc45, ptr @numdevs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not.i105 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i105, label %if.end42.add_dev.exit_crit_edge, label %if.then.i106

if.end42.add_dev.exit_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_dev.exit

if.then.i106:                                     ; preds = %if.end42
  %port1.i = getelementptr inbounds %struct.daisydev, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %port1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %port, ptr %port1.i, align 4
  %daisy2.i = getelementptr inbounds %struct.daisydev, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %daisy2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %daisy2.i, align 8
  %devnum3.i = getelementptr inbounds %struct.daisydev, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %devnum3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %devnum3.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @topology_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.then.i106
  %p.0.i = phi ptr [ @topology, %if.then.i106 ], [ %45, %land.rhs.i.for.cond.i_crit_edge ]
  %44 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %p.0.i, align 4
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %for.cond.i.for.end.i_crit_edge, label %land.rhs.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.rhs.i:                                       ; preds = %for.cond.i
  %devnum5.i = getelementptr inbounds %struct.daisydev, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %devnum5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devnum5.i, align 4
  %cmp.i107 = icmp slt i32 %47, %39
  br i1 %cmp.i107, label %land.rhs.i.for.cond.i_crit_edge, label %land.rhs.i.for.end.i_crit_edge

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %land.rhs.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %call7.i.i, align 8
  %49 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %p.0.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @topology_lock) #8
  br label %add_dev.exit

add_dev.exit:                                     ; preds = %for.end.i, %if.end42.add_dev.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 1024) #12
  %tobool47.not = icmp eq ptr %call7.i, null
  br i1 %tobool47.not, label %add_dev.exit.if.end54_crit_edge, label %if.then48

add_dev.exit.if.end54_crit_edge:                  ; preds = %add_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then48:                                        ; preds = %add_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  %51 = load i32, ptr @numdevs, align 4
  %sub = add i32 %51, -1
  %call49 = tail call i32 @parport_device_id(i32 noundef %sub, ptr noundef nonnull %call7.i, i32 noundef 1024) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call49)
  %cmp50 = icmp sgt i32 %call49, 2
  %inc52 = zext i1 %cmp50 to i32
  %spec.select = add i32 %call43, %inc52
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %add_dev.exit.if.end54_crit_edge
  %detected.2 = phi i32 [ %spec.select, %if.then48 ], [ %call43, %add_dev.exit.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %detected.2)
  %tobool55.not = icmp ne i32 %detected.2, 0
  %brmerge = or i1 %tobool57.not, %tobool55.not
  br i1 %brmerge, label %if.end54.cleanup62_crit_edge, label %if.then58

if.end54.cleanup62_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

if.then58:                                        ; preds = %if.end54
  tail call void @_raw_spin_lock(ptr noundef nonnull @topology_lock) #8
  %52 = load ptr, ptr @topology, align 4
  %tobool.not12.i = icmp eq ptr %52, null
  br i1 %tobool.not12.i, label %if.then58.if.then4.i_crit_edge, label %if.then58.while.body.i_crit_edge

if.then58.while.body.i_crit_edge:                 ; preds = %if.then58
  br label %while.body.i

if.then58.if.then4.i_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then58.while.body.i_crit_edge
  %53 = phi ptr [ %60, %cleanup.i.while.body.i_crit_edge ], [ %52, %if.then58.while.body.i_crit_edge ]
  %p.013.i = phi ptr [ %p.1.i, %cleanup.i.while.body.i_crit_edge ], [ @topology, %if.then58.while.body.i_crit_edge ]
  %port1.i109 = getelementptr inbounds %struct.daisydev, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %port1.i109 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port1.i109, align 4
  %cmp.not.i = icmp eq ptr %55, %port
  br i1 %cmp.not.i, label %if.end.i110, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i110:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %53, align 4
  %58 = ptrtoint ptr %p.013.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %p.013.i, align 4
  tail call void @kfree(ptr noundef nonnull %53) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i110, %while.body.i.cleanup.i_crit_edge
  %p.1.i = phi ptr [ %p.013.i, %if.end.i110 ], [ %53, %while.body.i.cleanup.i_crit_edge ]
  %59 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i111 = icmp eq ptr %60, null
  br i1 %tobool.not.i111, label %while.end.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i
  %.pr.i = load ptr, ptr @topology, align 4
  %tobool3.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool3.not.i, label %while.end.i.if.then4.i_crit_edge, label %while.end.i.parport_daisy_fini.exit_crit_edge

while.end.i.parport_daisy_fini.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parport_daisy_fini.exit

while.end.i.if.then4.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %while.end.i.if.then4.i_crit_edge, %if.then58.if.then4.i_crit_edge
  store i32 0, ptr @numdevs, align 4
  br label %parport_daisy_fini.exit

parport_daisy_fini.exit:                          ; preds = %if.then4.i, %while.end.i.parport_daisy_fini.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @topology_lock) #8
  %61 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_control, align 4
  tail call void %64(ptr noundef %port, i8 noundef zeroext 8) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 10737400) #8
  %66 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i, align 4
  %write_control60 = getelementptr inbounds %struct.parport_operations, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %write_control60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_control60, align 4
  tail call void %69(ptr noundef %port, i8 noundef zeroext 12) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 10737400) #8
  br label %again

cleanup62:                                        ; preds = %if.end54.cleanup62_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %detected.2, %if.end54.cleanup62_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_daisy_deselect_all(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpp_daisy(ptr noundef %port, i32 noundef 48)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @assign_addrs(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @numdevs, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %data_forward = getelementptr inbounds %struct.parport_operations, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %data_forward to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_forward, align 4
  tail call void %4(ptr noundef %port) #8
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %port, i8 noundef zeroext -86) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #8
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void %13(ptr noundef %port, i8 noundef zeroext 85) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #8
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void %18(ptr noundef %port, i8 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496) #8
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef %port, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 429496) #8
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_status, align 4
  %call = tail call zeroext i8 %28(ptr noundef %port) #8
  %29 = and i8 %call, -72
  %conv10 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %29)
  %cmp.not = icmp eq i8 %29, -72
  br i1 %cmp.not, label %if.end17, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @assign_addrs.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@assign_addrs, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !73

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @assign_addrs.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.23, ptr noundef %31, i32 noundef %conv10) #8
  br label %cleanup

if.end17:                                         ; preds = %entry
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void %35(ptr noundef %port, i8 noundef zeroext -121) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 429496) #8
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %read_status21 = getelementptr inbounds %struct.parport_operations, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %read_status21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_status21, align 4
  %call22 = tail call zeroext i8 %40(ptr noundef %port) #8
  %41 = and i8 %call22, -72
  %conv26 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %41)
  %cmp27.not = icmp eq i8 %41, 24
  br i1 %cmp27.not, label %if.end48, label %do.body30

do.body30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @assign_addrs.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@assign_addrs, %if.then42)) #8
          to label %cleanup [label %if.then42], !srcloc !73

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %name43 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %42 = ptrtoint ptr %name43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name43, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @assign_addrs.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.24, ptr noundef %43, i32 noundef %conv26) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end17
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void %47(ptr noundef %port, i8 noundef zeroext 120) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 429496) #8
  %49 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops, align 4
  %read_status52 = getelementptr inbounds %struct.parport_operations, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %read_status52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read_status52, align 4
  %call53 = tail call zeroext i8 %52(ptr noundef %port) #8
  %conv54171 = zext i8 %call53 to i32
  %and55172 = and i32 %conv54171, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and55172)
  %cmp56173 = icmp eq i32 %and55172, 48
  br i1 %cmp56173, label %if.end48.for.body_crit_edge, label %if.end48.for.end_crit_edge

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

for.body:                                         ; preds = %if.end73.for.body_crit_edge, %if.end48.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %if.end73.for.body_crit_edge ], [ 0, %if.end48.for.body_crit_edge ]
  %conv54175 = phi i32 [ %conv54, %if.end73.for.body_crit_edge ], [ %conv54171, %if.end48.for.body_crit_edge ]
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = trunc i32 %indvars.iv to i8
  tail call void %56(ptr noundef %port, i8 noundef zeroext %57) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 429496) #8
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops, align 4
  %frob_control = getelementptr inbounds %struct.parport_operations, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %frob_control to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %frob_control, align 4
  %call64 = tail call zeroext i8 %62(ptr noundef %port, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748) #8
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops, align 4
  %frob_control66 = getelementptr inbounds %struct.parport_operations, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %frob_control66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %frob_control66, align 4
  %call67 = tail call zeroext i8 %67(ptr noundef %port, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748) #8
  %69 = load i32, ptr @numdevs, align 4
  %inc = add i32 %69, 1
  store i32 %inc, ptr @numdevs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.add_dev.exit_crit_edge, label %if.then.i

for.body.add_dev.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_dev.exit

if.then.i:                                        ; preds = %for.body
  %port1.i = getelementptr inbounds %struct.daisydev, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %port1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %port, ptr %port1.i, align 4
  %daisy2.i = getelementptr inbounds %struct.daisydev, ptr %call7.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %daisy2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %indvars.iv, ptr %daisy2.i, align 8
  %devnum3.i = getelementptr inbounds %struct.daisydev, ptr %call7.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %devnum3.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %69, ptr %devnum3.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @topology_lock) #8
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.then.i
  %p.0.i = phi ptr [ @topology, %if.then.i ], [ %75, %land.rhs.i.for.cond.i_crit_edge ]
  %74 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %p.0.i, align 4
  %tobool4.not.i = icmp eq ptr %75, null
  br i1 %tobool4.not.i, label %for.cond.i.for.end.i_crit_edge, label %land.rhs.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.rhs.i:                                       ; preds = %for.cond.i
  %devnum5.i = getelementptr inbounds %struct.daisydev, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %devnum5.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %devnum5.i, align 4
  %cmp.i = icmp slt i32 %77, %69
  br i1 %cmp.i, label %land.rhs.i.for.cond.i_crit_edge, label %land.rhs.i.for.end.i_crit_edge

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %land.rhs.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %78 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %call7.i.i, align 8
  %79 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i, ptr %p.0.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @topology_lock) #8
  br label %add_dev.exit

add_dev.exit:                                     ; preds = %for.end.i, %for.body.add_dev.exit_crit_edge
  %and70 = and i32 %conv54175, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %add_dev.exit.for.end_crit_edge, label %if.end73

add_dev.exit.for.end_crit_edge:                   ; preds = %add_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end73:                                         ; preds = %add_dev.exit
  %80 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops, align 4
  %read_status75 = getelementptr inbounds %struct.parport_operations, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %read_status75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read_status75, align 4
  %call76 = tail call zeroext i8 %83(ptr noundef %port) #8
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %conv54 = zext i8 %call76 to i32
  %and55 = and i32 %conv54, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and55)
  %cmp56 = icmp eq i32 %and55, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv)
  %cmp59 = icmp ult i32 %indvars.iv, 3
  %or.cond = and i1 %cmp56, %cmp59
  br i1 %or.cond, label %if.end73.for.body_crit_edge, label %if.end73.for.end_crit_edge

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end73.for.body_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end73.for.end_crit_edge, %add_dev.exit.for.end_crit_edge, %if.end48.for.end_crit_edge
  %84 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  tail call void %87(ptr noundef %port, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 429496) #8
  %89 = load i32, ptr @numdevs, align 4
  %sub = sub i32 %89, %0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @assign_addrs.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@assign_addrs, %if.then92)) #8
          to label %do.end96 [label %if.then92], !srcloc !73

if.then92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %name93 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %90 = ptrtoint ptr %name93 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name93, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @assign_addrs.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.25, ptr noundef %91, i32 noundef %sub) #8
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3264, i32 noundef 1024) #12
  %tobool98.not = icmp eq ptr %call7.i, null
  br i1 %tobool98.not, label %do.end96.cleanup_crit_edge, label %for.cond101.preheader

do.end96.cleanup_crit_edge:                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond101.preheader:                            ; preds = %do.end96
  %93 = load i32, ptr @numdevs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %93)
  %cmp102176 = icmp slt i32 %0, %93
  br i1 %cmp102176, label %for.cond101.preheader.for.body104_crit_edge, label %for.cond101.preheader.for.end109_crit_edge

for.cond101.preheader.for.end109_crit_edge:       ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end109

for.cond101.preheader.for.body104_crit_edge:      ; preds = %for.cond101.preheader
  br label %for.body104

for.body104:                                      ; preds = %for.body104.for.body104_crit_edge, %for.cond101.preheader.for.body104_crit_edge
  %thisdev.0177 = phi i32 [ %inc107, %for.body104.for.body104_crit_edge ], [ %0, %for.cond101.preheader.for.body104_crit_edge ]
  %call105 = tail call i32 @parport_device_id(i32 noundef %thisdev.0177, ptr noundef nonnull %call7.i, i32 noundef 1024) #8
  %inc107 = add nsw i32 %thisdev.0177, 1
  %94 = load i32, ptr @numdevs, align 4
  %cmp102 = icmp slt i32 %inc107, %94
  br i1 %cmp102, label %for.body104.for.body104_crit_edge, label %for.body104.for.end109_crit_edge

for.body104.for.end109_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end109

for.body104.for.body104_crit_edge:                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body104

for.end109:                                       ; preds = %for.body104.for.end109_crit_edge, %for.cond101.preheader.for.end109_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end109, %do.end96.cleanup_crit_edge, %if.then42, %do.body30, %if.then15, %do.body
  %retval.0 = phi i32 [ %sub, %for.end109 ], [ 0, %if.then15 ], [ 0, %if.then42 ], [ 0, %do.end96.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %do.body30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_device_id(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_daisy_fini(ptr noundef readnone %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @topology_lock) #8
  %0 = load ptr, ptr @topology, align 4
  %tobool.not12 = icmp eq ptr %0, null
  br i1 %tobool.not12, label %entry.if.then4_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %8, %cleanup.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %p.013 = phi ptr [ %p.1, %cleanup.while.body_crit_edge ], [ @topology, %entry.while.body_crit_edge ]
  %port1 = getelementptr inbounds %struct.daisydev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %cmp.not = icmp eq ptr %3, %port
  br i1 %cmp.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %p.013 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %p.013, align 4
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.body.cleanup_crit_edge
  %p.1 = phi ptr [ %p.013, %if.end ], [ %1, %while.body.cleanup_crit_edge ]
  %7 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.end, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup
  %.pr = load ptr, ptr @topology, align 4
  %tobool3.not = icmp eq ptr %.pr, null
  br i1 %tobool3.not, label %while.end.if.then4_crit_edge, label %while.end.if.end5_crit_edge

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

while.end.if.then4_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %while.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  store i32 0, ptr @numdevs, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %while.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @topology_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parport_open(i32 noundef %devnum, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %par_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @topology, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %par_cb) #8
  %1 = call ptr @memset(ptr %par_cb, i32 0, i32 20)
  tail call void @_raw_spin_lock(ptr noundef nonnull @topology_lock) #8
  %tobool.not39 = icmp eq ptr %0, null
  br i1 %tobool.not39, label %entry.if.then.critedge_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.if.then.critedge_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.critedge

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %p.040 = phi ptr [ %5, %while.body.land.rhs_crit_edge ], [ %0, %entry.land.rhs_crit_edge ]
  %devnum1 = getelementptr inbounds %struct.daisydev, ptr %p.040, i32 0, i32 3
  %2 = ptrtoint ptr %devnum1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devnum1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %devnum)
  %cmp.not = icmp eq i32 %3, %devnum
  br i1 %cmp.not, label %if.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %4 = ptrtoint ptr %p.040 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.040, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.body.if.then.critedge_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.if.then.critedge_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.critedge

if.then.critedge:                                 ; preds = %while.body.if.then.critedge_crit_edge, %entry.if.then.critedge_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @topology_lock) #8
  br label %cleanup18

if.end:                                           ; preds = %land.rhs
  %daisy3 = getelementptr inbounds %struct.daisydev, ptr %p.040, i32 0, i32 2
  %6 = ptrtoint ptr %daisy3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daisy3, align 4
  %port4 = getelementptr inbounds %struct.daisydev, ptr %p.040, i32 0, i32 1
  %8 = ptrtoint ptr %port4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port4, align 4
  %call = tail call ptr @parport_get_port(ptr noundef %9) #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @topology_lock) #8
  %call5 = call ptr @parport_register_dev_model(ptr noundef %call, ptr noundef %name, ptr noundef nonnull %par_cb, i32 noundef %devnum) #8
  call void @parport_put_port(ptr noundef %call) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup18_crit_edge, label %if.end8

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end8:                                          ; preds = %if.end
  %daisy9 = getelementptr inbounds %struct.pardevice, ptr %call5, i32 0, i32 2
  %10 = ptrtoint ptr %daisy9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %daisy9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp10 = icmp sgt i32 %7, -1
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup18_crit_edge

if.end8.cleanup18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 @parport_claim_or_block(ptr noundef nonnull %call5) #8
  %daisy13 = getelementptr inbounds %struct.parport, ptr %call, i32 0, i32 14
  %11 = ptrtoint ptr %daisy13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %daisy13, align 4
  call void @parport_release(ptr noundef nonnull %call5) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7)
  %cmp14.not = icmp eq i32 %12, %7
  br i1 %cmp14.not, label %if.then11.cleanup18_crit_edge, label %if.then15

if.then11.cleanup18_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  call void @parport_unregister_device(ptr noundef nonnull %call5) #8
  br label %cleanup18

cleanup18:                                        ; preds = %if.then15, %if.then11.cleanup18_crit_edge, %if.end8.cleanup18_crit_edge, %if.end.cleanup18_crit_edge, %if.then.critedge
  %retval.1 = phi ptr [ null, %if.then.critedge ], [ null, %if.end.cleanup18_crit_edge ], [ null, %if.then15 ], [ %call5, %if.end8.cleanup18_crit_edge ], [ %call5, %if.then11.cleanup18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %par_cb) #8
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_get_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_put_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim_or_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_close(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @parport_unregister_device(ptr noundef %dev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpp_daisy(ptr noundef %port, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %data_forward = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data_forward to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_forward, align 4
  tail call void %3(ptr noundef %port) #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %port, i8 noundef zeroext -86) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void %12(ptr noundef %port, i8 noundef zeroext 85) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #8
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void %17(ptr noundef %port, i8 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #8
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void %22(ptr noundef %port, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #8
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_status, align 4
  %call = tail call zeroext i8 %27(ptr noundef %port) #8
  %28 = and i8 %call, -72
  %conv10 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %28)
  %cmp.not = icmp eq i8 %28, -72
  br i1 %cmp.not, label %if.end17, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpp_daisy.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpp_daisy, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !73

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpp_daisy.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.18, ptr noundef %30, i32 noundef %conv10) #8
  br label %cleanup

if.end17:                                         ; preds = %entry
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  tail call void %34(ptr noundef %port, i8 noundef zeroext -121) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 429496) #8
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %read_status21 = getelementptr inbounds %struct.parport_operations, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %read_status21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_status21, align 4
  %call22 = tail call zeroext i8 %39(ptr noundef %port) #8
  %40 = and i8 %call22, -72
  %conv26 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %40)
  %cmp27.not = icmp eq i8 %40, 24
  br i1 %cmp27.not, label %if.end48, label %do.body30

do.body30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpp_daisy.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpp_daisy, %if.then42)) #8
          to label %cleanup [label %if.then42], !srcloc !73

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %name43 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %41 = ptrtoint ptr %name43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name43, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpp_daisy.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.19, ptr noundef %42, i32 noundef %conv26) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  tail call void %46(ptr noundef %port, i8 noundef zeroext 120) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 429496) #8
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %conv53 = trunc i32 %cmd to i8
  tail call void %51(ptr noundef %port, i8 noundef zeroext %conv53) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 429496) #8
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops, align 4
  %frob_control = getelementptr inbounds %struct.parport_operations, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %frob_control to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %frob_control, align 4
  %call55 = tail call zeroext i8 %56(ptr noundef %port, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #8
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops, align 4
  %read_status57 = getelementptr inbounds %struct.parport_operations, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %read_status57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_status57, align 4
  %call58 = tail call zeroext i8 %61(ptr noundef %port) #8
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops, align 4
  %frob_control60 = getelementptr inbounds %struct.parport_operations, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %frob_control60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %frob_control60, align 4
  %call61 = tail call zeroext i8 %65(ptr noundef %port, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #8
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  tail call void %70(ptr noundef %port, i8 noundef zeroext -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 429496) #8
  %conv64 = zext i8 %call58 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then42, %do.body30, %if.then15, %do.body
  %retval.0 = phi i32 [ %conv64, %if.end48 ], [ -6, %if.then15 ], [ -6, %if.then42 ], [ -6, %do.body ], [ -6, %do.body30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_daisy_select(ptr noundef %port, i32 noundef %daisy, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %mode, label %sw.default [
    i32 64, label %entry.return_crit_edge
    i32 2048, label %entry.return_crit_edge19
    i32 4096, label %entry.return_crit_edge20
    i32 16, label %entry.sw.bb1_crit_edge
    i32 48, label %entry.sw.bb1_crit_edge21
    i32 1024, label %entry.sw.bb1_crit_edge22
  ]

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge19, %entry.return_crit_edge20
  %.sink = phi i32 [ 224, %sw.default ], [ 208, %sw.bb1 ], [ 32, %entry.return_crit_edge ], [ 32, %entry.return_crit_edge19 ], [ 32, %entry.return_crit_edge20 ]
  %add9 = add i32 %.sink, %daisy
  %call10 = tail call fastcc i32 @cpp_daisy(ptr noundef %port, i32 noundef %add9)
  %retval.0.in.in = lshr i32 %call10, 3
  %retval.0.in = and i32 %retval.0.in.in, 1
  %retval.0 = xor i32 %retval.0.in, 1
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @daisy_drv_probe(ptr nocapture noundef readonly %par_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.pardevice, ptr %par_dev, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %par_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par_dev, align 8
  %call2 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(16) @.str.15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool3.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_port(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpp_mux(ptr noundef %port, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %data_forward = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data_forward to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_forward, align 4
  tail call void %3(ptr noundef %port) #8
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %port, i8 noundef zeroext -86) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void %12(ptr noundef %port, i8 noundef zeroext 85) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #8
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void %17(ptr noundef %port, i8 noundef zeroext -16) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #8
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void %22(ptr noundef %port, i8 noundef zeroext 15) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #8
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %port, i8 noundef zeroext 82) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 429496) #8
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  tail call void %32(ptr noundef %port, i8 noundef zeroext -83) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 429496) #8
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %conv = trunc i32 %cmd to i8
  tail call void %37(ptr noundef %port, i8 noundef zeroext %conv) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 429496) #8
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_status, align 4
  %call = tail call zeroext i8 %42(ptr noundef %port) #8
  %conv15 = zext i8 %call to i32
  %and = and i32 %conv15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end22

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpp_mux.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpp_mux, %if.then20)) #8
          to label %cleanup [label %if.then20], !srcloc !73

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpp_mux.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.21, ptr noundef %44, i32 noundef %cmd, i32 noundef %conv15) #8
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and24 = lshr i32 %conv15, 4
  %or = and i32 %and24, 3
  %45 = lshr i32 %conv15, 5
  %46 = and i32 %45, 4
  %and38.lobit = and i32 %conv15, 8
  %47 = or i32 %or, %and38.lobit
  %48 = or i32 %47, %46
  %or42 = xor i32 %48, 12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %do.body
  %retval.0 = phi i32 [ %or42, %if.end22 ], [ -5, %if.then20 ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/parport/daisy.c", i32 109, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/parport/daisy.c", i32 109, i32 41}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/parport/daisy.c", i32 109, i32 47}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/parport/daisy.c", i32 109, i32 53}
!8 = !{ptr @parport_daisy_init.th, !9, !"th", i1 false, i1 false}
!9 = !{!"../drivers/parport/daisy.c", i32 109, i32 21}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/parport/daisy.c", i32 123, i32 7}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/parport/daisy.c", i32 125, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @parport_daisy_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @parport_daisy_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/parport/daisy.c", i32 142, i32 3}
!20 = !{ptr @parport_daisy_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @parport_daisy_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/parport/daisy.c", i32 155, i32 4}
!24 = !{ptr @parport_daisy_init._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @parport_daisy_init._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @numdevs, !27, !"numdevs", i1 false, i1 false}
!27 = !{!"../drivers/parport/daisy.c", i32 41, i32 12}
!28 = distinct !{null, !29, !"daisy_init_done", i1 false, i1 false}
!29 = !{!"../drivers/parport/daisy.c", i32 42, i32 13}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/parport/daisy.c", i32 98, i32 10}
!32 = !{ptr @daisy_driver, !33, !"daisy_driver", i1 false, i1 false}
!33 = !{!"../drivers/parport/daisy.c", i32 97, i32 30}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/parport/daisy.c", i32 91, i32 28}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/parport/daisy.c", i32 39, i32 8}
!38 = !{ptr @topology_lock, !37, !"topology_lock", i1 false, i1 false}
!39 = !{ptr @topology, !40, !"topology", i1 false, i1 false}
!40 = !{!"../drivers/parport/daisy.c", i32 38, i32 4}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/parport/daisy.c", i32 318, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cpp_daisy.__UNIQUE_ID_ddebug223, !42, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/parport/daisy.c", i32 328, i32 3}
!47 = !{ptr @cpp_daisy.__UNIQUE_ID_ddebug224, !46, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/parport/daisy.c", i32 363, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cpp_mux.__UNIQUE_ID_ddebug225, !49, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/parport/daisy.c", i32 449, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @assign_addrs.__UNIQUE_ID_ddebug226, !53, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/parport/daisy.c", i32 459, i32 3}
!58 = !{ptr @assign_addrs.__UNIQUE_ID_ddebug227, !57, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/parport/daisy.c", i32 496, i32 2}
!61 = !{ptr @assign_addrs.__UNIQUE_ID_ddebug228, !60, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2148964706, i64 2148964711, i64 2148964724, i64 2148964768, i64 2148964802, i64 2148964823}
