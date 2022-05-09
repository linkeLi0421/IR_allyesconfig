; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/wl.c_pt.bc'
source_filename = "../drivers/mtd/ubi/wl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_wl_entry = type { %union.anon.70, i32, i32 }
%union.anon.70 = type { %struct.rb_node }
%struct.ubi_work = type { %struct.list_head, ptr, ptr, i32, i32, i32 }
%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }
%struct.ubi_fastmap_layout = type { [32 x ptr], [32 x i32], i32, i32, i32 }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }

@ubi_wl_put_peb.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubi_wl_put_peb\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mtd/ubi/wl.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"UBI DBG wl (pid %d): PEB %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ubi_wl_put_peb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@ubi_wl_put_peb._entry_ptr = internal global ptr @ubi_wl_put_peb._entry, section ".printk_index", align 4
@ubi_wl_put_peb._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_put_peb._entry_ptr.6 = internal global ptr @ubi_wl_put_peb._entry.5, section ".printk_index", align 4
@ubi_wl_put_peb.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"UBI DBG wl (pid %d): PEB %d is being moved, wait\0A\00", [46 x i8] zeroinitializer }, align 32
@ubi_wl_put_peb.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBI DBG wl (pid %d): PEB %d is the target of data moving\0A\00", [38 x i8] zeroinitializer }, align 32
@ubi_wl_put_peb._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_put_peb._entry_ptr.10 = internal global ptr @ubi_wl_put_peb._entry.9, section ".printk_index", align 4
@ubi_wl_put_peb._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_put_peb._entry_ptr.12 = internal global ptr @ubi_wl_put_peb._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PEB %d not found\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"schedule PEB %d for scrubbing\00", [34 x i8] zeroinitializer }, align 32
@ubi_wl_scrub_peb.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_wl_scrub_peb\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"UBI DBG wl (pid %d): the PEB %d is not in proper tree, retry\0A\00", [34 x i8] zeroinitializer }, align 32
@ubi_wl_flush.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubi_wl_flush\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"UBI DBG wl (pid %d): flush pending work for LEB %d:%d (%d pending works)\0A\00", [54 x i8] zeroinitializer }, align 32
@ubi_wl_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.17, ptr @.str.2, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_flush._entry_ptr = internal global ptr @ubi_wl_flush._entry, section ".printk_index", align 4
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"background thread \22%s\22 started, PID %d\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: work failed with error code %d\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %d consecutive failures\00", [36 x i8] zeroinitializer }, align 32
@ubi_thread.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ubi_thread\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBI DBG wl (pid %d): background thread \22%s\22 is killed\0A\00", [41 x i8] zeroinitializer }, align 32
@ubi_wl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ubi->wl_lock\00", [18 x i8] zeroinitializer }, align 32
@ubi_wl_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ubi->move_mutex\00", [47 x i8] zeroinitializer }, align 32
@ubi_wl_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ubi->work_sem\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ubi_bgt%dd\00", [21 x i8] zeroinitializer }, align 32
@ubi_wl_entry_slab = external dso_local local_unnamed_addr global ptr, align 4
@ubi_wl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.31, ptr @.str.2, i32 1798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ubi_wl_init\00", [20 x i8] zeroinitializer }, align 32
@ubi_wl_init._entry_ptr = internal global ptr @ubi_wl_init._entry, section ".printk_index", align 4
@ubi_wl_init.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBI DBG wl (pid %d): add PEB %d EC %d to the used tree\0A\00", [40 x i8] zeroinitializer }, align 32
@ubi_wl_init.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 1, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBI DBG wl (pid %d): add PEB %d EC %d to the scrub tree\0A\00", [39 x i8] zeroinitializer }, align 32
@ubi_wl_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.31, ptr @.str.2, i32 1842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_init._entry_ptr.35 = internal global ptr @ubi_wl_init._entry.34, section ".printk_index", align 4
@ubi_wl_init.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.36, i8 1, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UBI DBG wl (pid %d): found %i PEBs\0A\00", [60 x i8] zeroinitializer }, align 32
@ubi_wl_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.31, ptr @.str.2, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_init._entry_ptr.38 = internal global ptr @ubi_wl_init._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"no enough physical eraseblocks (%d, need %d)\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d PEBs are corrupted and not used\00", [61 x i8] zeroinitializer }, align 32
@ubi_wl_close.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ubi_wl_close\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UBI DBG wl (pid %d): close the WL sub-system\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to write a new fastmap: %i\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to get a free PEB from user WL pool\00", [53 x i8] zeroinitializer }, align 32
@ubi_wl_get_peb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.45, ptr @.str.46, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ubi_wl_get_peb\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/ubi/fastmap-wl.c\00", [35 x i8] zeroinitializer }, align 32
@ubi_wl_get_peb._entry_ptr = internal global ptr @ubi_wl_get_peb._entry, section ".printk_index", align 4
@ubi_wl_put_fm_peb.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.46, ptr @.str.3, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ubi_wl_put_fm_peb\00", [46 x i8] zeroinitializer }, align 32
@ubi_wl_put_fm_peb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.47, ptr @.str.46, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_put_fm_peb._entry_ptr = internal global ptr @ubi_wl_put_fm_peb._entry, section ".printk_index", align 4
@ubi_wl_put_fm_peb._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.47, ptr @.str.46, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_put_fm_peb._entry_ptr.49 = internal global ptr @ubi_wl_put_fm_peb._entry.48, section ".printk_index", align 4
@ubi_wl_put_fm_peb._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.47, ptr @.str.46, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_wl_put_fm_peb._entry_ptr.51 = internal global ptr @ubi_wl_put_fm_peb._entry.50, section ".printk_index", align 4
@in_wl_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in_wl_tree\00", [21 x i8] zeroinitializer }, align 32
@in_wl_tree._entry_ptr = internal global ptr @in_wl_tree._entry, section ".printk_index", align 4
@in_wl_tree._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@in_wl_tree._entry_ptr.54 = internal global ptr @in_wl_tree._entry.53, section ".printk_index", align 4
@prot_queue_del.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prot_queue_del\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"UBI DBG wl (pid %d): deleted PEB %d from the protection queue\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"self-check failed for PEB %d, EC %d, Protect queue\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"switch to read-only mode\00", [39 x i8] zeroinitializer }, align 32
@schedule_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.59, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"schedule_erase\00", [17 x i8] zeroinitializer }, align 32
@schedule_erase._entry_ptr = internal global ptr @schedule_erase._entry, section ".printk_index", align 4
@schedule_erase.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"UBI DBG wl (pid %d): schedule erasure of PEB %d, EC %d, torture %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wl_tree_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.61, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wl_tree_add\00", [20 x i8] zeroinitializer }, align 32
@wl_tree_add._entry_ptr = internal global ptr @wl_tree_add._entry, section ".printk_index", align 4
@ensure_wear_leveling.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ensure_wear_leveling\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBI DBG wl (pid %d): schedule wear-leveling\0A\00", [51 x i8] zeroinitializer }, align 32
@ensure_wear_leveling.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.64, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UBI DBG wl (pid %d): schedule scrubbing\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@do_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.66, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"do_work\00", [24 x i8] zeroinitializer }, align 32
@do_work._entry_ptr = internal global ptr @do_work._entry, section ".printk_index", align 4
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"work failed with error code %d\00", [33 x i8] zeroinitializer }, align 32
@sync_erase.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sync_erase\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"UBI DBG wl (pid %d): erase PEB %d, old EC %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"erase counter overflow at PEB %d, EC %llu\00", [54 x i8] zeroinitializer }, align 32
@sync_erase.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.71, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UBI DBG wl (pid %d): erased PEB %d, new EC %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"self-check failed for PEB %d\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read EC is %lld, should be %d\00", [34 x i8] zeroinitializer }, align 32
@ubi_fastmap_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&ubi->fm_work)\00", [63 x i8] zeroinitializer }, align 32
@shutdown_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.75, ptr @.str.2, i32 1698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shutdown_work\00", [18 x i8] zeroinitializer }, align 32
@shutdown_work._entry_ptr = internal global ptr @shutdown_work._entry, section ".printk_index", align 4
@.str.76 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"self-check failed for PEB %d, EC %d, RB-tree %p \00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no free eraseblocks\00", [44 x i8] zeroinitializer }, align 32
@wl_get_wle.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wl_get_wle\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBI DBG wl (pid %d): PEB %d EC %d\0A\00", [61 x i8] zeroinitializer }, align 32
@produce_free_peb.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.46, ptr @.str.81, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"produce_free_peb\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"UBI DBG wl (pid %d): do one work synchronously\0A\00", [48 x i8] zeroinitializer }, align 32
@prot_queue_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.82, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prot_queue_add\00", [17 x i8] zeroinitializer }, align 32
@prot_queue_add._entry_ptr = internal global ptr @prot_queue_add._entry, section ".printk_index", align 4
@prot_queue_add.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBI DBG wl (pid %d): added PEB %d EC %d to the protection queue\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wear_leveling_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.84, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wear_leveling_worker\00", [43 x i8] zeroinitializer }, align 32
@wear_leveling_worker._entry_ptr = internal global ptr @wear_leveling_worker._entry, section ".printk_index", align 4
@wear_leveling_worker._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.84, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wear_leveling_worker._entry_ptr.86 = internal global ptr @wear_leveling_worker._entry.85, section ".printk_index", align 4
@wear_leveling_worker.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.87, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBI DBG wl (pid %d): cancel WL, a list is empty: free %d, used %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.88, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBI DBG wl (pid %d): anchor-move PEB %d to PEB %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.89, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBI DBG wl (pid %d): no WL needed: min used EC %d, max free EC %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.90, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBI DBG wl (pid %d): move PEB %d EC %d to PEB %d EC %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.91, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UBI DBG wl (pid %d): scrub PEB %d to PEB %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.92, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UBI DBG wl (pid %d): PEB %d has no VID header\0A\00", [49 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.93, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UBI DBG wl (pid %d): PEB %d has no VID header but has bit-flips\0A\00", [63 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.94, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"UBI DBG wl (pid %d): PEB %d has ECC errors, maybe from an interrupted erasure\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error %d while reading VID header from PEB %d\00", [50 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"too many erroneous eraseblocks (%d)\00", [60 x i8] zeroinitializer }, align 32
@wear_leveling_worker._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.84, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wear_leveling_worker._entry_ptr.98 = internal global ptr @wear_leveling_worker._entry.97, section ".printk_index", align 4
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"scrubbed PEB %d (LEB %d:%d), data moved to PEB %d\00", [46 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.100, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UBI DBG wl (pid %d): PEB %d (LEB %d:%d) was put meanwhile, erase\0A\00", [62 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.101, i8 0, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"UBI DBG wl (pid %d): done\0A\00", [37 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.102, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"UBI DBG wl (pid %d): cancel moving PEB %d (LEB %d:%d) to PEB %d (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@wear_leveling_worker.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.103, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBI DBG wl (pid %d): cancel moving PEB %d to PEB %d (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@wear_leveling_worker._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.84, ptr @.str.2, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wear_leveling_worker._entry_ptr.105 = internal global ptr @wear_leveling_worker._entry.104, section ".printk_index", align 4
@.str.106 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error %d while moving PEB %d to PEB %d\00", [57 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error %d while moving PEB %d (LEB %d:%d) to PEB %d\00", [45 x i8] zeroinitializer }, align 32
@wear_leveling_worker._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.84, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wear_leveling_worker._entry_ptr.109 = internal global ptr @wear_leveling_worker._entry.108, section ".printk_index", align 4
@get_peb_for_wl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.110, ptr @.str.46, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_peb_for_wl\00", [17 x i8] zeroinitializer }, align 32
@get_peb_for_wl._entry_ptr = internal global ptr @get_peb_for_wl._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@do_sync_erase.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_sync_erase\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"UBI DBG wl (pid %d): sync erase of PEB %i\0A\00", [53 x i8] zeroinitializer }, align 32
@__erase_worker.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__erase_worker\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"UBI DBG wl (pid %d): erase PEB %d EC %d LEB %d:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to erase PEB %d, error %d\00", [63 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad physical eraseblock %d detected\00", [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"no reserved/available physical eraseblocks\00", [53 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mark PEB %d as bad\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"no PEBs in the reserved pool, used an available PEB\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d PEBs left in the reserve\00", [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"last PEB from the reserve was used\00", [61 x i8] zeroinitializer }, align 32
@serve_prot_queue.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serve_prot_queue\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"UBI DBG wl (pid %d): PEB %d EC %d protection over, move to used tree\0A\00", [58 x i8] zeroinitializer }, align 32
@serve_prot_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.122, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@serve_prot_queue._entry_ptr = internal global ptr @serve_prot_queue._entry, section ".printk_index", align 4
@__schedule_ubi_work._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.124, ptr @.str.2, i32 546, ptr null, ptr null }, align 1
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__schedule_ubi_work\00", [44 x i8] zeroinitializer }, align 32
@__schedule_ubi_work._entry_ptr = internal global ptr @__schedule_ubi_work._entry, section ".printk_index", align 4
@erase_worker.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"erase_worker\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UBI DBG wl (pid %d): cancel erasure of PEB %d EC %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.127 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.129 = internal global [6 x i64] [i64 4, i64 32, i64 4294967280, i64 4294967284, i64 4294967285, i64 4294967292]
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1236, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1237, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1238, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1251, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1268, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1269, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1285, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1291, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1326, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1345, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1396, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1410, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1623, i32 15 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1661, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1668, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1680, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1759, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1760, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1761, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1765, i32 25 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1798, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1823, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1827, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1842, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1876, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1878, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1884, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1887, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1938, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 223, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 235, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 248, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 339, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 341, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 342, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 353, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 247, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 256, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 425, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 2034, i32 15 }
@___asan_gen_.299 = private unnamed_addr constant [25 x i8] c"../drivers/mtd/ubi/ubi.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1160, i32 17 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 588, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 590, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 155, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1035, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1037, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 57, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 212, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 222, i32 16 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 445, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 465, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 471, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1981, i32 16 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1982, i32 16 }
@___asan_gen_.355 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [24 x i8] c"../drivers/mtd/ubi/wl.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 13, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1698, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 2011, i32 15 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 388, i32 16 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 400, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 188, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 304, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 306, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 670, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 671, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 685, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 714, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 731, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 741, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 753, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 785, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 794, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 804, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 810, i32 16 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 857, i32 18 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 869, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 874, i32 16 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 899, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 906, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 918, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 921, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 938, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 964, i32 16 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 967, i32 16 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 982, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [32 x i8] c"../drivers/mtd/ubi/fastmap-wl.c\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 265, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 625, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1081, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1113, i32 15 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1141, i32 16 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1149, i32 17 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1157, i32 15 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1178, i32 17 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1180, i32 16 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1183, i32 17 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 511, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 530, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 546, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.518 = private constant [24 x i8] c"../drivers/mtd/ubi/wl.c\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1206, i32 3 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @__schedule_ubi_work._entry, ptr @__schedule_ubi_work._entry_ptr, ptr @do_work._entry, ptr @do_work._entry_ptr, ptr @get_peb_for_wl._entry, ptr @get_peb_for_wl._entry_ptr, ptr @in_wl_tree._entry, ptr @in_wl_tree._entry.53, ptr @in_wl_tree._entry_ptr, ptr @in_wl_tree._entry_ptr.54, ptr @prot_queue_add._entry, ptr @prot_queue_add._entry_ptr, ptr @schedule_erase._entry, ptr @schedule_erase._entry_ptr, ptr @serve_prot_queue._entry, ptr @serve_prot_queue._entry_ptr, ptr @shutdown_work._entry, ptr @shutdown_work._entry_ptr, ptr @ubi_wl_flush._entry, ptr @ubi_wl_flush._entry_ptr, ptr @ubi_wl_get_peb._entry, ptr @ubi_wl_get_peb._entry_ptr, ptr @ubi_wl_init._entry, ptr @ubi_wl_init._entry.34, ptr @ubi_wl_init._entry.37, ptr @ubi_wl_init._entry_ptr, ptr @ubi_wl_init._entry_ptr.35, ptr @ubi_wl_init._entry_ptr.38, ptr @ubi_wl_put_fm_peb._entry, ptr @ubi_wl_put_fm_peb._entry.48, ptr @ubi_wl_put_fm_peb._entry.50, ptr @ubi_wl_put_fm_peb._entry_ptr, ptr @ubi_wl_put_fm_peb._entry_ptr.49, ptr @ubi_wl_put_fm_peb._entry_ptr.51, ptr @ubi_wl_put_peb._entry, ptr @ubi_wl_put_peb._entry.11, ptr @ubi_wl_put_peb._entry.5, ptr @ubi_wl_put_peb._entry.9, ptr @ubi_wl_put_peb._entry_ptr, ptr @ubi_wl_put_peb._entry_ptr.10, ptr @ubi_wl_put_peb._entry_ptr.12, ptr @ubi_wl_put_peb._entry_ptr.6, ptr @wear_leveling_worker._entry, ptr @wear_leveling_worker._entry.104, ptr @wear_leveling_worker._entry.108, ptr @wear_leveling_worker._entry.85, ptr @wear_leveling_worker._entry.97, ptr @wear_leveling_worker._entry_ptr, ptr @wear_leveling_worker._entry_ptr.105, ptr @wear_leveling_worker._entry_ptr.109, ptr @wear_leveling_worker._entry_ptr.86, ptr @wear_leveling_worker._entry_ptr.98, ptr @wl_tree_add._entry, ptr @wl_tree_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ubi_wl_init.__key, ptr @.str.25, ptr @ubi_wl_init.__key.26, ptr @.str.27, ptr @ubi_wl_init.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @ubi_fastmap_init.__key, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.106, ptr @.str.107, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_put_peb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_put_peb._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_put_peb._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_put_peb._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_get_peb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_put_fm_peb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_put_fm_peb._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_wl_put_fm_peb._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_wl_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_wl_tree._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @schedule_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl_tree_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_fastmap_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prot_queue_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wear_leveling_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wear_leveling_worker._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wear_leveling_worker._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wear_leveling_worker._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wear_leveling_worker._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_peb_for_wl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serve_prot_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_put_peb(ptr noundef %ubi, i32 noundef %vol_id, i32 noundef %lnum, i32 noundef %pnum, i32 noundef %torture) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_put_peb.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_put_peb, %if.then)) #12
          to label %do.body4 [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_put_peb.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.3, i32 noundef %5, i32 noundef %pnum) #12
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pnum)
  %cmp = icmp slt i32 %pnum, 0
  br i1 %cmp, label %do.end16, label %do.body4.do.body25_crit_edge, !prof !307

do.body4.do.body25_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

do.end16:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i252 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i252 to ptr
  %task19 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task19, align 8
  %pid20 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid20, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1237, i32 noundef %11) #15
  tail call void @dump_stack() #15
  br label %do.body25

do.body25:                                        ; preds = %do.end16, %do.body4.do.body25_crit_edge
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %12 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %pnum)
  %cmp26.not = icmp sgt i32 %13, %pnum
  br i1 %cmp26.not, label %do.body25.do.end46_crit_edge, label %do.end38, !prof !308

do.body25.do.end46_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

do.end38:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i253 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i253 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task41, align 8
  %pid42 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid42, align 8
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1238, i32 noundef %19) #15
  tail call void @dump_stack() #15
  br label %do.end46

do.end46:                                         ; preds = %do.end38, %do.body25.do.end46_crit_edge
  %fm_protect = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 30
  tail call void @down_read(ptr noundef %fm_protect) #12
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %20 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lookuptbl, align 8
  %arrayidx345 = getelementptr ptr, ptr %21, i32 %pnum
  %22 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx345, align 4
  %move_from = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 51
  %24 = ptrtoint ptr %move_from to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %move_from, align 4
  %cmp47346 = icmp eq ptr %23, %25
  br i1 %cmp47346, label %do.body49.lr.ph, label %do.end46.if.else_crit_edge

do.end46.if.else_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.body49.lr.ph:                                  ; preds = %do.end46
  %move_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 47
  br label %do.body49

do.body49:                                        ; preds = %do.end67.do.body49_crit_edge, %do.body49.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_put_peb.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_put_peb, %if.then61)) #12
          to label %do.end67 [label %if.then61], !srcloc !306

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i254 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i254 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task63, align 8
  %pid64 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid64, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_put_peb.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.7, i32 noundef %31, i32 noundef %pnum) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %do.body49
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  tail call void @mutex_lock_nested(ptr noundef %move_mutex, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %move_mutex) #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %32 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lookuptbl, align 8
  %arrayidx = getelementptr ptr, ptr %33, i32 %pnum
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %move_from to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %move_from, align 4
  %cmp47 = icmp eq ptr %35, %37
  br i1 %cmp47, label %do.end67.do.body49_crit_edge, label %do.end67.if.else_crit_edge

do.end67.if.else_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.end67.do.body49_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body49

if.else:                                          ; preds = %do.end67.if.else_crit_edge, %do.end46.if.else_crit_edge
  %.lcssa = phi ptr [ %23, %do.end46.if.else_crit_edge ], [ %35, %do.end67.if.else_crit_edge ]
  %move_to = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 52
  %38 = ptrtoint ptr %move_to to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %move_to, align 8
  %cmp70 = icmp eq ptr %.lcssa, %39
  br i1 %cmp70, label %do.body72, label %if.else118

do.body72:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_put_peb.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_put_peb, %if.then84)) #12
          to label %do.body91 [label %if.then84], !srcloc !306

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #14
  %40 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i255 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i255 to ptr
  %task86 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task86, align 8
  %pid87 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid87, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_put_peb.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.8, i32 noundef %45, i32 noundef %pnum) #12
  br label %do.body91

do.body91:                                        ; preds = %if.then84, %do.body72
  %move_to_put = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 53
  %46 = ptrtoint ptr %move_to_put to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %move_to_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool92.not = icmp eq i32 %47, 0
  br i1 %tobool92.not, label %do.body91.do.end114_crit_edge, label %do.end106, !prof !308

do.body91.do.end114_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114

do.end106:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  %48 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i256 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i256 to ptr
  %task109 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task109 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task109, align 8
  %pid110 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid110 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid110, align 8
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1269, i32 noundef %53) #15
  tail call void @dump_stack() #15
  br label %do.end114

do.end114:                                        ; preds = %do.end106, %do.body91.do.end114_crit_edge
  %54 = ptrtoint ptr %move_to_put to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %move_to_put, align 4
  br label %cleanup.sink.split

if.else118:                                       ; preds = %if.else
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %55 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %55)
  %p.077.i = load ptr, ptr %used, align 4
  %tobool.not78.i = icmp eq ptr %p.077.i, null
  br i1 %tobool.not78.i, label %if.else118.if.else125_crit_edge, label %while.body.lr.ph.i

if.else118.if.else125_crit_edge:                  ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else125

while.body.lr.ph.i:                               ; preds = %if.else118
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %.lcssa, i32 0, i32 2
  %56 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pnum.i, align 4
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %.lcssa, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.079.i = phi ptr [ %p.077.i, %while.body.lr.ph.i ], [ %p.0.i, %cleanup.i.while.body.i_crit_edge ]
  %pnum1.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i, i32 0, i32 2
  %58 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pnum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i = icmp eq i32 %57, %59
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %while.body.i
  %cmp2.not.i = icmp eq ptr %p.079.i, %.lcssa
  br i1 %cmp2.not.i, label %do.body.i.if.then121_crit_edge, label %do.end.i, !prof !308

do.body.i.if.then121_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then121

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid.i, align 8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %65) #15
  tail call void @dump_stack() #15
  br label %if.then121

if.end12.i:                                       ; preds = %while.body.i
  %66 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ec.i, align 4
  %ec13.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i, i32 0, i32 1
  %68 = ptrtoint ptr %ec13.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ec13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp14.i = icmp slt i32 %67, %69
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp18.i = icmp sgt i32 %67, %69
  br i1 %cmp18.i, label %if.then19.i, label %do.end44.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 1
  br label %cleanup.i

do.end44.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp47.i = icmp slt i32 %57, %59
  br i1 %cmp47.i, label %if.then48.i, label %if.else50.i

if.then48.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 2
  br label %cleanup.i

if.else50.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else50.i, %if.then48.i, %if.then19.i, %if.then15.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then15.i ], [ %rb_right.i, %if.then19.i ], [ %rb_left49.i, %if.then48.i ], [ %rb_right51.i, %if.else50.i ]
  %70 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.else125_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.if.else125_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else125

if.then121:                                       ; preds = %do.end.i, %do.body.i.if.then121_crit_edge
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef %.lcssa, ptr noundef %used)
  tail call void @rb_erase(ptr noundef %.lcssa, ptr noundef %used) #12
  br label %if.end176

if.else125:                                       ; preds = %cleanup.i.if.else125_crit_edge, %if.else118.if.else125_crit_edge
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %71 = ptrtoint ptr %scrub to i32
  call void @__asan_load4_noabort(i32 %71)
  %p.077.i257 = load ptr, ptr %scrub, align 4
  %tobool.not78.i258 = icmp eq ptr %p.077.i257, null
  br i1 %tobool.not78.i258, label %if.else125.if.else133_crit_edge, label %while.body.lr.ph.i261

if.else125.if.else133_crit_edge:                  ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else133

while.body.lr.ph.i261:                            ; preds = %if.else125
  %pnum.i259 = getelementptr inbounds %struct.ubi_wl_entry, ptr %.lcssa, i32 0, i32 2
  %72 = ptrtoint ptr %pnum.i259 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pnum.i259, align 4
  %ec.i260 = getelementptr inbounds %struct.ubi_wl_entry, ptr %.lcssa, i32 0, i32 1
  br label %while.body.i265

while.body.i265:                                  ; preds = %cleanup.i291.while.body.i265_crit_edge, %while.body.lr.ph.i261
  %p.079.i262 = phi ptr [ %p.077.i257, %while.body.lr.ph.i261 ], [ %p.0.i289, %cleanup.i291.while.body.i265_crit_edge ]
  %pnum1.i263 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i262, i32 0, i32 2
  %74 = ptrtoint ptr %pnum1.i263 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pnum1.i263, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp.i264 = icmp eq i32 %73, %75
  br i1 %cmp.i264, label %do.body.i267, label %if.end12.i275

do.body.i267:                                     ; preds = %while.body.i265
  %cmp2.not.i266 = icmp eq ptr %p.079.i262, %.lcssa
  br i1 %cmp2.not.i266, label %do.body.i267.if.then128_crit_edge, label %do.end.i272, !prof !308

do.body.i267.if.then128_crit_edge:                ; preds = %do.body.i267
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then128

do.end.i272:                                      ; preds = %do.body.i267
  call void @__sanitizer_cov_trace_pc() #14
  %76 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i268 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i268 to ptr
  %task.i269 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task.i269 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i269, align 8
  %pid.i270 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 68
  %80 = ptrtoint ptr %pid.i270 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pid.i270, align 8
  %call9.i271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %81) #15
  tail call void @dump_stack() #15
  br label %if.then128

if.end12.i275:                                    ; preds = %while.body.i265
  %82 = ptrtoint ptr %ec.i260 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ec.i260, align 4
  %ec13.i273 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i262, i32 0, i32 1
  %84 = ptrtoint ptr %ec13.i273 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ec13.i273, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp14.i274 = icmp slt i32 %83, %85
  br i1 %cmp14.i274, label %if.then15.i277, label %if.else.i279

if.then15.i277:                                   ; preds = %if.end12.i275
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i276 = getelementptr inbounds %struct.rb_node, ptr %p.079.i262, i32 0, i32 2
  br label %cleanup.i291

if.else.i279:                                     ; preds = %if.end12.i275
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp18.i278 = icmp sgt i32 %83, %85
  br i1 %cmp18.i278, label %if.then19.i281, label %do.end44.i283

if.then19.i281:                                   ; preds = %if.else.i279
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i280 = getelementptr inbounds %struct.rb_node, ptr %p.079.i262, i32 0, i32 1
  br label %cleanup.i291

do.end44.i283:                                    ; preds = %if.else.i279
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp47.i282 = icmp slt i32 %73, %75
  br i1 %cmp47.i282, label %if.then48.i285, label %if.else50.i287

if.then48.i285:                                   ; preds = %do.end44.i283
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i284 = getelementptr inbounds %struct.rb_node, ptr %p.079.i262, i32 0, i32 2
  br label %cleanup.i291

if.else50.i287:                                   ; preds = %do.end44.i283
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i286 = getelementptr inbounds %struct.rb_node, ptr %p.079.i262, i32 0, i32 1
  br label %cleanup.i291

cleanup.i291:                                     ; preds = %if.else50.i287, %if.then48.i285, %if.then19.i281, %if.then15.i277
  %p.1.in.i288 = phi ptr [ %rb_left.i276, %if.then15.i277 ], [ %rb_right.i280, %if.then19.i281 ], [ %rb_left49.i284, %if.then48.i285 ], [ %rb_right51.i286, %if.else50.i287 ]
  %86 = ptrtoint ptr %p.1.in.i288 to i32
  call void @__asan_load4_noabort(i32 %86)
  %p.0.i289 = load ptr, ptr %p.1.in.i288, align 4
  %tobool.not.i290 = icmp eq ptr %p.0.i289, null
  br i1 %tobool.not.i290, label %cleanup.i291.if.else133_crit_edge, label %cleanup.i291.while.body.i265_crit_edge

cleanup.i291.while.body.i265_crit_edge:           ; preds = %cleanup.i291
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i265

cleanup.i291.if.else133_crit_edge:                ; preds = %cleanup.i291
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else133

if.then128:                                       ; preds = %do.end.i272, %do.body.i267.if.then128_crit_edge
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef %.lcssa, ptr noundef %scrub)
  tail call void @rb_erase(ptr noundef %.lcssa, ptr noundef %scrub) #12
  br label %if.end176

if.else133:                                       ; preds = %cleanup.i291.if.else133_crit_edge, %if.else125.if.else133_crit_edge
  %erroneous = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 40
  %87 = ptrtoint ptr %erroneous to i32
  call void @__asan_load4_noabort(i32 %87)
  %p.077.i294 = load ptr, ptr %erroneous, align 4
  %tobool.not78.i295 = icmp eq ptr %p.077.i294, null
  br i1 %tobool.not78.i295, label %if.else133.if.else164_crit_edge, label %while.body.lr.ph.i298

if.else133.if.else164_crit_edge:                  ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else164

while.body.lr.ph.i298:                            ; preds = %if.else133
  %pnum.i296 = getelementptr inbounds %struct.ubi_wl_entry, ptr %.lcssa, i32 0, i32 2
  %88 = ptrtoint ptr %pnum.i296 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pnum.i296, align 4
  %ec.i297 = getelementptr inbounds %struct.ubi_wl_entry, ptr %.lcssa, i32 0, i32 1
  br label %while.body.i302

while.body.i302:                                  ; preds = %cleanup.i328.while.body.i302_crit_edge, %while.body.lr.ph.i298
  %p.079.i299 = phi ptr [ %p.077.i294, %while.body.lr.ph.i298 ], [ %p.0.i326, %cleanup.i328.while.body.i302_crit_edge ]
  %pnum1.i300 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i299, i32 0, i32 2
  %90 = ptrtoint ptr %pnum1.i300 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pnum1.i300, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp.i301 = icmp eq i32 %89, %91
  br i1 %cmp.i301, label %do.body.i304, label %if.end12.i312

do.body.i304:                                     ; preds = %while.body.i302
  %cmp2.not.i303 = icmp eq ptr %p.079.i299, %.lcssa
  br i1 %cmp2.not.i303, label %do.body.i304.if.then136_crit_edge, label %do.end.i309, !prof !308

do.body.i304.if.then136_crit_edge:                ; preds = %do.body.i304
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then136

do.end.i309:                                      ; preds = %do.body.i304
  call void @__sanitizer_cov_trace_pc() #14
  %92 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i305 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i305 to ptr
  %task.i306 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %task.i306 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %task.i306, align 8
  %pid.i307 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 68
  %96 = ptrtoint ptr %pid.i307 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pid.i307, align 8
  %call9.i308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %97) #15
  tail call void @dump_stack() #15
  br label %if.then136

if.end12.i312:                                    ; preds = %while.body.i302
  %98 = ptrtoint ptr %ec.i297 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ec.i297, align 4
  %ec13.i310 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i299, i32 0, i32 1
  %100 = ptrtoint ptr %ec13.i310 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ec13.i310, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp14.i311 = icmp slt i32 %99, %101
  br i1 %cmp14.i311, label %if.then15.i314, label %if.else.i316

if.then15.i314:                                   ; preds = %if.end12.i312
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i313 = getelementptr inbounds %struct.rb_node, ptr %p.079.i299, i32 0, i32 2
  br label %cleanup.i328

if.else.i316:                                     ; preds = %if.end12.i312
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp18.i315 = icmp sgt i32 %99, %101
  br i1 %cmp18.i315, label %if.then19.i318, label %do.end44.i320

if.then19.i318:                                   ; preds = %if.else.i316
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i317 = getelementptr inbounds %struct.rb_node, ptr %p.079.i299, i32 0, i32 1
  br label %cleanup.i328

do.end44.i320:                                    ; preds = %if.else.i316
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp47.i319 = icmp slt i32 %89, %91
  br i1 %cmp47.i319, label %if.then48.i322, label %if.else50.i324

if.then48.i322:                                   ; preds = %do.end44.i320
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i321 = getelementptr inbounds %struct.rb_node, ptr %p.079.i299, i32 0, i32 2
  br label %cleanup.i328

if.else50.i324:                                   ; preds = %do.end44.i320
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i323 = getelementptr inbounds %struct.rb_node, ptr %p.079.i299, i32 0, i32 1
  br label %cleanup.i328

cleanup.i328:                                     ; preds = %if.else50.i324, %if.then48.i322, %if.then19.i318, %if.then15.i314
  %p.1.in.i325 = phi ptr [ %rb_left.i313, %if.then15.i314 ], [ %rb_right.i317, %if.then19.i318 ], [ %rb_left49.i321, %if.then48.i322 ], [ %rb_right51.i323, %if.else50.i324 ]
  %102 = ptrtoint ptr %p.1.in.i325 to i32
  call void @__asan_load4_noabort(i32 %102)
  %p.0.i326 = load ptr, ptr %p.1.in.i325, align 4
  %tobool.not.i327 = icmp eq ptr %p.0.i326, null
  br i1 %tobool.not.i327, label %cleanup.i328.if.else164_crit_edge, label %cleanup.i328.while.body.i302_crit_edge

cleanup.i328.while.body.i302_crit_edge:           ; preds = %cleanup.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i302

cleanup.i328.if.else164_crit_edge:                ; preds = %cleanup.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else164

if.then136:                                       ; preds = %do.end.i309, %do.body.i304.if.then136_crit_edge
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef %.lcssa, ptr noundef %erroneous)
  tail call void @rb_erase(ptr noundef %.lcssa, ptr noundef %erroneous) #12
  %erroneous_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 65
  %103 = ptrtoint ptr %erroneous_peb_count to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %erroneous_peb_count, align 4
  %sub = add i32 %104, -1
  store i32 %sub, ptr %erroneous_peb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp143 = icmp slt i32 %sub, 0
  br i1 %cmp143, label %do.end155, label %if.then136.if.end176_crit_edge, !prof !307

if.then136.if.end176_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

do.end155:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #14
  %105 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i331 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i331 to ptr
  %task158 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task158 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task158, align 8
  %pid159 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 68
  %109 = ptrtoint ptr %pid159 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pid159, align 8
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1285, i32 noundef %110) #15
  tail call void @dump_stack() #15
  br label %if.end176

if.else164:                                       ; preds = %cleanup.i328.if.else164_crit_edge, %if.else133.if.else164_crit_edge
  %pnum165 = getelementptr inbounds %struct.ubi_wl_entry, ptr %.lcssa, i32 0, i32 2
  %111 = ptrtoint ptr %pnum165 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pnum165, align 4
  %call166 = tail call fastcc i32 @prot_queue_del(ptr noundef %ubi, i32 noundef %112)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.else164.if.end176_crit_edge, label %if.then168

if.else164.if.end176_crit_edge:                   ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.then168:                                       ; preds = %if.else164
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.13, i32 noundef %pnum) #12
  %ro_mode.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %113 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ro_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i332 = icmp eq i32 %114, 0
  br i1 %tobool.not.i332, label %if.then.i, label %if.then168.cleanup.sink.split_crit_edge

if.then168.cleanup.sink.split_crit_edge:          ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %ro_mode.i, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.58) #12
  tail call void @dump_stack() #15
  br label %cleanup.sink.split

if.end176:                                        ; preds = %if.else164.if.end176_crit_edge, %do.end155, %if.then136.if.end176_crit_edge, %if.then128, %if.then121
  %torture.addr.0 = phi i32 [ %torture, %if.then121 ], [ %torture, %if.then128 ], [ %torture, %if.else164.if.end176_crit_edge ], [ 1, %do.end155 ], [ 1, %if.then136.if.end176_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %call178 = tail call fastcc i32 @schedule_erase(ptr noundef %ubi, ptr noundef %.lcssa, i32 noundef %vol_id, i32 noundef %lnum, i32 noundef %torture.addr.0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end176.cleanup_crit_edge, label %if.then180

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  tail call fastcc void @wl_tree_add(ptr noundef %.lcssa, ptr noundef %used)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then180, %if.then.i, %if.then168.cleanup.sink.split_crit_edge, %do.end114
  %retval.0.ph = phi i32 [ %call178, %if.then180 ], [ 0, %do.end114 ], [ %call166, %if.then168.cleanup.sink.split_crit_edge ], [ %call166, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end176.cleanup_crit_edge
  %retval.0 = phi i32 [ %call178, %if.end176.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call void @up_read(ptr noundef %fm_protect) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @in_wl_tree(ptr noundef readonly %e, ptr nocapture noundef readonly %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.077 = load ptr, ptr %root, align 4
  %tobool.not78 = icmp eq ptr %p.077, null
  br i1 %tobool.not78, label %entry.cleanup55_crit_edge, label %while.body.lr.ph

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup55

while.body.lr.ph:                                 ; preds = %entry
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %1 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pnum, align 4
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %p.079 = phi ptr [ %p.077, %while.body.lr.ph ], [ %p.0, %cleanup.while.body_crit_edge ]
  %pnum1 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079, i32 0, i32 2
  %3 = ptrtoint ptr %pnum1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pnum1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %while.body
  %cmp2.not = icmp eq ptr %p.079, %e
  br i1 %cmp2.not, label %do.body.cleanup55_crit_edge, label %do.end, !prof !308

do.body.cleanup55_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup55

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %10) #15
  tail call void @dump_stack() #15
  br label %cleanup55

if.end12:                                         ; preds = %while.body
  %11 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ec, align 4
  %ec13 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079, i32 0, i32 1
  %13 = ptrtoint ptr %ec13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ec13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp14 = icmp slt i32 %12, %14
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %p.079, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp18 = icmp sgt i32 %12, %14
  br i1 %cmp18, label %if.then19, label %do.end44

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %p.079, i32 0, i32 1
  br label %cleanup

do.end44:                                         ; preds = %if.else
  %15 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pnum, align 4
  %17 = ptrtoint ptr %pnum1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pnum1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp47 = icmp slt i32 %16, %18
  br i1 %cmp47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49 = getelementptr inbounds %struct.rb_node, ptr %p.079, i32 0, i32 2
  br label %cleanup

if.else50:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51 = getelementptr inbounds %struct.rb_node, ptr %p.079, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.else50, %if.then48, %if.then19, %if.then15
  %p.1.in = phi ptr [ %rb_left, %if.then15 ], [ %rb_right, %if.then19 ], [ %rb_left49, %if.then48 ], [ %rb_right51, %if.else50 ]
  %19 = ptrtoint ptr %p.1.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %p.0 = load ptr, ptr %p.1.in, align 4
  %tobool.not = icmp eq ptr %p.0, null
  br i1 %tobool.not, label %cleanup.cleanup55_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.cleanup55_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup55

cleanup55:                                        ; preds = %cleanup.cleanup55_crit_edge, %do.end, %do.body.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.2 = phi i32 [ 1, %do.body.cleanup55_crit_edge ], [ 1, %do.end ], [ 0, %entry.cleanup55_crit_edge ], [ 0, %cleanup.cleanup55_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef readonly %e, ptr noundef %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %0 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.077.i = load ptr, ptr %root, align 4
  %tobool.not78.i = icmp eq ptr %p.077.i, null
  br i1 %tobool.not78.i, label %if.end.if.end4_crit_edge, label %while.body.lr.ph.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

while.body.lr.ph.i:                               ; preds = %if.end
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %2 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pnum.i, align 4
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.079.i = phi ptr [ %p.077.i, %while.body.lr.ph.i ], [ %p.0.i, %cleanup.i.while.body.i_crit_edge ]
  %pnum1.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i, i32 0, i32 2
  %4 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pnum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp eq i32 %3, %5
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %while.body.i
  %cmp2.not.i = icmp eq ptr %p.079.i, %e
  br i1 %cmp2.not.i, label %do.body.i.return_crit_edge, label %do.end.i, !prof !308

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid.i, align 8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %11) #15
  br label %return.sink.split

if.end12.i:                                       ; preds = %while.body.i
  %12 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ec.i, align 4
  %ec13.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i, i32 0, i32 1
  %14 = ptrtoint ptr %ec13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ec13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp14.i = icmp slt i32 %13, %15
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp18.i = icmp sgt i32 %13, %15
  br i1 %cmp18.i, label %if.then19.i, label %do.end44.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 1
  br label %cleanup.i

do.end44.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp47.i = icmp slt i32 %3, %5
  br i1 %cmp47.i, label %if.then48.i, label %if.else50.i

if.then48.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 2
  br label %cleanup.i

if.else50.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else50.i, %if.then48.i, %if.then19.i, %if.then15.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then15.i ], [ %rb_right.i, %if.then19.i ], [ %rb_left49.i, %if.then48.i ], [ %rb_right51.i, %if.else50.i ]
  %16 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.end4_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.if.end4_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %cleanup.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %17 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pnum, align 4
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  %19 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ec, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.76, i32 noundef %18, i32 noundef %20, ptr noundef %root) #12
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end4, %do.end.i
  tail call void @dump_stack() #15
  br label %return

return:                                           ; preds = %return.sink.split, %do.body.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prot_queue_del(ptr noundef %ubi, i32 noundef %pnum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %0 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lookuptbl, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %pnum
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %4 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %if.end.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %arrayidx.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 0
  br label %for.cond1.i.i

for.cond1.i.i:                                    ; preds = %for.body5.i.i.for.cond1.i.i_crit_edge, %if.end.i
  %p.0.in.i.i = phi ptr [ %arrayidx.i.i, %if.end.i ], [ %p.0.i.i, %for.body5.i.i.for.cond1.i.i_crit_edge ]
  %5 = ptrtoint ptr %p.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0.i.i = load ptr, ptr %p.0.in.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %p.0.i.i, %arrayidx.i.i
  br i1 %cmp4.not.i.i, label %for.inc12.i.i, label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.cond1.i.i
  %cmp6.i.i = icmp eq ptr %p.0.i.i, %3
  br i1 %cmp6.i.i, label %for.body5.i.i.if.end3_crit_edge, label %for.body5.i.i.for.cond1.i.i_crit_edge

for.body5.i.i.for.cond1.i.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.i.i

for.body5.i.i.if.end3_crit_edge:                  ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.i.i:                                    ; preds = %for.cond1.i.i
  %arrayidx.1.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 1
  br label %for.cond1.1.i.i

for.cond1.1.i.i:                                  ; preds = %for.body5.1.i.i.for.cond1.1.i.i_crit_edge, %for.inc12.i.i
  %p.0.in.1.i.i = phi ptr [ %arrayidx.1.i.i, %for.inc12.i.i ], [ %p.0.1.i.i, %for.body5.1.i.i.for.cond1.1.i.i_crit_edge ]
  %6 = ptrtoint ptr %p.0.in.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.0.1.i.i = load ptr, ptr %p.0.in.1.i.i, align 4
  %cmp4.not.1.i.i = icmp eq ptr %p.0.1.i.i, %arrayidx.1.i.i
  br i1 %cmp4.not.1.i.i, label %for.inc12.1.i.i, label %for.body5.1.i.i

for.body5.1.i.i:                                  ; preds = %for.cond1.1.i.i
  %cmp6.1.i.i = icmp eq ptr %p.0.1.i.i, %3
  br i1 %cmp6.1.i.i, label %for.body5.1.i.i.if.end3_crit_edge, label %for.body5.1.i.i.for.cond1.1.i.i_crit_edge

for.body5.1.i.i.for.cond1.1.i.i_crit_edge:        ; preds = %for.body5.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.1.i.i

for.body5.1.i.i.if.end3_crit_edge:                ; preds = %for.body5.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.1.i.i:                                  ; preds = %for.cond1.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 2
  br label %for.cond1.2.i.i

for.cond1.2.i.i:                                  ; preds = %for.body5.2.i.i.for.cond1.2.i.i_crit_edge, %for.inc12.1.i.i
  %p.0.in.2.i.i = phi ptr [ %arrayidx.2.i.i, %for.inc12.1.i.i ], [ %p.0.2.i.i, %for.body5.2.i.i.for.cond1.2.i.i_crit_edge ]
  %7 = ptrtoint ptr %p.0.in.2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %p.0.2.i.i = load ptr, ptr %p.0.in.2.i.i, align 4
  %cmp4.not.2.i.i = icmp eq ptr %p.0.2.i.i, %arrayidx.2.i.i
  br i1 %cmp4.not.2.i.i, label %for.inc12.2.i.i, label %for.body5.2.i.i

for.body5.2.i.i:                                  ; preds = %for.cond1.2.i.i
  %cmp6.2.i.i = icmp eq ptr %p.0.2.i.i, %3
  br i1 %cmp6.2.i.i, label %for.body5.2.i.i.if.end3_crit_edge, label %for.body5.2.i.i.for.cond1.2.i.i_crit_edge

for.body5.2.i.i.for.cond1.2.i.i_crit_edge:        ; preds = %for.body5.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.2.i.i

for.body5.2.i.i.if.end3_crit_edge:                ; preds = %for.body5.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.2.i.i:                                  ; preds = %for.cond1.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 3
  br label %for.cond1.3.i.i

for.cond1.3.i.i:                                  ; preds = %for.body5.3.i.i.for.cond1.3.i.i_crit_edge, %for.inc12.2.i.i
  %p.0.in.3.i.i = phi ptr [ %arrayidx.3.i.i, %for.inc12.2.i.i ], [ %p.0.3.i.i, %for.body5.3.i.i.for.cond1.3.i.i_crit_edge ]
  %8 = ptrtoint ptr %p.0.in.3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.0.3.i.i = load ptr, ptr %p.0.in.3.i.i, align 4
  %cmp4.not.3.i.i = icmp eq ptr %p.0.3.i.i, %arrayidx.3.i.i
  br i1 %cmp4.not.3.i.i, label %for.inc12.3.i.i, label %for.body5.3.i.i

for.body5.3.i.i:                                  ; preds = %for.cond1.3.i.i
  %cmp6.3.i.i = icmp eq ptr %p.0.3.i.i, %3
  br i1 %cmp6.3.i.i, label %for.body5.3.i.i.if.end3_crit_edge, label %for.body5.3.i.i.for.cond1.3.i.i_crit_edge

for.body5.3.i.i.for.cond1.3.i.i_crit_edge:        ; preds = %for.body5.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.3.i.i

for.body5.3.i.i.if.end3_crit_edge:                ; preds = %for.body5.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.3.i.i:                                  ; preds = %for.cond1.3.i.i
  %arrayidx.4.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 4
  br label %for.cond1.4.i.i

for.cond1.4.i.i:                                  ; preds = %for.body5.4.i.i.for.cond1.4.i.i_crit_edge, %for.inc12.3.i.i
  %p.0.in.4.i.i = phi ptr [ %arrayidx.4.i.i, %for.inc12.3.i.i ], [ %p.0.4.i.i, %for.body5.4.i.i.for.cond1.4.i.i_crit_edge ]
  %9 = ptrtoint ptr %p.0.in.4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.0.4.i.i = load ptr, ptr %p.0.in.4.i.i, align 4
  %cmp4.not.4.i.i = icmp eq ptr %p.0.4.i.i, %arrayidx.4.i.i
  br i1 %cmp4.not.4.i.i, label %for.inc12.4.i.i, label %for.body5.4.i.i

for.body5.4.i.i:                                  ; preds = %for.cond1.4.i.i
  %cmp6.4.i.i = icmp eq ptr %p.0.4.i.i, %3
  br i1 %cmp6.4.i.i, label %for.body5.4.i.i.if.end3_crit_edge, label %for.body5.4.i.i.for.cond1.4.i.i_crit_edge

for.body5.4.i.i.for.cond1.4.i.i_crit_edge:        ; preds = %for.body5.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.4.i.i

for.body5.4.i.i.if.end3_crit_edge:                ; preds = %for.body5.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.4.i.i:                                  ; preds = %for.cond1.4.i.i
  %arrayidx.5.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 5
  br label %for.cond1.5.i.i

for.cond1.5.i.i:                                  ; preds = %for.body5.5.i.i.for.cond1.5.i.i_crit_edge, %for.inc12.4.i.i
  %p.0.in.5.i.i = phi ptr [ %arrayidx.5.i.i, %for.inc12.4.i.i ], [ %p.0.5.i.i, %for.body5.5.i.i.for.cond1.5.i.i_crit_edge ]
  %10 = ptrtoint ptr %p.0.in.5.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.0.5.i.i = load ptr, ptr %p.0.in.5.i.i, align 4
  %cmp4.not.5.i.i = icmp eq ptr %p.0.5.i.i, %arrayidx.5.i.i
  br i1 %cmp4.not.5.i.i, label %for.inc12.5.i.i, label %for.body5.5.i.i

for.body5.5.i.i:                                  ; preds = %for.cond1.5.i.i
  %cmp6.5.i.i = icmp eq ptr %p.0.5.i.i, %3
  br i1 %cmp6.5.i.i, label %for.body5.5.i.i.if.end3_crit_edge, label %for.body5.5.i.i.for.cond1.5.i.i_crit_edge

for.body5.5.i.i.for.cond1.5.i.i_crit_edge:        ; preds = %for.body5.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.5.i.i

for.body5.5.i.i.if.end3_crit_edge:                ; preds = %for.body5.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.5.i.i:                                  ; preds = %for.cond1.5.i.i
  %arrayidx.6.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 6
  br label %for.cond1.6.i.i

for.cond1.6.i.i:                                  ; preds = %for.body5.6.i.i.for.cond1.6.i.i_crit_edge, %for.inc12.5.i.i
  %p.0.in.6.i.i = phi ptr [ %arrayidx.6.i.i, %for.inc12.5.i.i ], [ %p.0.6.i.i, %for.body5.6.i.i.for.cond1.6.i.i_crit_edge ]
  %11 = ptrtoint ptr %p.0.in.6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.0.6.i.i = load ptr, ptr %p.0.in.6.i.i, align 4
  %cmp4.not.6.i.i = icmp eq ptr %p.0.6.i.i, %arrayidx.6.i.i
  br i1 %cmp4.not.6.i.i, label %for.inc12.6.i.i, label %for.body5.6.i.i

for.body5.6.i.i:                                  ; preds = %for.cond1.6.i.i
  %cmp6.6.i.i = icmp eq ptr %p.0.6.i.i, %3
  br i1 %cmp6.6.i.i, label %for.body5.6.i.i.if.end3_crit_edge, label %for.body5.6.i.i.for.cond1.6.i.i_crit_edge

for.body5.6.i.i.for.cond1.6.i.i_crit_edge:        ; preds = %for.body5.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.6.i.i

for.body5.6.i.i.if.end3_crit_edge:                ; preds = %for.body5.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.6.i.i:                                  ; preds = %for.cond1.6.i.i
  %arrayidx.7.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 7
  br label %for.cond1.7.i.i

for.cond1.7.i.i:                                  ; preds = %for.body5.7.i.i.for.cond1.7.i.i_crit_edge, %for.inc12.6.i.i
  %p.0.in.7.i.i = phi ptr [ %arrayidx.7.i.i, %for.inc12.6.i.i ], [ %p.0.7.i.i, %for.body5.7.i.i.for.cond1.7.i.i_crit_edge ]
  %12 = ptrtoint ptr %p.0.in.7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %p.0.7.i.i = load ptr, ptr %p.0.in.7.i.i, align 4
  %cmp4.not.7.i.i = icmp eq ptr %p.0.7.i.i, %arrayidx.7.i.i
  br i1 %cmp4.not.7.i.i, label %for.inc12.7.i.i, label %for.body5.7.i.i

for.body5.7.i.i:                                  ; preds = %for.cond1.7.i.i
  %cmp6.7.i.i = icmp eq ptr %p.0.7.i.i, %3
  br i1 %cmp6.7.i.i, label %for.body5.7.i.i.if.end3_crit_edge, label %for.body5.7.i.i.for.cond1.7.i.i_crit_edge

for.body5.7.i.i.for.cond1.7.i.i_crit_edge:        ; preds = %for.body5.7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.7.i.i

for.body5.7.i.i.if.end3_crit_edge:                ; preds = %for.body5.7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.7.i.i:                                  ; preds = %for.cond1.7.i.i
  %arrayidx.8.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 8
  br label %for.cond1.8.i.i

for.cond1.8.i.i:                                  ; preds = %for.body5.8.i.i.for.cond1.8.i.i_crit_edge, %for.inc12.7.i.i
  %p.0.in.8.i.i = phi ptr [ %arrayidx.8.i.i, %for.inc12.7.i.i ], [ %p.0.8.i.i, %for.body5.8.i.i.for.cond1.8.i.i_crit_edge ]
  %13 = ptrtoint ptr %p.0.in.8.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.0.8.i.i = load ptr, ptr %p.0.in.8.i.i, align 4
  %cmp4.not.8.i.i = icmp eq ptr %p.0.8.i.i, %arrayidx.8.i.i
  br i1 %cmp4.not.8.i.i, label %for.inc12.8.i.i, label %for.body5.8.i.i

for.body5.8.i.i:                                  ; preds = %for.cond1.8.i.i
  %cmp6.8.i.i = icmp eq ptr %p.0.8.i.i, %3
  br i1 %cmp6.8.i.i, label %for.body5.8.i.i.if.end3_crit_edge, label %for.body5.8.i.i.for.cond1.8.i.i_crit_edge

for.body5.8.i.i.for.cond1.8.i.i_crit_edge:        ; preds = %for.body5.8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.8.i.i

for.body5.8.i.i.if.end3_crit_edge:                ; preds = %for.body5.8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

for.inc12.8.i.i:                                  ; preds = %for.cond1.8.i.i
  %arrayidx.9.i.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 9
  br label %for.cond1.9.i.i

for.cond1.9.i.i:                                  ; preds = %for.body5.9.i.i.for.cond1.9.i.i_crit_edge, %for.inc12.8.i.i
  %p.0.in.9.i.i = phi ptr [ %arrayidx.9.i.i, %for.inc12.8.i.i ], [ %p.0.9.i.i, %for.body5.9.i.i.for.cond1.9.i.i_crit_edge ]
  %14 = ptrtoint ptr %p.0.in.9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %p.0.9.i.i = load ptr, ptr %p.0.in.9.i.i, align 4
  %cmp4.not.9.i.i = icmp eq ptr %p.0.9.i.i, %arrayidx.9.i.i
  br i1 %cmp4.not.9.i.i, label %self_check_in_pq.exit, label %for.body5.9.i.i

for.body5.9.i.i:                                  ; preds = %for.cond1.9.i.i
  %cmp6.9.i.i = icmp eq ptr %p.0.9.i.i, %3
  br i1 %cmp6.9.i.i, label %for.body5.9.i.i.if.end3_crit_edge, label %for.body5.9.i.i.for.cond1.9.i.i_crit_edge

for.body5.9.i.i.for.cond1.9.i.i_crit_edge:        ; preds = %for.body5.9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.9.i.i

for.body5.9.i.i.if.end3_crit_edge:                ; preds = %for.body5.9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

self_check_in_pq.exit:                            ; preds = %for.cond1.9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pnum.i, align 4
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ec.i, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.57, i32 noundef %16, i32 noundef %18) #12
  tail call void @dump_stack() #15
  br label %cleanup

if.end3:                                          ; preds = %for.body5.9.i.i.if.end3_crit_edge, %for.body5.8.i.i.if.end3_crit_edge, %for.body5.7.i.i.if.end3_crit_edge, %for.body5.6.i.i.if.end3_crit_edge, %for.body5.5.i.i.if.end3_crit_edge, %for.body5.4.i.i.if.end3_crit_edge, %for.body5.3.i.i.if.end3_crit_edge, %for.body5.2.i.i.if.end3_crit_edge, %for.body5.1.i.i.if.end3_crit_edge, %for.body5.i.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %3) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_del.exit_crit_edge

if.end3.list_del.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end3.list_del.exit_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prot_queue_del.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prot_queue_del, %if.then8)) #12
          to label %cleanup [label %if.then8], !srcloc !306

if.then8:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid, align 8
  %pnum10 = getelementptr inbounds %struct.ubi_wl_entry, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %pnum10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pnum10, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prot_queue_del.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.56, i32 noundef %32, i32 noundef %34) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %list_del.exit, %self_check_in_pq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %self_check_in_pq.exit ], [ 0, %if.then8 ], [ 0, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @schedule_erase(ptr noundef %ubi, ptr noundef %e, i32 noundef %vol_id, i32 noundef %lnum, i32 noundef %torture, i1 noundef zeroext %nested) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %e, null
  br i1 %tobool.not, label %do.end, label %entry.do.body8_crit_edge, !prof !307

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.59, i32 noundef 588, i32 noundef %5) #15
  tail call void @dump_stack() #15
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @schedule_erase.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@schedule_erase, %if.then19)) #12
          to label %do.end25 [label %if.then19], !srcloc !306

if.then19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i49 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i49 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task21, align 8
  %pid22 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid22, align 8
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %12 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pnum, align 4
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  %14 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ec, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @schedule_erase.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.60, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %torture) #12
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3136, i32 noundef 28) #16
  %tobool27.not = icmp eq ptr %call7.i, null
  br i1 %tobool27.not, label %do.end25.cleanup_crit_edge, label %if.end29

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %do.end25
  %func = getelementptr inbounds %struct.ubi_work, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @erase_worker, ptr %func, align 8
  %e30 = getelementptr inbounds %struct.ubi_work, ptr %call7.i, i32 0, i32 2
  %18 = ptrtoint ptr %e30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %e, ptr %e30, align 4
  %vol_id31 = getelementptr inbounds %struct.ubi_work, ptr %call7.i, i32 0, i32 3
  %19 = ptrtoint ptr %vol_id31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %vol_id, ptr %vol_id31, align 8
  %lnum32 = getelementptr inbounds %struct.ubi_work, ptr %call7.i, i32 0, i32 4
  %20 = ptrtoint ptr %lnum32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lnum, ptr %lnum32, align 4
  %torture33 = getelementptr inbounds %struct.ubi_work, ptr %call7.i, i32 0, i32 5
  %21 = ptrtoint ptr %torture33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %torture, ptr %torture33, align 8
  br i1 %nested, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__schedule_ubi_work(ptr noundef %ubi, ptr noundef nonnull %call7.i)
  br label %cleanup

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %work_sem.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 48
  tail call void @down_read(ptr noundef %work_sem.i) #12
  tail call fastcc void @__schedule_ubi_work(ptr noundef %ubi, ptr noundef nonnull %call7.i) #12
  tail call void @up_read(ptr noundef %work_sem.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then35, %do.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end25.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wl_tree_add(ptr noundef %e, ptr noundef %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not47 = icmp eq ptr %1, null
  br i1 %tobool.not47, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %24, %if.end27.while.body_crit_edge ]
  %p.048 = phi ptr [ %root, %while.body.lr.ph ], [ %p.1, %if.end27.while.body_crit_edge ]
  %3 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ec, align 4
  %ec1 = getelementptr inbounds %struct.ubi_wl_entry, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ec1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end27

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp4 = icmp sgt i32 %4, %6
  br i1 %cmp4, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end27

do.body:                                          ; preds = %if.else
  %7 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pnum, align 4
  %pnum7 = getelementptr inbounds %struct.ubi_wl_entry, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %pnum7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pnum7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp8.not = icmp eq i32 %8, %10
  br i1 %cmp8.not, label %do.end, label %do.body.do.end17_crit_edge, !prof !307

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61, i32 noundef 155, i32 noundef %16) #15
  tail call void @dump_stack() #15
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %17 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pnum, align 4
  %19 = ptrtoint ptr %pnum7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pnum7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp20 = icmp slt i32 %18, %20
  %21 = ptrtoint ptr %p.048 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p.048, align 4
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left22 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2
  br label %if.end27

if.else23:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right24 = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.then21, %if.then5, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then5 ], [ %rb_left22, %if.then21 ], [ %rb_right24, %if.else23 ]
  %23 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le = ptrtoint ptr %2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %root, %entry.while.end_crit_edge ]
  %25 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %parent.0.lcssa, ptr %e, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %e, i32 0, i32 1
  %26 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %e, i32 0, i32 2
  %27 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_left.i, align 4
  %28 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %e, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %e, ptr noundef %root) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_scrub_peb(ptr noundef %ubi, i32 noundef %pnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.14, i32 noundef %pnum) #12
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %0 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lookuptbl, align 8
  %arrayidx158 = getelementptr ptr, ptr %1, i32 %pnum
  %2 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx158, align 4
  %move_from = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 51
  %4 = ptrtoint ptr %move_from to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %move_from, align 4
  %cmp159 = icmp eq ptr %3, %5
  br i1 %cmp159, label %entry.if.then_crit_edge, label %lor.lhs.false.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.lr.ph:                              ; preds = %entry
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %erroneous = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 40
  %move_to = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 52
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %6 = phi ptr [ %3, %lor.lhs.false.lr.ph ], [ %44, %do.end.lor.lhs.false_crit_edge ]
  %7 = ptrtoint ptr %scrub to i32
  call void @__asan_load4_noabort(i32 %7)
  %p.077.i = load ptr, ptr %scrub, align 4
  %tobool.not78.i = icmp eq ptr %p.077.i, null
  br i1 %tobool.not78.i, label %lor.lhs.false.lor.lhs.false1_crit_edge, label %while.body.lr.ph.i

lor.lhs.false.lor.lhs.false1_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false1

while.body.lr.ph.i:                               ; preds = %lor.lhs.false
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pnum.i, align 4
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.079.i = phi ptr [ %p.077.i, %while.body.lr.ph.i ], [ %p.0.i, %cleanup.i.while.body.i_crit_edge ]
  %pnum1.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i, i32 0, i32 2
  %10 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pnum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %while.body.i
  %cmp2.not.i = icmp eq ptr %p.079.i, %6
  br i1 %cmp2.not.i, label %do.body.i.if.then_crit_edge, label %do.body.i.if.then.sink.split_crit_edge, !prof !308

do.body.i.if.then.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.sink.split

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end12.i:                                       ; preds = %while.body.i
  %12 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ec.i, align 4
  %ec13.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i, i32 0, i32 1
  %14 = ptrtoint ptr %ec13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ec13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp14.i = icmp slt i32 %13, %15
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp18.i = icmp sgt i32 %13, %15
  br i1 %cmp18.i, label %if.then19.i, label %do.end44.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 1
  br label %cleanup.i

do.end44.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp47.i = icmp slt i32 %9, %11
  br i1 %cmp47.i, label %if.then48.i, label %if.else50.i

if.then48.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 2
  br label %cleanup.i

if.else50.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else50.i, %if.then48.i, %if.then19.i, %if.then15.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then15.i ], [ %rb_right.i, %if.then19.i ], [ %rb_left49.i, %if.then48.i ], [ %rb_right51.i, %if.else50.i ]
  %16 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.lor.lhs.false1_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.lor.lhs.false1_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %cleanup.i.lor.lhs.false1_crit_edge, %lor.lhs.false.lor.lhs.false1_crit_edge
  %17 = ptrtoint ptr %erroneous to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.077.i64 = load ptr, ptr %erroneous, align 4
  %tobool.not78.i65 = icmp eq ptr %p.077.i64, null
  br i1 %tobool.not78.i65, label %lor.lhs.false1.if.end_crit_edge, label %while.body.lr.ph.i68

lor.lhs.false1.if.end_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.lr.ph.i68:                             ; preds = %lor.lhs.false1
  %pnum.i66 = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 2
  %18 = ptrtoint ptr %pnum.i66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pnum.i66, align 4
  %ec.i67 = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 1
  br label %while.body.i72

while.body.i72:                                   ; preds = %cleanup.i98.while.body.i72_crit_edge, %while.body.lr.ph.i68
  %p.079.i69 = phi ptr [ %p.077.i64, %while.body.lr.ph.i68 ], [ %p.0.i96, %cleanup.i98.while.body.i72_crit_edge ]
  %pnum1.i70 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i69, i32 0, i32 2
  %20 = ptrtoint ptr %pnum1.i70 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pnum1.i70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i71 = icmp eq i32 %19, %21
  br i1 %cmp.i71, label %do.body.i74, label %if.end12.i82

do.body.i74:                                      ; preds = %while.body.i72
  %cmp2.not.i73 = icmp eq ptr %p.079.i69, %6
  br i1 %cmp2.not.i73, label %do.body.i74.if.then_crit_edge, label %do.body.i74.if.then.sink.split_crit_edge, !prof !308

do.body.i74.if.then.sink.split_crit_edge:         ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.sink.split

do.body.i74.if.then_crit_edge:                    ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end12.i82:                                     ; preds = %while.body.i72
  %22 = ptrtoint ptr %ec.i67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ec.i67, align 4
  %ec13.i80 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i69, i32 0, i32 1
  %24 = ptrtoint ptr %ec13.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ec13.i80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp14.i81 = icmp slt i32 %23, %25
  br i1 %cmp14.i81, label %if.then15.i84, label %if.else.i86

if.then15.i84:                                    ; preds = %if.end12.i82
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i83 = getelementptr inbounds %struct.rb_node, ptr %p.079.i69, i32 0, i32 2
  br label %cleanup.i98

if.else.i86:                                      ; preds = %if.end12.i82
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp18.i85 = icmp sgt i32 %23, %25
  br i1 %cmp18.i85, label %if.then19.i88, label %do.end44.i90

if.then19.i88:                                    ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i87 = getelementptr inbounds %struct.rb_node, ptr %p.079.i69, i32 0, i32 1
  br label %cleanup.i98

do.end44.i90:                                     ; preds = %if.else.i86
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp47.i89 = icmp slt i32 %19, %21
  br i1 %cmp47.i89, label %if.then48.i92, label %if.else50.i94

if.then48.i92:                                    ; preds = %do.end44.i90
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i91 = getelementptr inbounds %struct.rb_node, ptr %p.079.i69, i32 0, i32 2
  br label %cleanup.i98

if.else50.i94:                                    ; preds = %do.end44.i90
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i93 = getelementptr inbounds %struct.rb_node, ptr %p.079.i69, i32 0, i32 1
  br label %cleanup.i98

cleanup.i98:                                      ; preds = %if.else50.i94, %if.then48.i92, %if.then19.i88, %if.then15.i84
  %p.1.in.i95 = phi ptr [ %rb_left.i83, %if.then15.i84 ], [ %rb_right.i87, %if.then19.i88 ], [ %rb_left49.i91, %if.then48.i92 ], [ %rb_right51.i93, %if.else50.i94 ]
  %26 = ptrtoint ptr %p.1.in.i95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %p.0.i96 = load ptr, ptr %p.1.in.i95, align 4
  %tobool.not.i97 = icmp eq ptr %p.0.i96, null
  br i1 %tobool.not.i97, label %cleanup.i98.if.end_crit_edge, label %cleanup.i98.while.body.i72_crit_edge

cleanup.i98.while.body.i72_crit_edge:             ; preds = %cleanup.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i72

cleanup.i98.if.end_crit_edge:                     ; preds = %cleanup.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.sink.split:                               ; preds = %do.body.i74.if.then.sink.split_crit_edge, %do.body.i.if.then.sink.split_crit_edge
  %27 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i75 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i75 to ptr
  %task.i76 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i76, align 8
  %pid.i77 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid.i77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid.i77, align 8
  %call9.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %32) #15
  tail call void @dump_stack() #15
  br label %if.then

if.then:                                          ; preds = %do.end.if.then_crit_edge, %if.then.sink.split, %do.body.i74.if.then_crit_edge, %do.body.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup32

if.end:                                           ; preds = %cleanup.i98.if.end_crit_edge, %lor.lhs.false1.if.end_crit_edge
  %33 = ptrtoint ptr %move_to to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %move_to, align 8
  %cmp5 = icmp eq ptr %6, %34
  br i1 %cmp5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_scrub_peb.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_scrub_peb, %if.then12)) #12
          to label %do.end [label %if.then12], !srcloc !306

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %35 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_scrub_peb.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.16, i32 noundef %40, i32 noundef %pnum) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.then6
  tail call void @yield() #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %41 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lookuptbl, align 8
  %arrayidx = getelementptr ptr, ptr %42, i32 %pnum
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %move_from to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %move_from, align 4
  %cmp = icmp eq ptr %44, %46
  br i1 %cmp, label %do.end.if.then_crit_edge, label %do.end.lor.lhs.false_crit_edge

do.end.lor.lhs.false_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

do.end.if.then_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end15:                                         ; preds = %if.end
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %47 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %47)
  %p.077.i101 = load ptr, ptr %used, align 4
  %tobool.not78.i102 = icmp eq ptr %p.077.i101, null
  br i1 %tobool.not78.i102, label %if.end15.if.else_crit_edge, label %while.body.lr.ph.i105

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

while.body.lr.ph.i105:                            ; preds = %if.end15
  %pnum.i103 = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 2
  %48 = ptrtoint ptr %pnum.i103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pnum.i103, align 4
  %ec.i104 = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 1
  br label %while.body.i109

while.body.i109:                                  ; preds = %cleanup.i135.while.body.i109_crit_edge, %while.body.lr.ph.i105
  %p.079.i106 = phi ptr [ %p.077.i101, %while.body.lr.ph.i105 ], [ %p.0.i133, %cleanup.i135.while.body.i109_crit_edge ]
  %pnum1.i107 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i106, i32 0, i32 2
  %50 = ptrtoint ptr %pnum1.i107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pnum1.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.i108 = icmp eq i32 %49, %51
  br i1 %cmp.i108, label %do.body.i111, label %if.end12.i119

do.body.i111:                                     ; preds = %while.body.i109
  %cmp2.not.i110 = icmp eq ptr %p.079.i106, %6
  br i1 %cmp2.not.i110, label %do.body.i111.if.then18_crit_edge, label %do.end.i116, !prof !308

do.body.i111.if.then18_crit_edge:                 ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

do.end.i116:                                      ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #14
  %52 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i112 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i112 to ptr
  %task.i113 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i113 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i113, align 8
  %pid.i114 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid.i114 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid.i114, align 8
  %call9.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %57) #15
  tail call void @dump_stack() #15
  br label %if.then18

if.end12.i119:                                    ; preds = %while.body.i109
  %58 = ptrtoint ptr %ec.i104 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ec.i104, align 4
  %ec13.i117 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i106, i32 0, i32 1
  %60 = ptrtoint ptr %ec13.i117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ec13.i117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp14.i118 = icmp slt i32 %59, %61
  br i1 %cmp14.i118, label %if.then15.i121, label %if.else.i123

if.then15.i121:                                   ; preds = %if.end12.i119
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i120 = getelementptr inbounds %struct.rb_node, ptr %p.079.i106, i32 0, i32 2
  br label %cleanup.i135

if.else.i123:                                     ; preds = %if.end12.i119
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp18.i122 = icmp sgt i32 %59, %61
  br i1 %cmp18.i122, label %if.then19.i125, label %do.end44.i127

if.then19.i125:                                   ; preds = %if.else.i123
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i124 = getelementptr inbounds %struct.rb_node, ptr %p.079.i106, i32 0, i32 1
  br label %cleanup.i135

do.end44.i127:                                    ; preds = %if.else.i123
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp47.i126 = icmp slt i32 %49, %51
  br i1 %cmp47.i126, label %if.then48.i129, label %if.else50.i131

if.then48.i129:                                   ; preds = %do.end44.i127
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i128 = getelementptr inbounds %struct.rb_node, ptr %p.079.i106, i32 0, i32 2
  br label %cleanup.i135

if.else50.i131:                                   ; preds = %do.end44.i127
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i130 = getelementptr inbounds %struct.rb_node, ptr %p.079.i106, i32 0, i32 1
  br label %cleanup.i135

cleanup.i135:                                     ; preds = %if.else50.i131, %if.then48.i129, %if.then19.i125, %if.then15.i121
  %p.1.in.i132 = phi ptr [ %rb_left.i120, %if.then15.i121 ], [ %rb_right.i124, %if.then19.i125 ], [ %rb_left49.i128, %if.then48.i129 ], [ %rb_right51.i130, %if.else50.i131 ]
  %62 = ptrtoint ptr %p.1.in.i132 to i32
  call void @__asan_load4_noabort(i32 %62)
  %p.0.i133 = load ptr, ptr %p.1.in.i132, align 4
  %tobool.not.i134 = icmp eq ptr %p.0.i133, null
  br i1 %tobool.not.i134, label %cleanup.i135.if.else_crit_edge, label %cleanup.i135.while.body.i109_crit_edge

cleanup.i135.while.body.i109_crit_edge:           ; preds = %cleanup.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i109

cleanup.i135.if.else_crit_edge:                   ; preds = %cleanup.i135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then18:                                        ; preds = %do.end.i116, %do.body.i111.if.then18_crit_edge
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef %6, ptr noundef %used)
  tail call void @rb_erase(ptr noundef %6, ptr noundef %used) #12
  br label %if.end28

if.else:                                          ; preds = %cleanup.i135.if.else_crit_edge, %if.end15.if.else_crit_edge
  %pnum22 = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 2
  %63 = ptrtoint ptr %pnum22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pnum22, align 4
  %call23 = tail call fastcc i32 @prot_queue_del(ptr noundef %ubi, i32 noundef %64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else.if.end28_crit_edge, label %if.then25

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.else
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.13, i32 noundef %pnum) #12
  %ro_mode.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %65 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ro_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i138 = icmp eq i32 %66, 0
  br i1 %tobool.not.i138, label %if.then.i, label %if.then25.ubi_ro_mode.exit_crit_edge

if.then25.ubi_ro_mode.exit_crit_edge:             ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_ro_mode.exit

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %ro_mode.i, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.58) #12
  tail call void @dump_stack() #15
  br label %ubi_ro_mode.exit

ubi_ro_mode.exit:                                 ; preds = %if.then.i, %if.then25.ubi_ro_mode.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup32

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then18
  tail call fastcc void @wl_tree_add(ptr noundef %6, ptr noundef %scrub)
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %call31 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %ubi, i32 noundef 0)
  br label %cleanup32

cleanup32:                                        ; preds = %if.end28, %ubi_ro_mode.exit, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ %call31, %if.end28 ], [ %call23, %ubi_ro_mode.exit ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ensure_wear_leveling(ptr noundef %ubi, i32 noundef %nested) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %wl_scheduled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 49
  %0 = ptrtoint ptr %wl_scheduled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wl_scheduled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end:                                           ; preds = %entry
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %2 = ptrtoint ptr %scrub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scrub, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %do.body23

if.then2:                                         ; preds = %if.end
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %4 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %used, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then2.out_unlock_crit_edge, label %lor.lhs.false

if.then2.out_unlock_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.then2
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %6 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false.out_unlock_crit_edge, label %if.end8

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end8:                                          ; preds = %lor.lhs.false
  %call = tail call ptr @rb_first(ptr noundef %used) #12
  %call.i = tail call ptr @rb_first(ptr noundef %free) #12
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ec.i, align 4
  %add.i = add i32 %9, 8192
  %10 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.01.i = load ptr, ptr %free, align 4
  %tobool.not2.i = icmp eq ptr %p.01.i, null
  br i1 %tobool.not2.i, label %if.end8.find_wl_entry.exit_crit_edge, label %if.end8.while.body.i_crit_edge

if.end8.while.body.i_crit_edge:                   ; preds = %if.end8
  br label %while.body.i

if.end8.find_wl_entry.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_wl_entry.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end8.while.body.i_crit_edge
  %p.04.i = phi ptr [ %p.0.i, %while.body.i.while.body.i_crit_edge ], [ %p.01.i, %if.end8.while.body.i_crit_edge ]
  %e.03.i = phi ptr [ %e.1.i, %while.body.i.while.body.i_crit_edge ], [ %call.i, %if.end8.while.body.i_crit_edge ]
  %ec4.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.04.i, i32 0, i32 1
  %11 = ptrtoint ptr %ec4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ec4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add.i)
  %cmp.not.i = icmp slt i32 %12, %add.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.04.i, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.04.i, i32 0, i32 1
  %e.1.i = select i1 %cmp.not.i, ptr %p.04.i, ptr %e.03.i
  %p.1.in.i = select i1 %cmp.not.i, ptr %rb_right.i, ptr %rb_left.i
  %13 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %while.body.i.find_wl_entry.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.find_wl_entry.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_wl_entry.exit

find_wl_entry.exit:                               ; preds = %while.body.i.find_wl_entry.exit_crit_edge, %if.end8.find_wl_entry.exit_crit_edge
  %e.0.lcssa.i = phi ptr [ %call.i, %if.end8.find_wl_entry.exit_crit_edge ], [ %e.1.i, %while.body.i.find_wl_entry.exit_crit_edge ]
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.0.lcssa.i, i32 0, i32 1
  %14 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ec, align 4
  %ec12 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %ec12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ec12, align 4
  %sub = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub)
  %cmp = icmp sgt i32 %sub, 4095
  br i1 %cmp, label %do.body, label %find_wl_entry.exit.out_unlock_crit_edge

find_wl_entry.exit.out_unlock_crit_edge:          ; preds = %find_wl_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

do.body:                                          ; preds = %find_wl_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ensure_wear_leveling.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ensure_wear_leveling, %if.then20)) #12
          to label %if.end42 [label %if.then20], !srcloc !306

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %18 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ensure_wear_leveling.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.63, i32 noundef %23) #12
  br label %if.end42

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ensure_wear_leveling.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ensure_wear_leveling, %if.then35)) #12
          to label %if.end42 [label %if.then35], !srcloc !306

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i80 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i80 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task37, align 8
  %pid38 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid38, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ensure_wear_leveling.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.64, i32 noundef %29) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %do.body23, %if.then20, %do.body
  %30 = ptrtoint ptr %wl_scheduled to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %wl_scheduled, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3136, i32 noundef 28) #16
  %tobool46.not = icmp eq ptr %call7.i, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %32 = ptrtoint ptr %wl_scheduled to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wl_scheduled, align 4
  br label %out_unlock

if.end48:                                         ; preds = %if.end42
  %func = getelementptr inbounds %struct.ubi_work, ptr %call7.i, i32 0, i32 1
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @wear_leveling_worker, ptr %func, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nested)
  %tobool49.not = icmp eq i32 %nested, 0
  br i1 %tobool49.not, label %if.else51, label %if.then50

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__schedule_ubi_work(ptr noundef %ubi, ptr noundef nonnull %call7.i)
  br label %cleanup

if.else51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %work_sem.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 48
  tail call void @down_read(ptr noundef %work_sem.i) #12
  tail call fastcc void @__schedule_ubi_work(ptr noundef %ubi, ptr noundef nonnull %call7.i) #12
  tail call void @up_read(ptr noundef %work_sem.i) #12
  br label %cleanup

out_unlock:                                       ; preds = %if.then47, %find_wl_entry.exit.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %if.then2.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %err.0 = phi i32 [ 0, %entry.out_unlock_crit_edge ], [ -12, %if.then47 ], [ 0, %find_wl_entry.exit.out_unlock_crit_edge ], [ 0, %lor.lhs.false.out_unlock_crit_edge ], [ 0, %if.then2.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.else51, %if.then50
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ 0, %if.else51 ], [ 0, %if.then50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_flush(ptr noundef %ubi, i32 noundef %vol_id, i32 noundef %lnum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_flush.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_flush, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  %works_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 55
  %6 = ptrtoint ptr %works_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %works_count, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_flush.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %vol_id, i32 noundef %lnum, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %work_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 48
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  %works = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vol_id)
  %cmp15 = icmp eq i32 %vol_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lnum)
  %cmp18 = icmp eq i32 %lnum, -1
  %works_count24 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 55
  tail call void @down_read(ptr noundef %work_sem) #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %8 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %works, align 8
  %cmp.not104112 = icmp eq ptr %9, %works
  br i1 %cmp.not104112, label %do.end.while.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

for.body:                                         ; preds = %for.body.backedge, %do.end.for.body_crit_edge
  %wrk.0105 = phi ptr [ %wrk.0105.be, %for.body.backedge ], [ %9, %do.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %wrk.0105 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tmp5.0106 = load ptr, ptr %wrk.0105, align 4
  br i1 %cmp15, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %vol_id16 = getelementptr inbounds %struct.ubi_work, ptr %wrk.0105, i32 0, i32 3
  %11 = ptrtoint ptr %vol_id16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vol_id16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %vol_id)
  %cmp17 = icmp eq i32 %12, %vol_id
  br i1 %cmp17, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  br i1 %cmp18, label %land.lhs.true.if.then22_crit_edge, label %lor.lhs.false19

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

lor.lhs.false19:                                  ; preds = %land.lhs.true
  %lnum20 = getelementptr inbounds %struct.ubi_work, ptr %wrk.0105, i32 0, i32 4
  %13 = ptrtoint ptr %lnum20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lnum20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %lnum)
  %cmp21 = icmp eq i32 %14, %lnum
  br i1 %cmp21, label %lor.lhs.false19.if.then22_crit_edge, label %lor.lhs.false19.for.inc_crit_edge

lor.lhs.false19.for.inc_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false19.if.then22_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false19.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %wrk.0105) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then22.list_del.exit_crit_edge

if.then22.list_del.exit_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %wrk.0105, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %wrk.0105 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wrk.0105, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then22.list_del.exit_crit_edge
  %21 = ptrtoint ptr %wrk.0105 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %wrk.0105, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %wrk.0105, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %23 = ptrtoint ptr %works_count24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %works_count24, align 8
  %sub = add i32 %24, -1
  store i32 %sub, ptr %works_count24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp27 = icmp slt i32 %sub, 0
  br i1 %cmp27, label %do.end39, label %list_del.exit.do.end47_crit_edge, !prof !307

list_del.exit.do.end47_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

do.end39:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i95 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i95 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid43, align 8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, i32 noundef 1410, i32 noundef %30) #15
  tail call void @dump_stack() #15
  br label %do.end47

do.end47:                                         ; preds = %do.end39, %list_del.exit.do.end47_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %func = getelementptr inbounds %struct.ubi_work, ptr %wrk.0105, i32 0, i32 1
  %31 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %func, align 4
  %call49 = tail call i32 %32(ptr noundef %ubi, ptr noundef %wrk.0105, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end53, label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %work_sem) #12
  br label %cleanup66

if.end53:                                         ; preds = %do.end47
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  tail call void @up_read(ptr noundef %work_sem) #12
  tail call void @down_read(ptr noundef %work_sem) #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %33 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %works, align 8
  %cmp.not104 = icmp eq ptr %34, %works
  br i1 %cmp.not104, label %if.end53.while.end_crit_edge, label %if.end53.for.body.backedge_crit_edge

if.end53.for.body.backedge_crit_edge:             ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

for.inc:                                          ; preds = %lor.lhs.false19.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp5.0106, %works
  br i1 %cmp.not, label %for.inc.while.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.backedge

for.inc.while.end_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.end53.for.body.backedge_crit_edge
  %wrk.0105.be = phi ptr [ %tmp5.0106, %for.inc.for.body.backedge_crit_edge ], [ %34, %if.end53.for.body.backedge_crit_edge ]
  br label %for.body

while.end:                                        ; preds = %for.inc.while.end_crit_edge, %if.end53.while.end_crit_edge, %do.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  tail call void @up_read(ptr noundef %work_sem) #12
  tail call void @down_write(ptr noundef %work_sem) #12
  tail call void @up_write(ptr noundef %work_sem) #12
  br label %cleanup66

cleanup66:                                        ; preds = %while.end, %cleanup.thread
  %retval.2 = phi i32 [ 0, %while.end ], [ %call49, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_bitflip_check(ptr noundef %ubi, i32 noundef %pnum, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pnum)
  %cmp = icmp slt i32 %pnum, 0
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %0 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pnum)
  %cmp1.not = icmp sgt i32 %1, %pnum
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %work_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 48
  tail call void @down_write(ptr noundef %work_sem) #12
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %2 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lookuptbl, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %pnum
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %out_resume

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc zeroext i1 @scrub_possible(ptr noundef %ubi, ptr noundef nonnull %5)
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br i1 %call, label %if.end7, label %if.end4.out_resume_crit_edge

if.end4.out_resume_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_resume

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool9.not = icmp eq i32 %force, 0
  br i1 %tobool9.not, label %if.end13, label %if.end7.if.then17_crit_edge

if.end7.if.then17_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.end13:                                         ; preds = %if.end7
  %buf_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 81
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #12
  %peb_buf = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 80
  %6 = ptrtoint ptr %peb_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peb_buf, align 8
  %peb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 61
  %8 = ptrtoint ptr %peb_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %peb_size, align 4
  %call11 = tail call i32 @ubi_io_read(ptr noundef %ubi, ptr noundef %7, i32 noundef %pnum, i32 noundef 0, i32 noundef %9) #12
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call11)
  %cmp16 = icmp eq i32 %call11, 5
  br i1 %cmp16, label %if.end13.if.then17_crit_edge, label %if.end13.out_resume_crit_edge

if.end13.out_resume_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_resume

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %if.end13.if.then17_crit_edge, %if.end7.if.then17_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %10 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lookuptbl, align 8
  %arrayidx20 = getelementptr ptr, ptr %11, i32 %pnum
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %out_resume

if.end24:                                         ; preds = %if.then17
  %call25 = tail call fastcc zeroext i1 @scrub_possible(ptr noundef %ubi, ptr noundef nonnull %13)
  br i1 %call25, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %out_resume

if.end28:                                         ; preds = %if.end24
  %call29 = tail call fastcc i32 @in_pq(ptr noundef %ubi, ptr noundef nonnull %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %pnum32 = getelementptr inbounds %struct.ubi_wl_entry, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pnum32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pnum32, align 4
  %call33 = tail call fastcc i32 @prot_queue_del(ptr noundef %ubi, i32 noundef %15)
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %13, ptr noundef %scrub)
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %call35 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %ubi, i32 noundef 1)
  br label %if.end56

if.else:                                          ; preds = %if.end28
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %call36 = tail call fastcc i32 @in_wl_tree(ptr noundef nonnull %13, ptr noundef %used)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else43, label %if.then38

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rb_erase(ptr noundef nonnull %13, ptr noundef %used) #12
  %scrub40 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %13, ptr noundef %scrub40)
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %call42 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %ubi, i32 noundef 1)
  br label %if.end56

if.else43:                                        ; preds = %if.else
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %call44 = tail call fastcc i32 @in_wl_tree(ptr noundef nonnull %13, ptr noundef %free)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end56.thread, label %if.then46

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rb_erase(ptr noundef nonnull %13, ptr noundef %free) #12
  %free_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %16 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_count, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %free_count, align 8
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %cond = zext i1 %tobool9.not to i32
  %call51 = tail call fastcc i32 @schedule_erase(ptr noundef %ubi, ptr noundef nonnull %13, i32 noundef -1, i32 noundef -1, i32 noundef %cond, i1 noundef zeroext true)
  br label %if.end56

if.end56.thread:                                  ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %out_resume

if.end56:                                         ; preds = %if.then46, %if.then38, %if.then31
  %err.1 = phi i32 [ %call35, %if.then31 ], [ %call42, %if.then38 ], [ %call51, %if.then46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool57.not = icmp eq i32 %err.1, 0
  %spec.select = select i1 %tobool9.not, i32 -117, i32 0
  %spec.select128 = select i1 %tobool57.not, i32 %spec.select, i32 %err.1
  br label %out_resume

out_resume:                                       ; preds = %if.end56, %if.end56.thread, %if.then26, %if.then22, %if.end13.out_resume_crit_edge, %if.end4.out_resume_crit_edge, %if.then2
  %err.2 = phi i32 [ -16, %if.then26 ], [ -2, %if.then22 ], [ -2, %if.then2 ], [ 0, %if.end13.out_resume_crit_edge ], [ -11, %if.end56.thread ], [ %spec.select128, %if.end56 ], [ -16, %if.end4.out_resume_crit_edge ]
  tail call void @up_write(ptr noundef %work_sem) #12
  br label %out

out:                                              ; preds = %out_resume, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %err.3 = phi i32 [ %err.2, %out_resume ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scrub_possible(ptr nocapture noundef readonly %ubi, ptr noundef readonly %e) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %0 = ptrtoint ptr %scrub to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.077.i = load ptr, ptr %scrub, align 4
  %tobool.not78.i = icmp eq ptr %p.077.i, null
  br i1 %tobool.not78.i, label %entry.if.else_crit_edge, label %while.body.lr.ph.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

while.body.lr.ph.i:                               ; preds = %entry
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %1 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pnum.i, align 4
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.079.i = phi ptr [ %p.077.i, %while.body.lr.ph.i ], [ %p.0.i, %cleanup.i.while.body.i_crit_edge ]
  %pnum1.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i, i32 0, i32 2
  %3 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pnum1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.i = icmp eq i32 %2, %4
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %while.body.i
  %cmp2.not.i = icmp eq ptr %p.079.i, %e
  br i1 %cmp2.not.i, label %do.body.i.return_crit_edge, label %do.end.i, !prof !308

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %10) #15
  tail call void @dump_stack() #15
  br label %return

if.end12.i:                                       ; preds = %while.body.i
  %11 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ec.i, align 4
  %ec13.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i, i32 0, i32 1
  %13 = ptrtoint ptr %ec13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ec13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp14.i = icmp slt i32 %12, %14
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp18.i = icmp sgt i32 %12, %14
  br i1 %cmp18.i, label %if.then19.i, label %do.end44.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 1
  br label %cleanup.i

do.end44.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp47.i = icmp slt i32 %2, %4
  br i1 %cmp47.i, label %if.then48.i, label %if.else50.i

if.then48.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 2
  br label %cleanup.i

if.else50.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i = getelementptr inbounds %struct.rb_node, ptr %p.079.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else50.i, %if.then48.i, %if.then19.i, %if.then15.i
  %p.1.in.i = phi ptr [ %rb_left.i, %if.then15.i ], [ %rb_right.i, %if.then19.i ], [ %rb_left49.i, %if.then48.i ], [ %rb_right51.i, %if.else50.i ]
  %15 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.else_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.if.else_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %cleanup.i.if.else_crit_edge, %entry.if.else_crit_edge
  %erroneous = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 40
  %16 = ptrtoint ptr %erroneous to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.077.i18 = load ptr, ptr %erroneous, align 4
  %tobool.not78.i19 = icmp eq ptr %p.077.i18, null
  br i1 %tobool.not78.i19, label %if.else.if.else4_crit_edge, label %while.body.lr.ph.i22

if.else.if.else4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else4

while.body.lr.ph.i22:                             ; preds = %if.else
  %pnum.i20 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %17 = ptrtoint ptr %pnum.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pnum.i20, align 4
  %ec.i21 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  br label %while.body.i26

while.body.i26:                                   ; preds = %cleanup.i52.while.body.i26_crit_edge, %while.body.lr.ph.i22
  %p.079.i23 = phi ptr [ %p.077.i18, %while.body.lr.ph.i22 ], [ %p.0.i50, %cleanup.i52.while.body.i26_crit_edge ]
  %pnum1.i24 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i23, i32 0, i32 2
  %19 = ptrtoint ptr %pnum1.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pnum1.i24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i25 = icmp eq i32 %18, %20
  br i1 %cmp.i25, label %do.body.i28, label %if.end12.i36

do.body.i28:                                      ; preds = %while.body.i26
  %cmp2.not.i27 = icmp eq ptr %p.079.i23, %e
  br i1 %cmp2.not.i27, label %do.body.i28.return_crit_edge, label %do.end.i33, !prof !308

do.body.i28.return_crit_edge:                     ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end.i33:                                       ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i29 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i29 to ptr
  %task.i30 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i30, align 8
  %pid.i31 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid.i31, align 8
  %call9.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 247, i32 noundef %26) #15
  tail call void @dump_stack() #15
  br label %return

if.end12.i36:                                     ; preds = %while.body.i26
  %27 = ptrtoint ptr %ec.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ec.i21, align 4
  %ec13.i34 = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.079.i23, i32 0, i32 1
  %29 = ptrtoint ptr %ec13.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ec13.i34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp14.i35 = icmp slt i32 %28, %30
  br i1 %cmp14.i35, label %if.then15.i38, label %if.else.i40

if.then15.i38:                                    ; preds = %if.end12.i36
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i37 = getelementptr inbounds %struct.rb_node, ptr %p.079.i23, i32 0, i32 2
  br label %cleanup.i52

if.else.i40:                                      ; preds = %if.end12.i36
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp18.i39 = icmp sgt i32 %28, %30
  br i1 %cmp18.i39, label %if.then19.i42, label %do.end44.i44

if.then19.i42:                                    ; preds = %if.else.i40
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i41 = getelementptr inbounds %struct.rb_node, ptr %p.079.i23, i32 0, i32 1
  br label %cleanup.i52

do.end44.i44:                                     ; preds = %if.else.i40
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp47.i43 = icmp slt i32 %18, %20
  br i1 %cmp47.i43, label %if.then48.i46, label %if.else50.i48

if.then48.i46:                                    ; preds = %do.end44.i44
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left49.i45 = getelementptr inbounds %struct.rb_node, ptr %p.079.i23, i32 0, i32 2
  br label %cleanup.i52

if.else50.i48:                                    ; preds = %do.end44.i44
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right51.i47 = getelementptr inbounds %struct.rb_node, ptr %p.079.i23, i32 0, i32 1
  br label %cleanup.i52

cleanup.i52:                                      ; preds = %if.else50.i48, %if.then48.i46, %if.then19.i42, %if.then15.i38
  %p.1.in.i49 = phi ptr [ %rb_left.i37, %if.then15.i38 ], [ %rb_right.i41, %if.then19.i42 ], [ %rb_left49.i45, %if.then48.i46 ], [ %rb_right51.i47, %if.else50.i48 ]
  %31 = ptrtoint ptr %p.1.in.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %p.0.i50 = load ptr, ptr %p.1.in.i49, align 4
  %tobool.not.i51 = icmp eq ptr %p.0.i50, null
  br i1 %tobool.not.i51, label %cleanup.i52.if.else4_crit_edge, label %cleanup.i52.while.body.i26_crit_edge

cleanup.i52.while.body.i26_crit_edge:             ; preds = %cleanup.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i26

cleanup.i52.if.else4_crit_edge:                   ; preds = %cleanup.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else4

if.else4:                                         ; preds = %cleanup.i52.if.else4_crit_edge, %if.else.if.else4_crit_edge
  %move_from = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 51
  %32 = ptrtoint ptr %move_from to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %move_from, align 4
  %cmp = icmp eq ptr %33, %e
  br i1 %cmp, label %if.else4.return_crit_edge, label %if.else6

if.else4.return_crit_edge:                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else6:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #14
  %move_to = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 52
  %34 = ptrtoint ptr %move_to to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %move_to, align 8
  %cmp7 = icmp ne ptr %35, %e
  br label %return

return:                                           ; preds = %if.else6, %if.else4.return_crit_edge, %do.end.i33, %do.body.i28.return_crit_edge, %do.end.i, %do.body.i.return_crit_edge
  %retval.0 = phi i1 [ false, %if.else4.return_crit_edge ], [ %cmp7, %if.else6 ], [ false, %do.body.i.return_crit_edge ], [ false, %do.end.i ], [ false, %do.body.i28.return_crit_edge ], [ false, %do.end.i33 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @in_pq(ptr noundef readonly %ubi, ptr noundef readnone %e) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 0
  br label %for.cond1

for.cond1:                                        ; preds = %for.body5.for.cond1_crit_edge, %entry
  %p.0.in = phi ptr [ %arrayidx, %entry ], [ %p.0, %for.body5.for.cond1_crit_edge ]
  %0 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp4.not = icmp eq ptr %p.0, %arrayidx
  br i1 %cmp4.not, label %for.inc12, label %for.body5

for.body5:                                        ; preds = %for.cond1
  %cmp6 = icmp eq ptr %p.0, %e
  br i1 %cmp6, label %for.body5.cleanup_crit_edge, label %for.body5.for.cond1_crit_edge

for.body5.for.cond1_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1

for.body5.cleanup_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12:                                        ; preds = %for.cond1
  %arrayidx.1 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 1
  br label %for.cond1.1

for.cond1.1:                                      ; preds = %for.body5.1.for.cond1.1_crit_edge, %for.inc12
  %p.0.in.1 = phi ptr [ %arrayidx.1, %for.inc12 ], [ %p.0.1, %for.body5.1.for.cond1.1_crit_edge ]
  %1 = ptrtoint ptr %p.0.in.1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.0.1 = load ptr, ptr %p.0.in.1, align 4
  %cmp4.not.1 = icmp eq ptr %p.0.1, %arrayidx.1
  br i1 %cmp4.not.1, label %for.inc12.1, label %for.body5.1

for.body5.1:                                      ; preds = %for.cond1.1
  %cmp6.1 = icmp eq ptr %p.0.1, %e
  br i1 %cmp6.1, label %for.body5.1.cleanup_crit_edge, label %for.body5.1.for.cond1.1_crit_edge

for.body5.1.for.cond1.1_crit_edge:                ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.1

for.body5.1.cleanup_crit_edge:                    ; preds = %for.body5.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12.1:                                      ; preds = %for.cond1.1
  %arrayidx.2 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 2
  br label %for.cond1.2

for.cond1.2:                                      ; preds = %for.body5.2.for.cond1.2_crit_edge, %for.inc12.1
  %p.0.in.2 = phi ptr [ %arrayidx.2, %for.inc12.1 ], [ %p.0.2, %for.body5.2.for.cond1.2_crit_edge ]
  %2 = ptrtoint ptr %p.0.in.2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %p.0.2 = load ptr, ptr %p.0.in.2, align 4
  %cmp4.not.2 = icmp eq ptr %p.0.2, %arrayidx.2
  br i1 %cmp4.not.2, label %for.inc12.2, label %for.body5.2

for.body5.2:                                      ; preds = %for.cond1.2
  %cmp6.2 = icmp eq ptr %p.0.2, %e
  br i1 %cmp6.2, label %for.body5.2.cleanup_crit_edge, label %for.body5.2.for.cond1.2_crit_edge

for.body5.2.for.cond1.2_crit_edge:                ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.2

for.body5.2.cleanup_crit_edge:                    ; preds = %for.body5.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12.2:                                      ; preds = %for.cond1.2
  %arrayidx.3 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 3
  br label %for.cond1.3

for.cond1.3:                                      ; preds = %for.body5.3.for.cond1.3_crit_edge, %for.inc12.2
  %p.0.in.3 = phi ptr [ %arrayidx.3, %for.inc12.2 ], [ %p.0.3, %for.body5.3.for.cond1.3_crit_edge ]
  %3 = ptrtoint ptr %p.0.in.3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.0.3 = load ptr, ptr %p.0.in.3, align 4
  %cmp4.not.3 = icmp eq ptr %p.0.3, %arrayidx.3
  br i1 %cmp4.not.3, label %for.inc12.3, label %for.body5.3

for.body5.3:                                      ; preds = %for.cond1.3
  %cmp6.3 = icmp eq ptr %p.0.3, %e
  br i1 %cmp6.3, label %for.body5.3.cleanup_crit_edge, label %for.body5.3.for.cond1.3_crit_edge

for.body5.3.for.cond1.3_crit_edge:                ; preds = %for.body5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.3

for.body5.3.cleanup_crit_edge:                    ; preds = %for.body5.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12.3:                                      ; preds = %for.cond1.3
  %arrayidx.4 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 4
  br label %for.cond1.4

for.cond1.4:                                      ; preds = %for.body5.4.for.cond1.4_crit_edge, %for.inc12.3
  %p.0.in.4 = phi ptr [ %arrayidx.4, %for.inc12.3 ], [ %p.0.4, %for.body5.4.for.cond1.4_crit_edge ]
  %4 = ptrtoint ptr %p.0.in.4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.0.4 = load ptr, ptr %p.0.in.4, align 4
  %cmp4.not.4 = icmp eq ptr %p.0.4, %arrayidx.4
  br i1 %cmp4.not.4, label %for.inc12.4, label %for.body5.4

for.body5.4:                                      ; preds = %for.cond1.4
  %cmp6.4 = icmp eq ptr %p.0.4, %e
  br i1 %cmp6.4, label %for.body5.4.cleanup_crit_edge, label %for.body5.4.for.cond1.4_crit_edge

for.body5.4.for.cond1.4_crit_edge:                ; preds = %for.body5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.4

for.body5.4.cleanup_crit_edge:                    ; preds = %for.body5.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12.4:                                      ; preds = %for.cond1.4
  %arrayidx.5 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 5
  br label %for.cond1.5

for.cond1.5:                                      ; preds = %for.body5.5.for.cond1.5_crit_edge, %for.inc12.4
  %p.0.in.5 = phi ptr [ %arrayidx.5, %for.inc12.4 ], [ %p.0.5, %for.body5.5.for.cond1.5_crit_edge ]
  %5 = ptrtoint ptr %p.0.in.5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0.5 = load ptr, ptr %p.0.in.5, align 4
  %cmp4.not.5 = icmp eq ptr %p.0.5, %arrayidx.5
  br i1 %cmp4.not.5, label %for.inc12.5, label %for.body5.5

for.body5.5:                                      ; preds = %for.cond1.5
  %cmp6.5 = icmp eq ptr %p.0.5, %e
  br i1 %cmp6.5, label %for.body5.5.cleanup_crit_edge, label %for.body5.5.for.cond1.5_crit_edge

for.body5.5.for.cond1.5_crit_edge:                ; preds = %for.body5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.5

for.body5.5.cleanup_crit_edge:                    ; preds = %for.body5.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12.5:                                      ; preds = %for.cond1.5
  %arrayidx.6 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 6
  br label %for.cond1.6

for.cond1.6:                                      ; preds = %for.body5.6.for.cond1.6_crit_edge, %for.inc12.5
  %p.0.in.6 = phi ptr [ %arrayidx.6, %for.inc12.5 ], [ %p.0.6, %for.body5.6.for.cond1.6_crit_edge ]
  %6 = ptrtoint ptr %p.0.in.6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.0.6 = load ptr, ptr %p.0.in.6, align 4
  %cmp4.not.6 = icmp eq ptr %p.0.6, %arrayidx.6
  br i1 %cmp4.not.6, label %for.inc12.6, label %for.body5.6

for.body5.6:                                      ; preds = %for.cond1.6
  %cmp6.6 = icmp eq ptr %p.0.6, %e
  br i1 %cmp6.6, label %for.body5.6.cleanup_crit_edge, label %for.body5.6.for.cond1.6_crit_edge

for.body5.6.for.cond1.6_crit_edge:                ; preds = %for.body5.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.6

for.body5.6.cleanup_crit_edge:                    ; preds = %for.body5.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12.6:                                      ; preds = %for.cond1.6
  %arrayidx.7 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 7
  br label %for.cond1.7

for.cond1.7:                                      ; preds = %for.body5.7.for.cond1.7_crit_edge, %for.inc12.6
  %p.0.in.7 = phi ptr [ %arrayidx.7, %for.inc12.6 ], [ %p.0.7, %for.body5.7.for.cond1.7_crit_edge ]
  %7 = ptrtoint ptr %p.0.in.7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %p.0.7 = load ptr, ptr %p.0.in.7, align 4
  %cmp4.not.7 = icmp eq ptr %p.0.7, %arrayidx.7
  br i1 %cmp4.not.7, label %for.inc12.7, label %for.body5.7

for.body5.7:                                      ; preds = %for.cond1.7
  %cmp6.7 = icmp eq ptr %p.0.7, %e
  br i1 %cmp6.7, label %for.body5.7.cleanup_crit_edge, label %for.body5.7.for.cond1.7_crit_edge

for.body5.7.for.cond1.7_crit_edge:                ; preds = %for.body5.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.7

for.body5.7.cleanup_crit_edge:                    ; preds = %for.body5.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12.7:                                      ; preds = %for.cond1.7
  %arrayidx.8 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 8
  br label %for.cond1.8

for.cond1.8:                                      ; preds = %for.body5.8.for.cond1.8_crit_edge, %for.inc12.7
  %p.0.in.8 = phi ptr [ %arrayidx.8, %for.inc12.7 ], [ %p.0.8, %for.body5.8.for.cond1.8_crit_edge ]
  %8 = ptrtoint ptr %p.0.in.8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.0.8 = load ptr, ptr %p.0.in.8, align 4
  %cmp4.not.8 = icmp eq ptr %p.0.8, %arrayidx.8
  br i1 %cmp4.not.8, label %for.inc12.8, label %for.body5.8

for.body5.8:                                      ; preds = %for.cond1.8
  %cmp6.8 = icmp eq ptr %p.0.8, %e
  br i1 %cmp6.8, label %for.body5.8.cleanup_crit_edge, label %for.body5.8.for.cond1.8_crit_edge

for.body5.8.for.cond1.8_crit_edge:                ; preds = %for.body5.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.8

for.body5.8.cleanup_crit_edge:                    ; preds = %for.body5.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc12.8:                                      ; preds = %for.cond1.8
  %arrayidx.9 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 9
  br label %for.cond1.9

for.cond1.9:                                      ; preds = %for.body5.9.for.cond1.9_crit_edge, %for.inc12.8
  %p.0.in.9 = phi ptr [ %arrayidx.9, %for.inc12.8 ], [ %p.0.9, %for.body5.9.for.cond1.9_crit_edge ]
  %9 = ptrtoint ptr %p.0.in.9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.0.9 = load ptr, ptr %p.0.in.9, align 4
  %cmp4.not.9 = icmp eq ptr %p.0.9, %arrayidx.9
  br i1 %cmp4.not.9, label %for.cond1.9.cleanup_crit_edge, label %for.body5.9

for.cond1.9.cleanup_crit_edge:                    ; preds = %for.cond1.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body5.9:                                      ; preds = %for.cond1.9
  %cmp6.9 = icmp eq ptr %p.0.9, %e
  br i1 %cmp6.9, label %for.body5.9.cleanup_crit_edge, label %for.body5.9.for.cond1.9_crit_edge

for.body5.9.for.cond1.9_crit_edge:                ; preds = %for.body5.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.9

for.body5.9.cleanup_crit_edge:                    ; preds = %for.body5.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body5.9.cleanup_crit_edge, %for.cond1.9.cleanup_crit_edge, %for.body5.8.cleanup_crit_edge, %for.body5.7.cleanup_crit_edge, %for.body5.6.cleanup_crit_edge, %for.body5.5.cleanup_crit_edge, %for.body5.4.cleanup_crit_edge, %for.body5.3.cleanup_crit_edge, %for.body5.2.cleanup_crit_edge, %for.body5.1.cleanup_crit_edge, %for.body5.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.body5.9.cleanup_crit_edge ], [ 0, %for.cond1.9.cleanup_crit_edge ], [ 1, %for.body5.8.cleanup_crit_edge ], [ 1, %for.body5.7.cleanup_crit_edge ], [ 1, %for.body5.6.cleanup_crit_edge ], [ 1, %for.body5.5.cleanup_crit_edge ], [ 1, %for.body5.4.cleanup_crit_edge ], [ 1, %for.body5.3.cleanup_crit_edge ], [ 1, %for.body5.2.cleanup_crit_edge ], [ 1, %for.body5.1.cleanup_crit_edge ], [ 1, %for.body5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_thread(ptr noundef %u) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bgt_name = getelementptr inbounds %struct.ubi_device, ptr %u, i32 0, i32 58
  %0 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %u, ptr noundef nonnull @.str.19, ptr noundef %bgt_name, i32 noundef %5) #12
  %call2 = tail call zeroext i1 @set_freezable() #12
  %call3231 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call3231, label %entry.do.body178_crit_edge, label %if.end.lr.ph

entry.do.body178_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body178

if.end.lr.ph:                                     ; preds = %entry
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %u, i32 0, i32 46
  %works = getelementptr inbounds %struct.ubi_device, ptr %u, i32 0, i32 54
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %u, i32 0, i32 69
  %thread_enabled = getelementptr inbounds %struct.ubi_device, ptr %u, i32 0, i32 57
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %u, i32 0, i32 83
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %failures.0232 = phi i32 [ 0, %if.end.lr.ph ], [ %failures.2, %cleanup.if.end_crit_edge ]
  %6 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i221 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221)
  %tobool.not.i = icmp eq i32 %and.i221, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_check_no_locks_held() #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.65, i32 noundef 57) #12
  %12 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %16 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.if.end6_crit_edge, label %freezing.exit.i.i, !prof !308

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %15) #12
  br i1 %call4.i.i.i, label %try_to_freeze.exit, label %freezing.exit.i.i.if.end6_crit_edge, !prof !307

freezing.exit.i.i.if.end6_crit_edge:              ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

try_to_freeze.exit:                               ; preds = %freezing.exit.i.i
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #12
  br i1 %call6.i.i, label %try_to_freeze.exit.cleanup_crit_edge, label %try_to_freeze.exit.if.end6_crit_edge

try_to_freeze.exit.if.end6_crit_edge:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

try_to_freeze.exit.cleanup_crit_edge:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %try_to_freeze.exit.if.end6_crit_edge, %freezing.exit.i.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %17 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %works, align 4
  %cmp.i.not = icmp eq ptr %18, %works
  br i1 %cmp.i.not, label %if.end6.__here_crit_edge, label %lor.lhs.false

if.end6.__here_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

lor.lhs.false:                                    ; preds = %if.end6
  %19 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false.__here_crit_edge

lor.lhs.false.__here_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %thread_enabled to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %thread_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not = icmp eq i32 %22, 0
  br i1 %tobool10.not, label %lor.lhs.false9.__here_crit_edge, label %lor.lhs.false11

lor.lhs.false9.__here_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %23 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %24 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool13.not = icmp eq i8 %24, 0
  br i1 %tobool13.not, label %if.end163, label %lor.lhs.false11.__here_crit_edge

lor.lhs.false11.__here_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %lor.lhs.false11.__here_crit_edge, %lor.lhs.false9.__here_crit_edge, %lor.lhs.false.__here_crit_edge, %if.end6.__here_crit_edge
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@ubi_thread, %__here) to i32), ptr %task_state_change, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %28, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !309
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %call80 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call80, label %__here132, label %if.end162

__here132:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %task_state_change136 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change136 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@ubi_thread, %__here132) to i32), ptr %task_state_change136, align 4
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %33, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !310
  br label %do.body178

if.end162:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @schedule() #12
  br label %cleanup

if.end163:                                        ; preds = %lor.lhs.false11
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %call165 = tail call fastcc i32 @do_work(ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end163.if.end175_crit_edge, label %if.then167

if.end163.if.end175_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end175

if.then167:                                       ; preds = %if.end163
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %u, ptr noundef nonnull @.str.21, ptr noundef %bgt_name, i32 noundef %call165) #12
  %inc = add i32 %failures.0232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %failures.0232)
  %cmp = icmp sgt i32 %failures.0232, 32
  br i1 %cmp, label %if.then170, label %if.then167.if.end175_crit_edge

if.then167.if.end175_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end175

if.then170:                                       ; preds = %if.then167
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %u, ptr noundef nonnull @.str.22, ptr noundef %bgt_name, i32 noundef 32) #12
  %35 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i222 = icmp eq i32 %36, 0
  br i1 %tobool.not.i222, label %if.then.i223, label %if.then170.ubi_ro_mode.exit_crit_edge

if.then170.ubi_ro_mode.exit_crit_edge:            ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_ro_mode.exit

if.then.i223:                                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %ro_mode to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %ro_mode, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %u, ptr noundef nonnull @.str.58) #12
  tail call void @dump_stack() #15
  br label %ubi_ro_mode.exit

ubi_ro_mode.exit:                                 ; preds = %if.then.i223, %if.then170.ubi_ro_mode.exit_crit_edge
  %38 = ptrtoint ptr %thread_enabled to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %thread_enabled, align 8
  br label %cleanup

if.end175:                                        ; preds = %if.then167.if.end175_crit_edge, %if.end163.if.end175_crit_edge
  %failures.1 = phi i32 [ %inc, %if.then167.if.end175_crit_edge ], [ 0, %if.end163.if.end175_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1677, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end175, %ubi_ro_mode.exit, %if.end162, %try_to_freeze.exit.cleanup_crit_edge
  %failures.2 = phi i32 [ %failures.0232, %if.end162 ], [ %inc, %ubi_ro_mode.exit ], [ %failures.1, %if.end175 ], [ %failures.0232, %try_to_freeze.exit.cleanup_crit_edge ]
  %call3 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call3, label %cleanup.do.body178_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup.do.body178_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body178

do.body178:                                       ; preds = %cleanup.do.body178_crit_edge, %__here132, %entry.do.body178_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_thread.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_thread, %if.then188)) #12
          to label %do.end195 [label %if.then188], !srcloc !306

if.then188:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 68
  %41 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_thread.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.24, i32 noundef %42, ptr noundef %bgt_name) #12
  br label %do.end195

do.end195:                                        ; preds = %if.then188, %do.body178
  %thread_enabled196 = getelementptr inbounds %struct.ubi_device, ptr %u, i32 0, i32 57
  %43 = ptrtoint ptr %thread_enabled196 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %thread_enabled196, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_work(ptr noundef %ubi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 193, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  %work_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 48
  tail call void @down_read(ptr noundef %work_sem) #12
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %works = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 54
  %0 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %works, align 4
  %cmp.i.not = icmp eq ptr %1, %works
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %works_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 55
  %10 = ptrtoint ptr %works_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %works_count, align 8
  %sub = add i32 %11, -1
  store i32 %sub, ptr %works_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %list_del.exit.do.end17_crit_edge, !prof !307

list_del.exit.do.end17_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.66, i32 noundef 212, i32 noundef %17) #15
  tail call void @dump_stack() #15
  br label %do.end17

do.end17:                                         ; preds = %do.end, %list_del.exit.do.end17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %func = getelementptr inbounds %struct.ubi_work, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %func, align 4
  %call19 = tail call i32 %19(ptr noundef %ubi, ptr noundef %1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end17.cleanup_crit_edge, label %if.then21

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.67, i32 noundef %call19) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.end17.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call19, %if.then21 ], [ %call19, %do.end17.cleanup_crit_edge ]
  tail call void @up_read(ptr noundef %work_sem) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_init(ptr noundef %ubi, ptr noundef %ai) local_unnamed_addr #0 align 64 {
entry:
  %reserved_pebs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_pebs) #12
  %0 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reserved_pebs, align 4, !annotation !311
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %erroneous = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 40
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %1 = ptrtoint ptr %scrub to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %scrub, align 4
  %2 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %free, align 4
  %3 = ptrtoint ptr %erroneous to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %erroneous, align 8
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %used, align 4
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @__raw_spin_lock_init(ptr noundef %wl_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @ubi_wl_init.__key, i16 noundef signext 3) #12
  %move_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 47
  tail call void @__mutex_init(ptr noundef %move_mutex, ptr noundef nonnull @.str.27, ptr noundef nonnull @ubi_wl_init.__key.26) #12
  %work_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 48
  tail call void @__init_rwsem(ptr noundef %work_sem, ptr noundef nonnull @.str.29, ptr noundef nonnull @ubi_wl_init.__key.28) #12
  %max_ec = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 16
  %5 = ptrtoint ptr %max_ec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_ec, align 4
  %max_ec7 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 19
  %7 = ptrtoint ptr %max_ec7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max_ec7, align 4
  %works = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 54
  %8 = ptrtoint ptr %works to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %works, ptr %works, align 4
  %prev.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 54, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %works, ptr %prev.i, align 4
  %bgt_name = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 58
  %ubi_num = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 2
  %10 = ptrtoint ptr %ubi_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ubi_num, align 8
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bgt_name, ptr noundef nonnull @.str.30, i32 noundef %11)
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %12 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %peb_count, align 8
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #12
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !307

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lookuptbl554 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %16 = ptrtoint ptr %lookuptbl554 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %lookuptbl554, align 8
  br label %cleanup321

if.end7.i.i:                                      ; preds = %entry
  %17 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #17
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %18 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i, ptr %lookuptbl, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup321_crit_edge, label %for.body.preheader

if.end7.i.i.cleanup321_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup321

for.body.preheader:                               ; preds = %if.end7.i.i
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i463 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i463 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %prev.i463, align 4
  %arrayidx.1 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i463.1 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i463.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.1, ptr %prev.i463.1, align 4
  %arrayidx.2 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i463.2 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i463.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.2, ptr %prev.i463.2, align 4
  %arrayidx.3 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %arrayidx.3, ptr %arrayidx.3, align 4
  %prev.i463.3 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i463.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.3, ptr %prev.i463.3, align 4
  %arrayidx.4 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.4, ptr %arrayidx.4, align 4
  %prev.i463.4 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 4, i32 1
  %28 = ptrtoint ptr %prev.i463.4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.4, ptr %prev.i463.4, align 4
  %arrayidx.5 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx.5, ptr %arrayidx.5, align 4
  %prev.i463.5 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 5, i32 1
  %30 = ptrtoint ptr %prev.i463.5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.5, ptr %prev.i463.5, align 4
  %arrayidx.6 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 6
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx.6, ptr %arrayidx.6, align 4
  %prev.i463.6 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 6, i32 1
  %32 = ptrtoint ptr %prev.i463.6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.6, ptr %prev.i463.6, align 4
  %arrayidx.7 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 7
  %33 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx.7, ptr %arrayidx.7, align 4
  %prev.i463.7 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 7, i32 1
  %34 = ptrtoint ptr %prev.i463.7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx.7, ptr %prev.i463.7, align 4
  %arrayidx.8 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 8
  %35 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx.8, ptr %arrayidx.8, align 4
  %prev.i463.8 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 8, i32 1
  %36 = ptrtoint ptr %prev.i463.8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.8, ptr %prev.i463.8, align 4
  %arrayidx.9 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 9
  %37 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx.9, ptr %arrayidx.9, align 4
  %prev.i463.9 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 9, i32 1
  %38 = ptrtoint ptr %prev.i463.9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.9, ptr %prev.i463.9, align 4
  %pq_head = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 45
  %39 = ptrtoint ptr %pq_head to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pq_head, align 8
  %free_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %40 = ptrtoint ptr %free_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %free_count, align 8
  %erase = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 3
  %41 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %erase, align 4
  %cmp19.not590 = icmp eq ptr %42, %erase
  br i1 %cmp19.not590, label %for.body.preheader.for.end34_crit_edge, label %for.body.preheader.for.body20_crit_edge

for.body.preheader.for.body20_crit_edge:          ; preds = %for.body.preheader
  br label %for.body20

for.body.preheader.for.end34_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

for.body20:                                       ; preds = %if.end26.for.body20_crit_edge, %for.body.preheader.for.body20_crit_edge
  %found_pebs.0592 = phi i32 [ %inc27, %if.end26.for.body20_crit_edge ], [ 0, %for.body.preheader.for.body20_crit_edge ]
  %.pn.in591 = phi ptr [ %.pn593, %if.end26.for.body20_crit_edge ], [ %42, %for.body.preheader.for.body20_crit_edge ]
  %43 = ptrtoint ptr %.pn.in591 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn593 = load ptr, ptr %.pn.in591, align 8
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1778, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %44 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %call.i464 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %44, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call.i464, null
  br i1 %tobool.not.i, label %for.body20.out_free_crit_edge, label %if.end.i

for.body20.out_free_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end.i:                                         ; preds = %for.body20
  %aeb.0 = getelementptr i8, ptr %.pn.in591, i32 -32
  %pnum.i = getelementptr i8, ptr %.pn.in591, i32 -28
  %45 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pnum.i, align 4
  %pnum1.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i464, i32 0, i32 2
  %47 = ptrtoint ptr %pnum1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %pnum1.i, align 8
  %48 = ptrtoint ptr %aeb.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %aeb.0, align 8
  %ec2.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i464, i32 0, i32 1
  %50 = ptrtoint ptr %ec2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ec2.i, align 4
  %51 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lookuptbl, align 8
  %arrayidx.i = getelementptr ptr, ptr %52, i32 %46
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i464, ptr %arrayidx.i, align 4
  %vol_id.i = getelementptr i8, ptr %.pn.in591, i32 -24
  %54 = ptrtoint ptr %vol_id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vol_id.i, align 8
  %lnum.i = getelementptr i8, ptr %.pn.in591, i32 -20
  %56 = ptrtoint ptr %lnum.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lnum.i, align 4
  %call10.i = tail call fastcc i32 @schedule_erase(ptr noundef %ubi, ptr noundef nonnull %call.i464, i32 noundef %55, i32 noundef %57, i32 noundef 0, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end26, label %out_free.i

out_free.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pnum1.i.le = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i464, i32 0, i32 2
  %58 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lookuptbl, align 8
  %60 = ptrtoint ptr %pnum1.i.le to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pnum1.i.le, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %63 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %63, ptr noundef nonnull %call.i464) #12
  br label %out_free

if.end26:                                         ; preds = %if.end.i
  %inc27 = add i32 %found_pebs.0592, 1
  %cmp19.not = icmp eq ptr %.pn593, %erase
  br i1 %cmp19.not, label %if.end26.for.end34_crit_edge, label %if.end26.for.body20_crit_edge

if.end26.for.body20_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20

if.end26.for.end34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end34

for.end34:                                        ; preds = %if.end26.for.end34_crit_edge, %for.body.preheader.for.end34_crit_edge
  %found_pebs.0.lcssa = phi i32 [ 0, %for.body.preheader.for.end34_crit_edge ], [ %inc27, %if.end26.for.end34_crit_edge ]
  %free36 = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 2
  %64 = ptrtoint ptr %free36 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn449595 = load ptr, ptr %free36, align 4
  %cmp43.not597 = icmp eq ptr %.pn449595, %free36
  br i1 %cmp43.not597, label %for.end34.for.end84_crit_edge, label %for.end34.for.body45_crit_edge

for.end34.for.body45_crit_edge:                   ; preds = %for.end34
  br label %for.body45

for.end34.for.end84_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end84

for.body45:                                       ; preds = %do.end70.for.body45_crit_edge, %for.end34.for.body45_crit_edge
  %.pn449599 = phi ptr [ %.pn449, %do.end70.for.body45_crit_edge ], [ %.pn449595, %for.end34.for.body45_crit_edge ]
  %found_pebs.1598 = phi i32 [ %inc77, %do.end70.for.body45_crit_edge ], [ %found_pebs.0.lcssa, %for.end34.for.body45_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1788, i32 noundef 0) #12
  %call.i466 = tail call i32 @__cond_resched() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %65 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %call48 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %65, i32 noundef 3264) #12
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %for.body45.out_free_crit_edge, label %if.end51

for.body45.out_free_crit_edge:                    ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end51:                                         ; preds = %for.body45
  %aeb.1600 = getelementptr i8, ptr %.pn449599, i32 -32
  %pnum = getelementptr i8, ptr %.pn449599, i32 -28
  %66 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pnum, align 4
  %pnum52 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call48, i32 0, i32 2
  %68 = ptrtoint ptr %pnum52 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %pnum52, align 8
  %69 = ptrtoint ptr %aeb.1600 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %aeb.1600, align 8
  %ec53 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call48, i32 0, i32 1
  %71 = ptrtoint ptr %ec53 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %ec53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp56 = icmp slt i32 %70, 0
  br i1 %cmp56, label %do.end64, label %if.end51.do.end70_crit_edge, !prof !307

if.end51.do.end70_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70

do.end64:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %72 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid, align 8
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31, i32 noundef 1798, i32 noundef %77) #15
  tail call void @dump_stack() #15
  br label %do.end70

do.end70:                                         ; preds = %do.end64, %if.end51.do.end70_crit_edge
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %call48, ptr noundef %free)
  %78 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %free_count, align 8
  %inc73 = add i32 %79, 1
  store i32 %inc73, ptr %free_count, align 8
  %80 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %lookuptbl, align 8
  %82 = ptrtoint ptr %pnum52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pnum52, align 8
  %arrayidx76 = getelementptr ptr, ptr %81, i32 %83
  %84 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call48, ptr %arrayidx76, align 4
  %inc77 = add i32 %found_pebs.1598, 1
  %85 = ptrtoint ptr %.pn449599 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn449 = load ptr, ptr %.pn449599, align 4
  %cmp43.not = icmp eq ptr %.pn449, %free36
  br i1 %cmp43.not, label %do.end70.for.end84_crit_edge, label %do.end70.for.body45_crit_edge

do.end70.for.body45_crit_edge:                    ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body45

do.end70.for.end84_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end84

for.end84:                                        ; preds = %do.end70.for.end84_crit_edge, %for.end34.for.end84_crit_edge
  %found_pebs.1.lcssa = phi i32 [ %found_pebs.0.lcssa, %for.end34.for.end84_crit_edge ], [ %inc77, %do.end70.for.end84_crit_edge ]
  %call85 = tail call ptr @rb_first(ptr noundef %ai) #12
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %for.end84.for.end186_crit_edge, label %for.end84.for.body92_crit_edge

for.end84.for.body92_crit_edge:                   ; preds = %for.end84
  br label %for.body92

for.end84.for.end186_crit_edge:                   ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end186

for.body92:                                       ; preds = %for.inc176.for.body92_crit_edge, %for.end84.for.body92_crit_edge
  %found_pebs.2610 = phi i32 [ %found_pebs.3.lcssa, %for.inc176.for.body92_crit_edge ], [ %found_pebs.1.lcssa, %for.end84.for.body92_crit_edge ]
  %rb1.0609 = phi ptr [ %call177, %for.inc176.for.body92_crit_edge ], [ %call85, %for.end84.for.body92_crit_edge ]
  %root = getelementptr i8, ptr %rb1.0609, i32 12
  %call93 = tail call ptr @rb_first(ptr noundef %root) #12
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %for.body92.for.inc176_crit_edge, label %for.body92.for.body104_crit_edge

for.body92.for.body104_crit_edge:                 ; preds = %for.body92
  br label %for.body104

for.body92.for.inc176_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc176

for.body104:                                      ; preds = %if.end163.for.body104_crit_edge, %for.body92.for.body104_crit_edge
  %found_pebs.3605 = phi i32 [ %inc164, %if.end163.for.body104_crit_edge ], [ %found_pebs.2610, %for.body92.for.body104_crit_edge ]
  %rb2.0604 = phi ptr [ %call166, %if.end163.for.body104_crit_edge ], [ %call93, %for.body92.for.body104_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1810, i32 noundef 0) #12
  %call.i467 = tail call i32 @__cond_resched() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %86 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %call107 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %86, i32 noundef 3264) #12
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %for.body104.out_free_crit_edge, label %if.end110

for.body104.out_free_crit_edge:                   ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end110:                                        ; preds = %for.body104
  %aeb.2603 = getelementptr i8, ptr %rb2.0604, i32 -32
  %pnum111 = getelementptr i8, ptr %rb2.0604, i32 -28
  %87 = ptrtoint ptr %pnum111 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pnum111, align 4
  %pnum112 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call107, i32 0, i32 2
  %89 = ptrtoint ptr %pnum112 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %pnum112, align 8
  %90 = ptrtoint ptr %aeb.2603 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %aeb.2603, align 8
  %ec114 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call107, i32 0, i32 1
  %92 = ptrtoint ptr %ec114 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %ec114, align 4
  %93 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lookuptbl, align 8
  %arrayidx117 = getelementptr ptr, ptr %94, i32 %88
  %95 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call107, ptr %arrayidx117, align 4
  %scrub118 = getelementptr i8, ptr %rb2.0604, i32 -16
  %96 = ptrtoint ptr %scrub118 to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load = load i8, ptr %scrub118, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool119.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool119.not, label %do.body121, label %do.body141

do.body121:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_init.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_init, %if.then131)) #12
          to label %if.end163 [label %if.then131], !srcloc !306

if.then131:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  %97 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i468 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i468 to ptr
  %task133 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task133 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task133, align 8
  %pid134 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 68
  %101 = ptrtoint ptr %pid134 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pid134, align 8
  %103 = ptrtoint ptr %pnum112 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pnum112, align 8
  %105 = ptrtoint ptr %ec114 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ec114, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_init.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.32, i32 noundef %102, i32 noundef %104, i32 noundef %106) #12
  br label %if.end163

do.body141:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_init.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_init, %if.then153)) #12
          to label %if.end163 [label %if.then153], !srcloc !306

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #14
  %107 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i469 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i469 to ptr
  %task155 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task155 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task155, align 8
  %pid156 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 68
  %111 = ptrtoint ptr %pid156 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pid156, align 8
  %113 = ptrtoint ptr %pnum112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pnum112, align 8
  %115 = ptrtoint ptr %ec114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ec114, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_init.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.33, i32 noundef %112, i32 noundef %114, i32 noundef %116) #12
  br label %if.end163

if.end163:                                        ; preds = %if.then153, %do.body141, %if.then131, %do.body121
  %scrub.sink = phi ptr [ %used, %do.body121 ], [ %used, %if.then131 ], [ %scrub, %do.body141 ], [ %scrub, %if.then153 ]
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %call107, ptr noundef %scrub.sink)
  %inc164 = add i32 %found_pebs.3605, 1
  %call166 = tail call ptr @rb_next(ptr noundef nonnull %rb2.0604) #12
  %tobool167.not = icmp eq ptr %call166, null
  br i1 %tobool167.not, label %if.end163.for.inc176_crit_edge, label %if.end163.for.body104_crit_edge

if.end163.for.body104_crit_edge:                  ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body104

if.end163.for.inc176_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc176

for.inc176:                                       ; preds = %if.end163.for.inc176_crit_edge, %for.body92.for.inc176_crit_edge
  %found_pebs.3.lcssa = phi i32 [ %found_pebs.2610, %for.body92.for.inc176_crit_edge ], [ %inc164, %if.end163.for.inc176_crit_edge ]
  %call177 = tail call ptr @rb_next(ptr noundef nonnull %rb1.0609) #12
  %tobool178.not = icmp eq ptr %call177, null
  br i1 %tobool178.not, label %for.inc176.for.end186_crit_edge, label %for.inc176.for.body92_crit_edge

for.inc176.for.body92_crit_edge:                  ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body92

for.inc176.for.end186_crit_edge:                  ; preds = %for.inc176
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end186

for.end186:                                       ; preds = %for.inc176.for.end186_crit_edge, %for.end84.for.end186_crit_edge
  %found_pebs.2.lcssa = phi i32 [ %found_pebs.1.lcssa, %for.end84.for.end186_crit_edge ], [ %found_pebs.3.lcssa, %for.inc176.for.end186_crit_edge ]
  %fastmap = getelementptr inbounds %struct.ubi_attach_info, ptr %ai, i32 0, i32 5
  %117 = ptrtoint ptr %fastmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pn450612 = load ptr, ptr %fastmap, align 4
  %cmp194.not614 = icmp eq ptr %.pn450612, %fastmap
  br i1 %cmp194.not614, label %for.end186.do.body258_crit_edge, label %for.body197.lr.ph

for.end186.do.body258_crit_edge:                  ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body258

for.body197.lr.ph:                                ; preds = %for.end186
  %fm.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 26
  br label %for.body197

for.body197:                                      ; preds = %for.inc251.for.body197_crit_edge, %for.body197.lr.ph
  %.pn450618 = phi ptr [ %.pn450612, %for.body197.lr.ph ], [ %.pn450, %for.inc251.for.body197_crit_edge ]
  %found_pebs.4615 = phi i32 [ %found_pebs.2.lcssa, %for.body197.lr.ph ], [ %found_pebs.5, %for.inc251.for.body197_crit_edge ]
  %aeb.3619 = getelementptr i8, ptr %.pn450618, i32 -32
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1837, i32 noundef 0) #12
  %call.i470 = tail call i32 @__cond_resched() #12
  %pnum200 = getelementptr i8, ptr %.pn450618, i32 -28
  %118 = ptrtoint ptr %pnum200 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pnum200, align 4
  %120 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fm.i, align 8
  %tobool.not.i471 = icmp eq ptr %121, null
  br i1 %tobool.not.i471, label %for.body197.if.else234_crit_edge, label %for.cond.preheader.i

for.body197.if.else234_crit_edge:                 ; preds = %for.body197
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else234

for.cond.preheader.i:                             ; preds = %for.body197
  %used_blocks.i = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %used_blocks.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %used_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp16.i = icmp sgt i32 %123, 0
  br i1 %cmp16.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.else234_crit_edge

for.cond.preheader.i.if.else234_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else234

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %123
  br i1 %exitcond.not.i, label %for.cond.i.if.else234_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.else234_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else234

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i472 = getelementptr [32 x ptr], ptr %121, i32 0, i32 %i.017.i
  %124 = ptrtoint ptr %arrayidx.i472 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i472, align 4
  %pnum3.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %pnum3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pnum3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %119)
  %cmp4.i = icmp eq i32 %127, %119
  br i1 %cmp4.i, label %ubi_find_fm_block.exit, label %for.cond.i

ubi_find_fm_block.exit:                           ; preds = %for.body.i
  %pnum3.i.le = getelementptr inbounds %struct.ubi_wl_entry, ptr %125, i32 0, i32 2
  %tobool202.not = icmp eq ptr %125, null
  br i1 %tobool202.not, label %ubi_find_fm_block.exit.if.else234_crit_edge, label %do.body204

ubi_find_fm_block.exit.if.else234_crit_edge:      ; preds = %ubi_find_fm_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else234

do.body204:                                       ; preds = %ubi_find_fm_block.exit
  %128 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %lookuptbl, align 8
  %130 = ptrtoint ptr %pnum3.i.le to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pnum3.i.le, align 4
  %arrayidx207 = getelementptr ptr, ptr %129, i32 %131
  %132 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx207, align 4
  %tobool208.not = icmp eq ptr %133, null
  br i1 %tobool208.not, label %do.body204.do.end230_crit_edge, label %do.end222, !prof !308

do.body204.do.end230_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end230

do.end222:                                        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  %134 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i474 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i474 to ptr
  %task225 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task225 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task225, align 8
  %pid226 = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 68
  %138 = ptrtoint ptr %pid226 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pid226, align 8
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31, i32 noundef 1842, i32 noundef %139) #15
  tail call void @dump_stack() #15
  br label %do.end230

do.end230:                                        ; preds = %do.end222, %do.body204.do.end230_crit_edge
  %140 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %lookuptbl, align 8
  %142 = ptrtoint ptr %pnum3.i.le to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pnum3.i.le, align 4
  %arrayidx233 = getelementptr ptr, ptr %141, i32 %143
  %144 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %125, ptr %arrayidx233, align 4
  br label %if.end249

if.else234:                                       ; preds = %ubi_find_fm_block.exit.if.else234_crit_edge, %for.cond.i.if.else234_crit_edge, %for.cond.preheader.i.if.else234_crit_edge, %for.body197.if.else234_crit_edge
  %145 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lookuptbl, align 8
  %arrayidx237 = getelementptr ptr, ptr %146, i32 %119
  %147 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx237, align 4
  %tobool238.not = icmp eq ptr %148, null
  br i1 %tobool238.not, label %if.end240, label %if.else234.for.inc251_crit_edge

if.else234.for.inc251_crit_edge:                  ; preds = %if.else234
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc251

if.end240:                                        ; preds = %if.else234
  %vol_id = getelementptr i8, ptr %.pn450618, i32 -24
  %149 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %vol_id, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %151 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %call.i475 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %151, i32 noundef 3264) #12
  %tobool.not.i476 = icmp eq ptr %call.i475, null
  br i1 %tobool.not.i476, label %if.end240.out_free_crit_edge, label %if.end.i482

if.end240.out_free_crit_edge:                     ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end.i482:                                      ; preds = %if.end240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147479552, i32 %150)
  %cmp241 = icmp eq i32 %150, 2147479552
  %152 = ptrtoint ptr %pnum200 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pnum200, align 4
  %pnum1.i478 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i475, i32 0, i32 2
  %154 = ptrtoint ptr %pnum1.i478 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %pnum1.i478, align 8
  %155 = ptrtoint ptr %aeb.3619 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %aeb.3619, align 8
  %ec2.i479 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i475, i32 0, i32 1
  %157 = ptrtoint ptr %ec2.i479 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %ec2.i479, align 4
  %158 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %lookuptbl, align 8
  %arrayidx.i481 = getelementptr ptr, ptr %159, i32 %153
  %160 = ptrtoint ptr %arrayidx.i481 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i475, ptr %arrayidx.i481, align 4
  br i1 %cmp241, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i482
  %call6.i = tail call fastcc i32 @sync_erase(ptr noundef %ubi, ptr noundef nonnull %call.i475, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then5.i.out_free.i489_crit_edge

if.then5.i.out_free.i489_crit_edge:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i489

if.end9.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %call.i475, ptr noundef %free) #12
  %161 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %free_count, align 8
  %inc.i483 = add i32 %162, 1
  store i32 %inc.i483, ptr %free_count, align 8
  br label %if.end249

if.else.i:                                        ; preds = %if.end.i482
  %163 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %vol_id, align 8
  %lnum.i485 = getelementptr i8, ptr %.pn450618, i32 -20
  %165 = ptrtoint ptr %lnum.i485 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %lnum.i485, align 4
  %call10.i486 = tail call fastcc i32 @schedule_erase(ptr noundef %ubi, ptr noundef nonnull %call.i475, i32 noundef %164, i32 noundef %166, i32 noundef 0, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i486)
  %tobool11.not.i487 = icmp eq i32 %call10.i486, 0
  br i1 %tobool11.not.i487, label %if.else.i.if.end249_crit_edge, label %if.else.i.out_free.i489_crit_edge

if.else.i.out_free.i489_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free.i489

if.else.i.if.end249_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249

out_free.i489:                                    ; preds = %if.else.i.out_free.i489_crit_edge, %if.then5.i.out_free.i489_crit_edge
  %err.0.i = phi i32 [ %call6.i, %if.then5.i.out_free.i489_crit_edge ], [ %call10.i486, %if.else.i.out_free.i489_crit_edge ]
  %pnum1.i478.le = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i475, i32 0, i32 2
  %167 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %lookuptbl, align 8
  %169 = ptrtoint ptr %pnum1.i478.le to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pnum1.i478.le, align 8
  %arrayidx.i.i488 = getelementptr ptr, ptr %168, i32 %170
  %171 = ptrtoint ptr %arrayidx.i.i488 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %arrayidx.i.i488, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %172 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %172, ptr noundef nonnull %call.i475) #12
  br label %out_free

if.end249:                                        ; preds = %if.else.i.if.end249_crit_edge, %if.end9.i, %do.end230
  %inc250 = add i32 %found_pebs.4615, 1
  br label %for.inc251

for.inc251:                                       ; preds = %if.end249, %if.else234.for.inc251_crit_edge
  %found_pebs.5 = phi i32 [ %inc250, %if.end249 ], [ %found_pebs.4615, %if.else234.for.inc251_crit_edge ]
  %173 = ptrtoint ptr %.pn450618 to i32
  call void @__asan_load4_noabort(i32 %173)
  %.pn450 = load ptr, ptr %.pn450618, align 4
  %cmp194.not = icmp eq ptr %.pn450, %fastmap
  br i1 %cmp194.not, label %for.inc251.do.body258_crit_edge, label %for.inc251.for.body197_crit_edge

for.inc251.for.body197_crit_edge:                 ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body197

for.inc251.do.body258_crit_edge:                  ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body258

do.body258:                                       ; preds = %for.inc251.do.body258_crit_edge, %for.end186.do.body258_crit_edge
  %found_pebs.4.lcssa = phi i32 [ %found_pebs.2.lcssa, %for.end186.do.body258_crit_edge ], [ %found_pebs.5, %for.inc251.do.body258_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_init.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_init, %if.then270)) #12
          to label %do.body277 [label %if.then270], !srcloc !306

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #14
  %174 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i492 = and i32 %174, -16384
  %175 = inttoptr i32 %and.i492 to ptr
  %task272 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %task272 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %task272, align 8
  %pid273 = getelementptr inbounds %struct.task_struct, ptr %177, i32 0, i32 68
  %178 = ptrtoint ptr %pid273 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pid273, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_init.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.36, i32 noundef %179, i32 noundef %found_pebs.4.lcssa) #12
  br label %do.body277

do.body277:                                       ; preds = %if.then270, %do.body258
  %good_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 63
  %180 = ptrtoint ptr %good_peb_count to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %good_peb_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %found_pebs.4.lcssa)
  %cmp278.not = icmp eq i32 %181, %found_pebs.4.lcssa
  br i1 %cmp278.not, label %do.body277.do.end298_crit_edge, label %do.end290, !prof !308

do.body277.do.end298_crit_edge:                   ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end298

do.end290:                                        ; preds = %do.body277
  call void @__sanitizer_cov_trace_pc() #14
  %182 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i493 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i493 to ptr
  %task293 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %task293 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %task293, align 8
  %pid294 = getelementptr inbounds %struct.task_struct, ptr %185, i32 0, i32 68
  %186 = ptrtoint ptr %pid294 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %pid294, align 8
  %call295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.31, i32 noundef 1878, i32 noundef %187) #15
  tail call void @dump_stack() #15
  br label %do.end298

do.end298:                                        ; preds = %do.end290, %do.body277.do.end298_crit_edge
  %188 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %reserved_pebs, align 4
  call fastcc void @ubi_fastmap_init(ptr noundef %ubi, ptr noundef nonnull %reserved_pebs)
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 10
  %189 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %avail_pebs, align 8
  %191 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %reserved_pebs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %192)
  %cmp299 = icmp slt i32 %190, %192
  br i1 %cmp299, label %if.then300, label %if.end306

if.then300:                                       ; preds = %do.end298
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.39, i32 noundef %190, i32 noundef %192) #12
  %corr_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 64
  %193 = ptrtoint ptr %corr_peb_count to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %corr_peb_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool302.not = icmp eq i32 %194, 0
  br i1 %tobool302.not, label %if.then300.out_free_crit_edge, label %if.then303

if.then300.out_free_crit_edge:                    ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.then303:                                       ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.40, i32 noundef %194) #12
  br label %out_free

if.end306:                                        ; preds = %do.end298
  %sub = sub i32 %190, %192
  %195 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %sub, ptr %avail_pebs, align 8
  %rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 9
  %196 = ptrtoint ptr %rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rsvd_pebs, align 4
  %add = add i32 %197, %192
  store i32 %add, ptr %rsvd_pebs, align 4
  %call308 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %ubi, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.end311, label %if.end306.out_free_crit_edge

if.end306.out_free_crit_edge:                     ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end311:                                        ; preds = %if.end306
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %198 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool312.not = icmp eq i32 %199, 0
  br i1 %tobool312.not, label %land.lhs.true, label %if.end311.cleanup321_crit_edge

if.end311.cleanup321_crit_edge:                   ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup321

land.lhs.true:                                    ; preds = %if.end311
  %fm_disabled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 25
  %200 = ptrtoint ptr %fm_disabled to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %fm_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool313.not = icmp eq i32 %201, 0
  br i1 %tobool313.not, label %if.then314, label %land.lhs.true.cleanup321_crit_edge

land.lhs.true.cleanup321_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup321

if.then314:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call315 = tail call i32 @ubi_ensure_anchor_pebs(ptr noundef %ubi)
  br label %cleanup321

out_free:                                         ; preds = %if.end306.out_free_crit_edge, %if.then303, %if.then300.out_free_crit_edge, %out_free.i489, %if.end240.out_free_crit_edge, %for.body104.out_free_crit_edge, %for.body45.out_free_crit_edge, %out_free.i, %for.body20.out_free_crit_edge
  %err.5 = phi i32 [ %call308, %if.end306.out_free_crit_edge ], [ -28, %if.then303 ], [ -28, %if.then300.out_free_crit_edge ], [ %call10.i, %out_free.i ], [ %err.0.i, %out_free.i489 ], [ -12, %if.end240.out_free_crit_edge ], [ -12, %for.body104.out_free_crit_edge ], [ -12, %for.body45.out_free_crit_edge ], [ -12, %for.body20.out_free_crit_edge ]
  %202 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile ptr, ptr %works, align 4
  %cmp.i.not20.i = icmp eq ptr %203, %works
  br i1 %cmp.i.not20.i, label %out_free.shutdown_work.exit_crit_edge, label %while.body.lr.ph.i

out_free.shutdown_work.exit_crit_edge:            ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %shutdown_work.exit

while.body.lr.ph.i:                               ; preds = %out_free
  %works_count.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 55
  br label %while.body.i

while.body.i:                                     ; preds = %do.end13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %204 = phi ptr [ %203, %while.body.lr.ph.i ], [ %224, %do.end13.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %204) #12
  br i1 %call.i.i.i, label %if.end.i.i.i494, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i494:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %prev.i.i.i, align 4
  %207 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %204, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %206, ptr %prev1.i.i.i.i, align 4
  %210 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile ptr %208, ptr %206, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i494, %while.body.i.list_del.exit.i_crit_edge
  %211 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr inttoptr (i32 256 to ptr), ptr %204, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %204, i32 0, i32 1
  %212 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ubi_work, ptr %204, i32 0, i32 1
  %213 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %func.i, align 4
  %call2.i = tail call i32 %214(ptr noundef %ubi, ptr noundef %204, i32 noundef 1) #12
  %215 = ptrtoint ptr %works_count.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %works_count.i, align 8
  %sub.i = add i32 %216, -1
  store i32 %sub.i, ptr %works_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i, label %list_del.exit.i.do.end13.i_crit_edge, !prof !307

list_del.exit.i.do.end13.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %217 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %220, i32 0, i32 68
  %221 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %pid.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.75, i32 noundef 1698, i32 noundef %222) #15
  tail call void @dump_stack() #15
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %list_del.exit.i.do.end13.i_crit_edge
  %223 = ptrtoint ptr %works to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile ptr, ptr %works, align 4
  %cmp.i.not.i = icmp eq ptr %224, %works
  br i1 %cmp.i.not.i, label %do.end13.i.shutdown_work.exit_crit_edge, label %do.end13.i.while.body.i_crit_edge

do.end13.i.while.body.i_crit_edge:                ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

do.end13.i.shutdown_work.exit_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %shutdown_work.exit

shutdown_work.exit:                               ; preds = %do.end13.i.shutdown_work.exit_crit_edge, %out_free.shutdown_work.exit_crit_edge
  %225 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %used, align 4
  %tobool.not30.i = icmp eq ptr %226, null
  br i1 %tobool.not30.i, label %shutdown_work.exit.tree_destroy.exit_crit_edge, label %shutdown_work.exit.while.body.i496_crit_edge

shutdown_work.exit.while.body.i496_crit_edge:     ; preds = %shutdown_work.exit
  br label %while.body.i496

shutdown_work.exit.tree_destroy.exit_crit_edge:   ; preds = %shutdown_work.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit

while.body.i496:                                  ; preds = %if.end16.i.while.body.i496_crit_edge, %shutdown_work.exit.while.body.i496_crit_edge
  %rb.031.i = phi ptr [ %rb.1.i, %if.end16.i.while.body.i496_crit_edge ], [ %226, %shutdown_work.exit.while.body.i496_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb.031.i, i32 0, i32 2
  %227 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rb_left.i, align 4
  %tobool1.not.i = icmp eq ptr %228, null
  br i1 %tobool1.not.i, label %if.else.i497, label %while.body.i496.if.end16.i_crit_edge

while.body.i496.if.end16.i_crit_edge:             ; preds = %while.body.i496
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.else.i497:                                     ; preds = %while.body.i496
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb.031.i, i32 0, i32 1
  %229 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rb_right.i, align 4
  %tobool3.not.i = icmp eq ptr %230, null
  br i1 %tobool3.not.i, label %if.else6.i, label %if.else.i497.if.end16.i_crit_edge

if.else.i497.if.end16.i_crit_edge:                ; preds = %if.else.i497
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.else6.i:                                       ; preds = %if.else.i497
  %231 = ptrtoint ptr %rb.031.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %rb.031.i, align 4
  %and.i498 = and i32 %232, -4
  %233 = inttoptr i32 %and.i498 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i498)
  %tobool7.not.i499 = icmp eq i32 %and.i498, 0
  br i1 %tobool7.not.i499, label %if.else6.i.if.end14.i_crit_edge, label %if.then8.i

if.else6.i.if.end14.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i = getelementptr inbounds %struct.rb_node, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %rb_left9.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rb_left9.i, align 4
  %cmp.i500 = icmp eq ptr %235, %rb.031.i
  %rb_right13.i = getelementptr inbounds %struct.rb_node, ptr %233, i32 0, i32 1
  %rb_left9.sink.i = select i1 %cmp.i500, ptr %rb_left9.i, ptr %rb_right13.i
  %236 = ptrtoint ptr %rb_left9.sink.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %rb_left9.sink.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.else6.i.if.end14.i_crit_edge
  %237 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %lookuptbl, align 8
  %pnum.i.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %rb.031.i, i32 0, i32 2
  %239 = ptrtoint ptr %pnum.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %pnum.i.i, align 4
  %arrayidx.i.i501 = getelementptr ptr, ptr %238, i32 %240
  %241 = ptrtoint ptr %arrayidx.i.i501 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %arrayidx.i.i501, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %242 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %242, ptr noundef nonnull %rb.031.i) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end14.i, %if.else.i497.if.end16.i_crit_edge, %while.body.i496.if.end16.i_crit_edge
  %rb.1.i = phi ptr [ %233, %if.end14.i ], [ %228, %while.body.i496.if.end16.i_crit_edge ], [ %230, %if.else.i497.if.end16.i_crit_edge ]
  %tobool.not.i502 = icmp eq ptr %rb.1.i, null
  br i1 %tobool.not.i502, label %if.end16.i.tree_destroy.exit_crit_edge, label %if.end16.i.while.body.i496_crit_edge

if.end16.i.while.body.i496_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i496

if.end16.i.tree_destroy.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit

tree_destroy.exit:                                ; preds = %if.end16.i.tree_destroy.exit_crit_edge, %shutdown_work.exit.tree_destroy.exit_crit_edge
  %243 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %free, align 4
  %tobool.not30.i503 = icmp eq ptr %244, null
  br i1 %tobool.not30.i503, label %tree_destroy.exit.tree_destroy.exit527_crit_edge, label %tree_destroy.exit.while.body.i509_crit_edge

tree_destroy.exit.while.body.i509_crit_edge:      ; preds = %tree_destroy.exit
  br label %while.body.i509

tree_destroy.exit.tree_destroy.exit527_crit_edge: ; preds = %tree_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit527

while.body.i509:                                  ; preds = %if.end16.i526.while.body.i509_crit_edge, %tree_destroy.exit.while.body.i509_crit_edge
  %rb.031.i506 = phi ptr [ %rb.1.i524, %if.end16.i526.while.body.i509_crit_edge ], [ %244, %tree_destroy.exit.while.body.i509_crit_edge ]
  %rb_left.i507 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i506, i32 0, i32 2
  %245 = ptrtoint ptr %rb_left.i507 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %rb_left.i507, align 4
  %tobool1.not.i508 = icmp eq ptr %246, null
  br i1 %tobool1.not.i508, label %if.else.i512, label %while.body.i509.if.end16.i526_crit_edge

while.body.i509.if.end16.i526_crit_edge:          ; preds = %while.body.i509
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i526

if.else.i512:                                     ; preds = %while.body.i509
  %rb_right.i510 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i506, i32 0, i32 1
  %247 = ptrtoint ptr %rb_right.i510 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %rb_right.i510, align 4
  %tobool3.not.i511 = icmp eq ptr %248, null
  br i1 %tobool3.not.i511, label %if.else6.i515, label %if.else.i512.if.end16.i526_crit_edge

if.else.i512.if.end16.i526_crit_edge:             ; preds = %if.else.i512
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i526

if.else6.i515:                                    ; preds = %if.else.i512
  %249 = ptrtoint ptr %rb.031.i506 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %rb.031.i506, align 4
  %and.i513 = and i32 %250, -4
  %251 = inttoptr i32 %and.i513 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i513)
  %tobool7.not.i514 = icmp eq i32 %and.i513, 0
  br i1 %tobool7.not.i514, label %if.else6.i515.if.end14.i523_crit_edge, label %if.then8.i520

if.else6.i515.if.end14.i523_crit_edge:            ; preds = %if.else6.i515
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i523

if.then8.i520:                                    ; preds = %if.else6.i515
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i516 = getelementptr inbounds %struct.rb_node, ptr %251, i32 0, i32 2
  %252 = ptrtoint ptr %rb_left9.i516 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rb_left9.i516, align 4
  %cmp.i517 = icmp eq ptr %253, %rb.031.i506
  %rb_right13.i518 = getelementptr inbounds %struct.rb_node, ptr %251, i32 0, i32 1
  %rb_left9.sink.i519 = select i1 %cmp.i517, ptr %rb_left9.i516, ptr %rb_right13.i518
  %254 = ptrtoint ptr %rb_left9.sink.i519 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr null, ptr %rb_left9.sink.i519, align 4
  br label %if.end14.i523

if.end14.i523:                                    ; preds = %if.then8.i520, %if.else6.i515.if.end14.i523_crit_edge
  %255 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %lookuptbl, align 8
  %pnum.i.i521 = getelementptr inbounds %struct.ubi_wl_entry, ptr %rb.031.i506, i32 0, i32 2
  %257 = ptrtoint ptr %pnum.i.i521 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %pnum.i.i521, align 4
  %arrayidx.i.i522 = getelementptr ptr, ptr %256, i32 %258
  %259 = ptrtoint ptr %arrayidx.i.i522 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr null, ptr %arrayidx.i.i522, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %260 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %260, ptr noundef nonnull %rb.031.i506) #12
  br label %if.end16.i526

if.end16.i526:                                    ; preds = %if.end14.i523, %if.else.i512.if.end16.i526_crit_edge, %while.body.i509.if.end16.i526_crit_edge
  %rb.1.i524 = phi ptr [ %251, %if.end14.i523 ], [ %246, %while.body.i509.if.end16.i526_crit_edge ], [ %248, %if.else.i512.if.end16.i526_crit_edge ]
  %tobool.not.i525 = icmp eq ptr %rb.1.i524, null
  br i1 %tobool.not.i525, label %if.end16.i526.tree_destroy.exit527_crit_edge, label %if.end16.i526.while.body.i509_crit_edge

if.end16.i526.while.body.i509_crit_edge:          ; preds = %if.end16.i526
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i509

if.end16.i526.tree_destroy.exit527_crit_edge:     ; preds = %if.end16.i526
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit527

tree_destroy.exit527:                             ; preds = %if.end16.i526.tree_destroy.exit527_crit_edge, %tree_destroy.exit.tree_destroy.exit527_crit_edge
  %261 = ptrtoint ptr %scrub to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %scrub, align 4
  %tobool.not30.i528 = icmp eq ptr %262, null
  br i1 %tobool.not30.i528, label %tree_destroy.exit527.tree_destroy.exit552_crit_edge, label %tree_destroy.exit527.while.body.i534_crit_edge

tree_destroy.exit527.while.body.i534_crit_edge:   ; preds = %tree_destroy.exit527
  br label %while.body.i534

tree_destroy.exit527.tree_destroy.exit552_crit_edge: ; preds = %tree_destroy.exit527
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit552

while.body.i534:                                  ; preds = %if.end16.i551.while.body.i534_crit_edge, %tree_destroy.exit527.while.body.i534_crit_edge
  %rb.031.i531 = phi ptr [ %rb.1.i549, %if.end16.i551.while.body.i534_crit_edge ], [ %262, %tree_destroy.exit527.while.body.i534_crit_edge ]
  %rb_left.i532 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i531, i32 0, i32 2
  %263 = ptrtoint ptr %rb_left.i532 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %rb_left.i532, align 4
  %tobool1.not.i533 = icmp eq ptr %264, null
  br i1 %tobool1.not.i533, label %if.else.i537, label %while.body.i534.if.end16.i551_crit_edge

while.body.i534.if.end16.i551_crit_edge:          ; preds = %while.body.i534
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i551

if.else.i537:                                     ; preds = %while.body.i534
  %rb_right.i535 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i531, i32 0, i32 1
  %265 = ptrtoint ptr %rb_right.i535 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %rb_right.i535, align 4
  %tobool3.not.i536 = icmp eq ptr %266, null
  br i1 %tobool3.not.i536, label %if.else6.i540, label %if.else.i537.if.end16.i551_crit_edge

if.else.i537.if.end16.i551_crit_edge:             ; preds = %if.else.i537
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i551

if.else6.i540:                                    ; preds = %if.else.i537
  %267 = ptrtoint ptr %rb.031.i531 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %rb.031.i531, align 4
  %and.i538 = and i32 %268, -4
  %269 = inttoptr i32 %and.i538 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i538)
  %tobool7.not.i539 = icmp eq i32 %and.i538, 0
  br i1 %tobool7.not.i539, label %if.else6.i540.if.end14.i548_crit_edge, label %if.then8.i545

if.else6.i540.if.end14.i548_crit_edge:            ; preds = %if.else6.i540
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i548

if.then8.i545:                                    ; preds = %if.else6.i540
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i541 = getelementptr inbounds %struct.rb_node, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %rb_left9.i541 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %rb_left9.i541, align 4
  %cmp.i542 = icmp eq ptr %271, %rb.031.i531
  %rb_right13.i543 = getelementptr inbounds %struct.rb_node, ptr %269, i32 0, i32 1
  %rb_left9.sink.i544 = select i1 %cmp.i542, ptr %rb_left9.i541, ptr %rb_right13.i543
  %272 = ptrtoint ptr %rb_left9.sink.i544 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr null, ptr %rb_left9.sink.i544, align 4
  br label %if.end14.i548

if.end14.i548:                                    ; preds = %if.then8.i545, %if.else6.i540.if.end14.i548_crit_edge
  %273 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %lookuptbl, align 8
  %pnum.i.i546 = getelementptr inbounds %struct.ubi_wl_entry, ptr %rb.031.i531, i32 0, i32 2
  %275 = ptrtoint ptr %pnum.i.i546 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %pnum.i.i546, align 4
  %arrayidx.i.i547 = getelementptr ptr, ptr %274, i32 %276
  %277 = ptrtoint ptr %arrayidx.i.i547 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr null, ptr %arrayidx.i.i547, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %278 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %278, ptr noundef nonnull %rb.031.i531) #12
  br label %if.end16.i551

if.end16.i551:                                    ; preds = %if.end14.i548, %if.else.i537.if.end16.i551_crit_edge, %while.body.i534.if.end16.i551_crit_edge
  %rb.1.i549 = phi ptr [ %269, %if.end14.i548 ], [ %264, %while.body.i534.if.end16.i551_crit_edge ], [ %266, %if.else.i537.if.end16.i551_crit_edge ]
  %tobool.not.i550 = icmp eq ptr %rb.1.i549, null
  br i1 %tobool.not.i550, label %if.end16.i551.tree_destroy.exit552_crit_edge, label %if.end16.i551.while.body.i534_crit_edge

if.end16.i551.while.body.i534_crit_edge:          ; preds = %if.end16.i551
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i534

if.end16.i551.tree_destroy.exit552_crit_edge:     ; preds = %if.end16.i551
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit552

tree_destroy.exit552:                             ; preds = %if.end16.i551.tree_destroy.exit552_crit_edge, %tree_destroy.exit527.tree_destroy.exit552_crit_edge
  %279 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %lookuptbl, align 8
  tail call void @kfree(ptr noundef %280) #12
  br label %cleanup321

cleanup321:                                       ; preds = %tree_destroy.exit552, %if.then314, %land.lhs.true.cleanup321_crit_edge, %if.end311.cleanup321_crit_edge, %if.end7.i.i.cleanup321_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %err.5, %tree_destroy.exit552 ], [ -12, %if.end7.i.i.cleanup321_crit_edge ], [ 0, %if.then314 ], [ 0, %land.lhs.true.cleanup321_crit_edge ], [ 0, %if.end311.cleanup321_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_pebs) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ubi_fastmap_init(ptr noundef %ubi, ptr nocapture noundef %count) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %fm_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 32
  %0 = ptrtoint ptr %fm_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fm_size, align 8
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %2 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %leb_size, align 8
  %div = udiv i32 %1, %3
  %mul = shl i32 %div, 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %add = add i32 %5, %mul
  store i32 %add, ptr %count, align 4
  %fm_work = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 33
  tail call void @__init_work(ptr noundef %fm_work, i32 noundef 0) #12
  %6 = ptrtoint ptr %fm_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %fm_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 33, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.74, ptr noundef nonnull @ubi_fastmap_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 33, i32 1
  %7 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 33, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 33, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @update_fastmap_work_fn, ptr %func, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_ensure_anchor_pebs(ptr noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %fm_next_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 37
  %0 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm_next_anchor, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call ptr @ubi_wl_get_fm_peb(ptr noundef %ubi, i32 noundef 1)
  %2 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fm_next_anchor, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %fm_do_produce_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 38
  %3 = ptrtoint ptr %fm_do_produce_anchor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %fm_do_produce_anchor, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %wl_scheduled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 49
  %4 = ptrtoint ptr %wl_scheduled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wl_scheduled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %6 = ptrtoint ptr %wl_scheduled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %wl_scheduled, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3136, i32 noundef 28) #16
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %8 = ptrtoint ptr %wl_scheduled to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wl_scheduled, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %func = getelementptr inbounds %struct.ubi_work, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @wear_leveling_worker, ptr %func, align 8
  tail call fastcc void @__schedule_ubi_work(ptr noundef %ubi, ptr noundef nonnull %call7.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then14, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.end18 ], [ -12, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_wl_close(ptr noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_close.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_close, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_close.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.42, i32 noundef %5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fm_pool.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27
  %used.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 2
  %8 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp7.i.i = icmp slt i32 %7, %9
  br i1 %cmp7.i.i, label %for.body.lr.ph.i.i, label %do.end.return_unused_pool_pebs.exit.i_crit_edge

do.end.return_unused_pool_pebs.exit.i_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_unused_pool_pebs.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.end
  %lookuptbl.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %free.i.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %free_count.i.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ %7, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %lookuptbl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lookuptbl.i.i, align 8
  %arrayidx.i.i = getelementptr [256 x i32], ptr %fm_pool.i, i32 0, i32 %i.08.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr ptr, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i.i, align 4
  tail call fastcc void @wl_tree_add(ptr noundef %15, ptr noundef %free.i.i.i) #12
  %16 = ptrtoint ptr %free_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %free_count.i.i.i, align 8
  %inc.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i, ptr %free_count.i.i.i, align 8
  %inc.i.i = add nsw i32 %i.08.i.i, 1
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %19
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.return_unused_pool_pebs.exit.i_crit_edge

for.body.i.i.return_unused_pool_pebs.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_unused_pool_pebs.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

return_unused_pool_pebs.exit.i:                   ; preds = %for.body.i.i.return_unused_pool_pebs.exit.i_crit_edge, %do.end.return_unused_pool_pebs.exit.i_crit_edge
  %fm_wl_pool.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28
  %used.i32.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 1
  %20 = ptrtoint ptr %used.i32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used.i32.i, align 4
  %size.i33.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 2
  %22 = ptrtoint ptr %size.i33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp7.i34.i = icmp slt i32 %21, %23
  br i1 %cmp7.i34.i, label %for.body.lr.ph.i38.i, label %return_unused_pool_pebs.exit.i.return_unused_pool_pebs.exit46.i_crit_edge

return_unused_pool_pebs.exit.i.return_unused_pool_pebs.exit46.i_crit_edge: ; preds = %return_unused_pool_pebs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_unused_pool_pebs.exit46.i

for.body.lr.ph.i38.i:                             ; preds = %return_unused_pool_pebs.exit.i
  %lookuptbl.i35.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %free.i.i36.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %free_count.i.i37.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  br label %for.body.i45.i

for.body.i45.i:                                   ; preds = %for.body.i45.i.for.body.i45.i_crit_edge, %for.body.lr.ph.i38.i
  %i.08.i39.i = phi i32 [ %21, %for.body.lr.ph.i38.i ], [ %inc.i43.i, %for.body.i45.i.for.body.i45.i_crit_edge ]
  %24 = ptrtoint ptr %lookuptbl.i35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lookuptbl.i35.i, align 8
  %arrayidx.i40.i = getelementptr [256 x i32], ptr %fm_wl_pool.i, i32 0, i32 %i.08.i39.i
  %26 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i40.i, align 4
  %arrayidx1.i41.i = getelementptr ptr, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx1.i41.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx1.i41.i, align 4
  tail call fastcc void @wl_tree_add(ptr noundef %29, ptr noundef %free.i.i36.i) #12
  %30 = ptrtoint ptr %free_count.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %free_count.i.i37.i, align 8
  %inc.i.i42.i = add i32 %31, 1
  store i32 %inc.i.i42.i, ptr %free_count.i.i37.i, align 8
  %inc.i43.i = add nsw i32 %i.08.i39.i, 1
  %32 = ptrtoint ptr %size.i33.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i33.i, align 4
  %cmp.i44.i = icmp slt i32 %inc.i43.i, %33
  br i1 %cmp.i44.i, label %for.body.i45.i.for.body.i45.i_crit_edge, label %for.body.i45.i.return_unused_pool_pebs.exit46.i_crit_edge

for.body.i45.i.return_unused_pool_pebs.exit46.i_crit_edge: ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_unused_pool_pebs.exit46.i

for.body.i45.i.for.body.i45.i_crit_edge:          ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i45.i

return_unused_pool_pebs.exit46.i:                 ; preds = %for.body.i45.i.return_unused_pool_pebs.exit46.i_crit_edge, %return_unused_pool_pebs.exit.i.return_unused_pool_pebs.exit46.i_crit_edge
  %fm_anchor.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 36
  %34 = ptrtoint ptr %fm_anchor.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fm_anchor.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %return_unused_pool_pebs.exit46.i.if.end.i_crit_edge, label %if.then.i

return_unused_pool_pebs.exit46.i.if.end.i_crit_edge: ; preds = %return_unused_pool_pebs.exit46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %return_unused_pool_pebs.exit46.i
  call void @__sanitizer_cov_trace_pc() #14
  %free.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %35, ptr noundef %free.i.i) #12
  %free_count.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %36 = ptrtoint ptr %free_count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %free_count.i.i, align 8
  %inc.i47.i = add i32 %37, 1
  store i32 %inc.i47.i, ptr %free_count.i.i, align 8
  %38 = ptrtoint ptr %fm_anchor.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %fm_anchor.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %return_unused_pool_pebs.exit46.i.if.end.i_crit_edge
  %fm_next_anchor.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 37
  %39 = ptrtoint ptr %fm_next_anchor.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fm_next_anchor.i, align 4
  %tobool3.not.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %free.i48.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %40, ptr noundef %free.i48.i) #12
  %free_count.i49.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %41 = ptrtoint ptr %free_count.i49.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %free_count.i49.i, align 8
  %inc.i50.i = add i32 %42, 1
  store i32 %inc.i50.i, ptr %free_count.i49.i, align 8
  %43 = ptrtoint ptr %fm_next_anchor.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %fm_next_anchor.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %fm.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 26
  %44 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fm.i, align 8
  %tobool8.not.i = icmp eq ptr %45, null
  br i1 %tobool8.not.i, label %if.end7.i.ubi_fastmap_close.exit_crit_edge, label %for.cond.preheader.i

if.end7.i.ubi_fastmap_close.exit_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_fastmap_close.exit

for.cond.preheader.i:                             ; preds = %if.end7.i
  %used_blocks51.i = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %used_blocks51.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %used_blocks51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp52.i = icmp sgt i32 %47, 0
  br i1 %cmp52.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ubi_fastmap_close.exit_crit_edge

for.cond.preheader.i.ubi_fastmap_close.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_fastmap_close.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %48 = phi ptr [ %52, %for.body.i.for.body.i_crit_edge ], [ %45, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.053.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr %48, i32 0, i32 %i.053.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %50) #12
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %51 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fm.i, align 8
  %used_blocks.i = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %used_blocks.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %used_blocks.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %54
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ubi_fastmap_close.exit_crit_edge

for.body.i.ubi_fastmap_close.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_fastmap_close.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

ubi_fastmap_close.exit:                           ; preds = %for.body.i.ubi_fastmap_close.exit_crit_edge, %for.cond.preheader.i.ubi_fastmap_close.exit_crit_edge, %if.end7.i.ubi_fastmap_close.exit_crit_edge
  %55 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fm.i, align 8
  tail call void @kfree(ptr noundef %56) #12
  %works.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 54
  %57 = ptrtoint ptr %works.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %works.i, align 4
  %cmp.i.not20.i = icmp eq ptr %58, %works.i
  br i1 %cmp.i.not20.i, label %ubi_fastmap_close.exit.shutdown_work.exit_crit_edge, label %while.body.lr.ph.i

ubi_fastmap_close.exit.shutdown_work.exit_crit_edge: ; preds = %ubi_fastmap_close.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %shutdown_work.exit

while.body.lr.ph.i:                               ; preds = %ubi_fastmap_close.exit
  %works_count.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 55
  br label %while.body.i

while.body.i:                                     ; preds = %do.end13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %59 = phi ptr [ %58, %while.body.lr.ph.i ], [ %79, %do.end13.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %59) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %66 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.ubi_work, ptr %59, i32 0, i32 1
  %68 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %func.i, align 4
  %call2.i = tail call i32 %69(ptr noundef %ubi, ptr noundef %59, i32 noundef 1) #12
  %70 = ptrtoint ptr %works_count.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %works_count.i, align 8
  %sub.i = add i32 %71, -1
  store i32 %sub.i, ptr %works_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i15 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i15, label %do.end.i, label %list_del.exit.i.do.end13.i_crit_edge, !prof !307

list_del.exit.i.do.end13.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.75, i32 noundef 1698, i32 noundef %77) #15
  tail call void @dump_stack() #15
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %list_del.exit.i.do.end13.i_crit_edge
  %78 = ptrtoint ptr %works.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %works.i, align 4
  %cmp.i.not.i = icmp eq ptr %79, %works.i
  br i1 %cmp.i.not.i, label %do.end13.i.shutdown_work.exit_crit_edge, label %do.end13.i.while.body.i_crit_edge

do.end13.i.while.body.i_crit_edge:                ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

do.end13.i.shutdown_work.exit_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %shutdown_work.exit

shutdown_work.exit:                               ; preds = %do.end13.i.shutdown_work.exit_crit_edge, %ubi_fastmap_close.exit.shutdown_work.exit_crit_edge
  %lookuptbl.i.i16 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.inc18.i.for.body.i18_crit_edge, %shutdown_work.exit
  %i.031.i = phi i32 [ 0, %shutdown_work.exit ], [ %inc.i26, %for.inc18.i.for.body.i18_crit_edge ]
  %arrayidx.i17 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 %i.031.i
  %80 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i17, align 8
  %cmp10.not29.i = icmp eq ptr %81, %arrayidx.i17
  br i1 %cmp10.not29.i, label %for.body.i18.for.inc18.i_crit_edge, label %for.body.i18.for.body11.i_crit_edge

for.body.i18.for.body11.i_crit_edge:              ; preds = %for.body.i18
  br label %for.body11.i

for.body.i18.for.inc18.i_crit_edge:               ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc18.i

for.body11.i:                                     ; preds = %list_del.exit.i25.for.body11.i_crit_edge, %for.body.i18.for.body11.i_crit_edge
  %e.030.i = phi ptr [ %tmp.0.i, %list_del.exit.i25.for.body11.i_crit_edge ], [ %81, %for.body.i18.for.body11.i_crit_edge ]
  %82 = ptrtoint ptr %e.030.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %tmp.0.i = load ptr, ptr %e.030.i, align 4
  %call.i.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.030.i) #12
  br i1 %call.i.i.i19, label %if.end.i.i.i22, label %for.body11.i.list_del.exit.i25_crit_edge

for.body11.i.list_del.exit.i25_crit_edge:         ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i25

if.end.i.i.i22:                                   ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i20 = getelementptr inbounds %struct.list_head, ptr %e.030.i, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i.i20, align 4
  %85 = ptrtoint ptr %e.030.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %e.030.i, align 4
  %prev1.i.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i.i21, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del.exit.i25

list_del.exit.i25:                                ; preds = %if.end.i.i.i22, %for.body11.i.list_del.exit.i25_crit_edge
  %89 = ptrtoint ptr %e.030.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 256 to ptr), ptr %e.030.i, align 4
  %prev.i.i23 = getelementptr inbounds %struct.list_head, ptr %e.030.i, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i23 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i23, align 4
  %91 = ptrtoint ptr %lookuptbl.i.i16 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lookuptbl.i.i16, align 8
  %pnum.i.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.030.i, i32 0, i32 2
  %93 = ptrtoint ptr %pnum.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pnum.i.i, align 4
  %arrayidx.i.i24 = getelementptr ptr, ptr %92, i32 %94
  %95 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %arrayidx.i.i24, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %96 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %96, ptr noundef %e.030.i) #12
  %cmp10.not.i = icmp eq ptr %tmp.0.i, %arrayidx.i17
  br i1 %cmp10.not.i, label %list_del.exit.i25.for.inc18.i_crit_edge, label %list_del.exit.i25.for.body11.i_crit_edge

list_del.exit.i25.for.body11.i_crit_edge:         ; preds = %list_del.exit.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body11.i

list_del.exit.i25.for.inc18.i_crit_edge:          ; preds = %list_del.exit.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %list_del.exit.i25.for.inc18.i_crit_edge, %for.body.i18.for.inc18.i_crit_edge
  %inc.i26 = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i26, 10
  br i1 %exitcond.not.i, label %protection_queue_destroy.exit, label %for.inc18.i.for.body.i18_crit_edge

for.inc18.i.for.body.i18_crit_edge:               ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i18

protection_queue_destroy.exit:                    ; preds = %for.inc18.i
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %97 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %used, align 4
  %tobool.not30.i = icmp eq ptr %98, null
  br i1 %tobool.not30.i, label %protection_queue_destroy.exit.tree_destroy.exit_crit_edge, label %protection_queue_destroy.exit.while.body.i29_crit_edge

protection_queue_destroy.exit.while.body.i29_crit_edge: ; preds = %protection_queue_destroy.exit
  br label %while.body.i29

protection_queue_destroy.exit.tree_destroy.exit_crit_edge: ; preds = %protection_queue_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit

while.body.i29:                                   ; preds = %if.end16.i.while.body.i29_crit_edge, %protection_queue_destroy.exit.while.body.i29_crit_edge
  %rb.031.i = phi ptr [ %rb.1.i, %if.end16.i.while.body.i29_crit_edge ], [ %98, %protection_queue_destroy.exit.while.body.i29_crit_edge ]
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb.031.i, i32 0, i32 2
  %99 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rb_left.i, align 4
  %tobool1.not.i = icmp eq ptr %100, null
  br i1 %tobool1.not.i, label %if.else.i, label %while.body.i29.if.end16.i_crit_edge

while.body.i29.if.end16.i_crit_edge:              ; preds = %while.body.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.else.i:                                        ; preds = %while.body.i29
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb.031.i, i32 0, i32 1
  %101 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rb_right.i, align 4
  %tobool3.not.i30 = icmp eq ptr %102, null
  br i1 %tobool3.not.i30, label %if.else6.i, label %if.else.i.if.end16.i_crit_edge

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.else6.i:                                       ; preds = %if.else.i
  %103 = ptrtoint ptr %rb.031.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rb.031.i, align 4
  %and.i31 = and i32 %104, -4
  %105 = inttoptr i32 %and.i31 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool7.not.i = icmp eq i32 %and.i31, 0
  br i1 %tobool7.not.i, label %if.else6.i.if.end14.i_crit_edge, label %if.then8.i

if.else6.i.if.end14.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i = getelementptr inbounds %struct.rb_node, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %rb_left9.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rb_left9.i, align 4
  %cmp.i32 = icmp eq ptr %107, %rb.031.i
  %rb_right13.i = getelementptr inbounds %struct.rb_node, ptr %105, i32 0, i32 1
  %rb_left9.sink.i = select i1 %cmp.i32, ptr %rb_left9.i, ptr %rb_right13.i
  %108 = ptrtoint ptr %rb_left9.sink.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %rb_left9.sink.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.else6.i.if.end14.i_crit_edge
  %109 = ptrtoint ptr %lookuptbl.i.i16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lookuptbl.i.i16, align 8
  %pnum.i.i33 = getelementptr inbounds %struct.ubi_wl_entry, ptr %rb.031.i, i32 0, i32 2
  %111 = ptrtoint ptr %pnum.i.i33 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pnum.i.i33, align 4
  %arrayidx.i.i34 = getelementptr ptr, ptr %110, i32 %112
  %113 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %arrayidx.i.i34, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %114 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %114, ptr noundef nonnull %rb.031.i) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end14.i, %if.else.i.if.end16.i_crit_edge, %while.body.i29.if.end16.i_crit_edge
  %rb.1.i = phi ptr [ %105, %if.end14.i ], [ %100, %while.body.i29.if.end16.i_crit_edge ], [ %102, %if.else.i.if.end16.i_crit_edge ]
  %tobool.not.i35 = icmp eq ptr %rb.1.i, null
  br i1 %tobool.not.i35, label %if.end16.i.tree_destroy.exit_crit_edge, label %if.end16.i.while.body.i29_crit_edge

if.end16.i.while.body.i29_crit_edge:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i29

if.end16.i.tree_destroy.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit

tree_destroy.exit:                                ; preds = %if.end16.i.tree_destroy.exit_crit_edge, %protection_queue_destroy.exit.tree_destroy.exit_crit_edge
  %erroneous = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 40
  %115 = ptrtoint ptr %erroneous to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %erroneous, align 4
  %tobool.not30.i36 = icmp eq ptr %116, null
  br i1 %tobool.not30.i36, label %tree_destroy.exit.tree_destroy.exit60_crit_edge, label %tree_destroy.exit.while.body.i42_crit_edge

tree_destroy.exit.while.body.i42_crit_edge:       ; preds = %tree_destroy.exit
  br label %while.body.i42

tree_destroy.exit.tree_destroy.exit60_crit_edge:  ; preds = %tree_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit60

while.body.i42:                                   ; preds = %if.end16.i59.while.body.i42_crit_edge, %tree_destroy.exit.while.body.i42_crit_edge
  %rb.031.i39 = phi ptr [ %rb.1.i57, %if.end16.i59.while.body.i42_crit_edge ], [ %116, %tree_destroy.exit.while.body.i42_crit_edge ]
  %rb_left.i40 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i39, i32 0, i32 2
  %117 = ptrtoint ptr %rb_left.i40 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rb_left.i40, align 4
  %tobool1.not.i41 = icmp eq ptr %118, null
  br i1 %tobool1.not.i41, label %if.else.i45, label %while.body.i42.if.end16.i59_crit_edge

while.body.i42.if.end16.i59_crit_edge:            ; preds = %while.body.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i59

if.else.i45:                                      ; preds = %while.body.i42
  %rb_right.i43 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i39, i32 0, i32 1
  %119 = ptrtoint ptr %rb_right.i43 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rb_right.i43, align 4
  %tobool3.not.i44 = icmp eq ptr %120, null
  br i1 %tobool3.not.i44, label %if.else6.i48, label %if.else.i45.if.end16.i59_crit_edge

if.else.i45.if.end16.i59_crit_edge:               ; preds = %if.else.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i59

if.else6.i48:                                     ; preds = %if.else.i45
  %121 = ptrtoint ptr %rb.031.i39 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rb.031.i39, align 4
  %and.i46 = and i32 %122, -4
  %123 = inttoptr i32 %and.i46 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool7.not.i47 = icmp eq i32 %and.i46, 0
  br i1 %tobool7.not.i47, label %if.else6.i48.if.end14.i56_crit_edge, label %if.then8.i53

if.else6.i48.if.end14.i56_crit_edge:              ; preds = %if.else6.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i56

if.then8.i53:                                     ; preds = %if.else6.i48
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i49 = getelementptr inbounds %struct.rb_node, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %rb_left9.i49 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rb_left9.i49, align 4
  %cmp.i50 = icmp eq ptr %125, %rb.031.i39
  %rb_right13.i51 = getelementptr inbounds %struct.rb_node, ptr %123, i32 0, i32 1
  %rb_left9.sink.i52 = select i1 %cmp.i50, ptr %rb_left9.i49, ptr %rb_right13.i51
  %126 = ptrtoint ptr %rb_left9.sink.i52 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %rb_left9.sink.i52, align 4
  br label %if.end14.i56

if.end14.i56:                                     ; preds = %if.then8.i53, %if.else6.i48.if.end14.i56_crit_edge
  %127 = ptrtoint ptr %lookuptbl.i.i16 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %lookuptbl.i.i16, align 8
  %pnum.i.i54 = getelementptr inbounds %struct.ubi_wl_entry, ptr %rb.031.i39, i32 0, i32 2
  %129 = ptrtoint ptr %pnum.i.i54 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pnum.i.i54, align 4
  %arrayidx.i.i55 = getelementptr ptr, ptr %128, i32 %130
  %131 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %arrayidx.i.i55, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %132 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %132, ptr noundef nonnull %rb.031.i39) #12
  br label %if.end16.i59

if.end16.i59:                                     ; preds = %if.end14.i56, %if.else.i45.if.end16.i59_crit_edge, %while.body.i42.if.end16.i59_crit_edge
  %rb.1.i57 = phi ptr [ %123, %if.end14.i56 ], [ %118, %while.body.i42.if.end16.i59_crit_edge ], [ %120, %if.else.i45.if.end16.i59_crit_edge ]
  %tobool.not.i58 = icmp eq ptr %rb.1.i57, null
  br i1 %tobool.not.i58, label %if.end16.i59.tree_destroy.exit60_crit_edge, label %if.end16.i59.while.body.i42_crit_edge

if.end16.i59.while.body.i42_crit_edge:            ; preds = %if.end16.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i42

if.end16.i59.tree_destroy.exit60_crit_edge:       ; preds = %if.end16.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit60

tree_destroy.exit60:                              ; preds = %if.end16.i59.tree_destroy.exit60_crit_edge, %tree_destroy.exit.tree_destroy.exit60_crit_edge
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %133 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %free, align 4
  %tobool.not30.i61 = icmp eq ptr %134, null
  br i1 %tobool.not30.i61, label %tree_destroy.exit60.tree_destroy.exit85_crit_edge, label %tree_destroy.exit60.while.body.i67_crit_edge

tree_destroy.exit60.while.body.i67_crit_edge:     ; preds = %tree_destroy.exit60
  br label %while.body.i67

tree_destroy.exit60.tree_destroy.exit85_crit_edge: ; preds = %tree_destroy.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit85

while.body.i67:                                   ; preds = %if.end16.i84.while.body.i67_crit_edge, %tree_destroy.exit60.while.body.i67_crit_edge
  %rb.031.i64 = phi ptr [ %rb.1.i82, %if.end16.i84.while.body.i67_crit_edge ], [ %134, %tree_destroy.exit60.while.body.i67_crit_edge ]
  %rb_left.i65 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i64, i32 0, i32 2
  %135 = ptrtoint ptr %rb_left.i65 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rb_left.i65, align 4
  %tobool1.not.i66 = icmp eq ptr %136, null
  br i1 %tobool1.not.i66, label %if.else.i70, label %while.body.i67.if.end16.i84_crit_edge

while.body.i67.if.end16.i84_crit_edge:            ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i84

if.else.i70:                                      ; preds = %while.body.i67
  %rb_right.i68 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i64, i32 0, i32 1
  %137 = ptrtoint ptr %rb_right.i68 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rb_right.i68, align 4
  %tobool3.not.i69 = icmp eq ptr %138, null
  br i1 %tobool3.not.i69, label %if.else6.i73, label %if.else.i70.if.end16.i84_crit_edge

if.else.i70.if.end16.i84_crit_edge:               ; preds = %if.else.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i84

if.else6.i73:                                     ; preds = %if.else.i70
  %139 = ptrtoint ptr %rb.031.i64 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rb.031.i64, align 4
  %and.i71 = and i32 %140, -4
  %141 = inttoptr i32 %and.i71 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool7.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool7.not.i72, label %if.else6.i73.if.end14.i81_crit_edge, label %if.then8.i78

if.else6.i73.if.end14.i81_crit_edge:              ; preds = %if.else6.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i81

if.then8.i78:                                     ; preds = %if.else6.i73
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i74 = getelementptr inbounds %struct.rb_node, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %rb_left9.i74 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rb_left9.i74, align 4
  %cmp.i75 = icmp eq ptr %143, %rb.031.i64
  %rb_right13.i76 = getelementptr inbounds %struct.rb_node, ptr %141, i32 0, i32 1
  %rb_left9.sink.i77 = select i1 %cmp.i75, ptr %rb_left9.i74, ptr %rb_right13.i76
  %144 = ptrtoint ptr %rb_left9.sink.i77 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %rb_left9.sink.i77, align 4
  br label %if.end14.i81

if.end14.i81:                                     ; preds = %if.then8.i78, %if.else6.i73.if.end14.i81_crit_edge
  %145 = ptrtoint ptr %lookuptbl.i.i16 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lookuptbl.i.i16, align 8
  %pnum.i.i79 = getelementptr inbounds %struct.ubi_wl_entry, ptr %rb.031.i64, i32 0, i32 2
  %147 = ptrtoint ptr %pnum.i.i79 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pnum.i.i79, align 4
  %arrayidx.i.i80 = getelementptr ptr, ptr %146, i32 %148
  %149 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx.i.i80, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %150 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %150, ptr noundef nonnull %rb.031.i64) #12
  br label %if.end16.i84

if.end16.i84:                                     ; preds = %if.end14.i81, %if.else.i70.if.end16.i84_crit_edge, %while.body.i67.if.end16.i84_crit_edge
  %rb.1.i82 = phi ptr [ %141, %if.end14.i81 ], [ %136, %while.body.i67.if.end16.i84_crit_edge ], [ %138, %if.else.i70.if.end16.i84_crit_edge ]
  %tobool.not.i83 = icmp eq ptr %rb.1.i82, null
  br i1 %tobool.not.i83, label %if.end16.i84.tree_destroy.exit85_crit_edge, label %if.end16.i84.while.body.i67_crit_edge

if.end16.i84.while.body.i67_crit_edge:            ; preds = %if.end16.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i67

if.end16.i84.tree_destroy.exit85_crit_edge:       ; preds = %if.end16.i84
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit85

tree_destroy.exit85:                              ; preds = %if.end16.i84.tree_destroy.exit85_crit_edge, %tree_destroy.exit60.tree_destroy.exit85_crit_edge
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %151 = ptrtoint ptr %scrub to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %scrub, align 4
  %tobool.not30.i86 = icmp eq ptr %152, null
  br i1 %tobool.not30.i86, label %tree_destroy.exit85.tree_destroy.exit110_crit_edge, label %tree_destroy.exit85.while.body.i92_crit_edge

tree_destroy.exit85.while.body.i92_crit_edge:     ; preds = %tree_destroy.exit85
  br label %while.body.i92

tree_destroy.exit85.tree_destroy.exit110_crit_edge: ; preds = %tree_destroy.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit110

while.body.i92:                                   ; preds = %if.end16.i109.while.body.i92_crit_edge, %tree_destroy.exit85.while.body.i92_crit_edge
  %rb.031.i89 = phi ptr [ %rb.1.i107, %if.end16.i109.while.body.i92_crit_edge ], [ %152, %tree_destroy.exit85.while.body.i92_crit_edge ]
  %rb_left.i90 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i89, i32 0, i32 2
  %153 = ptrtoint ptr %rb_left.i90 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rb_left.i90, align 4
  %tobool1.not.i91 = icmp eq ptr %154, null
  br i1 %tobool1.not.i91, label %if.else.i95, label %while.body.i92.if.end16.i109_crit_edge

while.body.i92.if.end16.i109_crit_edge:           ; preds = %while.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i109

if.else.i95:                                      ; preds = %while.body.i92
  %rb_right.i93 = getelementptr inbounds %struct.rb_node, ptr %rb.031.i89, i32 0, i32 1
  %155 = ptrtoint ptr %rb_right.i93 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rb_right.i93, align 4
  %tobool3.not.i94 = icmp eq ptr %156, null
  br i1 %tobool3.not.i94, label %if.else6.i98, label %if.else.i95.if.end16.i109_crit_edge

if.else.i95.if.end16.i109_crit_edge:              ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i109

if.else6.i98:                                     ; preds = %if.else.i95
  %157 = ptrtoint ptr %rb.031.i89 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rb.031.i89, align 4
  %and.i96 = and i32 %158, -4
  %159 = inttoptr i32 %and.i96 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool7.not.i97 = icmp eq i32 %and.i96, 0
  br i1 %tobool7.not.i97, label %if.else6.i98.if.end14.i106_crit_edge, label %if.then8.i103

if.else6.i98.if.end14.i106_crit_edge:             ; preds = %if.else6.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i106

if.then8.i103:                                    ; preds = %if.else6.i98
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left9.i99 = getelementptr inbounds %struct.rb_node, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %rb_left9.i99 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rb_left9.i99, align 4
  %cmp.i100 = icmp eq ptr %161, %rb.031.i89
  %rb_right13.i101 = getelementptr inbounds %struct.rb_node, ptr %159, i32 0, i32 1
  %rb_left9.sink.i102 = select i1 %cmp.i100, ptr %rb_left9.i99, ptr %rb_right13.i101
  %162 = ptrtoint ptr %rb_left9.sink.i102 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %rb_left9.sink.i102, align 4
  br label %if.end14.i106

if.end14.i106:                                    ; preds = %if.then8.i103, %if.else6.i98.if.end14.i106_crit_edge
  %163 = ptrtoint ptr %lookuptbl.i.i16 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %lookuptbl.i.i16, align 8
  %pnum.i.i104 = getelementptr inbounds %struct.ubi_wl_entry, ptr %rb.031.i89, i32 0, i32 2
  %165 = ptrtoint ptr %pnum.i.i104 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pnum.i.i104, align 4
  %arrayidx.i.i105 = getelementptr ptr, ptr %164, i32 %166
  %167 = ptrtoint ptr %arrayidx.i.i105 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %arrayidx.i.i105, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %168 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %168, ptr noundef nonnull %rb.031.i89) #12
  br label %if.end16.i109

if.end16.i109:                                    ; preds = %if.end14.i106, %if.else.i95.if.end16.i109_crit_edge, %while.body.i92.if.end16.i109_crit_edge
  %rb.1.i107 = phi ptr [ %159, %if.end14.i106 ], [ %154, %while.body.i92.if.end16.i109_crit_edge ], [ %156, %if.else.i95.if.end16.i109_crit_edge ]
  %tobool.not.i108 = icmp eq ptr %rb.1.i107, null
  br i1 %tobool.not.i108, label %if.end16.i109.tree_destroy.exit110_crit_edge, label %if.end16.i109.while.body.i92_crit_edge

if.end16.i109.while.body.i92_crit_edge:           ; preds = %if.end16.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i92

if.end16.i109.tree_destroy.exit110_crit_edge:     ; preds = %if.end16.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_destroy.exit110

tree_destroy.exit110:                             ; preds = %if.end16.i109.tree_destroy.exit110_crit_edge, %tree_destroy.exit85.tree_destroy.exit110_crit_edge
  %169 = ptrtoint ptr %lookuptbl.i.i16 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lookuptbl.i.i16, align 8
  tail call void @kfree(ptr noundef %170) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubi_wl_get_fm_peb(ptr noundef %ubi, i32 noundef %anchor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %free_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %2 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_count, align 8
  %beb_rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 11
  %4 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %beb_rsvd_pebs, align 4
  %sub = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %anchor)
  %tobool1.not = icmp eq i32 %anchor, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call.i = tail call ptr @rb_first(ptr noundef %free) #12
  %tobool1.not24.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not24.i, label %if.then2.out_crit_edge, label %if.then2.for.body.i_crit_edge

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %e.027.i = phi ptr [ %call4.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.then2.for.body.i_crit_edge ]
  %victim.026.i = phi ptr [ %victim.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.then2.for.body.i_crit_edge ]
  %max_ec.025.i = phi i32 [ %max_ec.1.i, %for.inc.i.for.body.i_crit_edge ], [ 2147483647, %if.then2.for.body.i_crit_edge ]
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.027.i, i32 0, i32 2
  %6 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp.i = icmp slt i32 %7, 64
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.027.i, i32 0, i32 1
  %8 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %max_ec.025.i)
  %cmp2.i = icmp slt i32 %9, %max_ec.025.i
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %max_ec.025.i) #12
  %spec.select22.i = select i1 %cmp2.i, ptr %e.027.i, ptr %victim.026.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i.for.inc.i_crit_edge
  %max_ec.1.i = phi i32 [ %max_ec.025.i, %for.body.i.for.inc.i_crit_edge ], [ %10, %land.lhs.true.i ]
  %victim.1.i = phi ptr [ %victim.026.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select22.i, %land.lhs.true.i ]
  %call4.i = tail call ptr @rb_next(ptr noundef nonnull %e.027.i) #12
  %tobool1.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool1.not.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc ptr @find_mean_wl_entry(ptr noundef %ubi, ptr noundef %free)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %for.inc.i.if.end6_crit_edge
  %e.0 = phi ptr [ %call5, %if.else ], [ %victim.1.i, %for.inc.i.if.end6_crit_edge ]
  %tobool7.not = icmp eq ptr %e.0, null
  br i1 %tobool7.not, label %if.end6.out_crit_edge, label %if.end9

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef nonnull %e.0, ptr noundef %free)
  tail call void @rb_erase(ptr noundef nonnull %e.0, ptr noundef %free) #12
  %11 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %free_count, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %free_count, align 8
  br label %out

out:                                              ; preds = %if.end9, %if.end6.out_crit_edge, %if.then2.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %e.1 = phi ptr [ null, %lor.lhs.false.out_crit_edge ], [ %e.0, %if.end9 ], [ null, %if.end6.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %if.then2.out_crit_edge ]
  ret ptr %e.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_mean_wl_entry(ptr nocapture noundef readonly %ubi, ptr noundef %root) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rb_first(ptr noundef %root) #12
  %call2 = tail call ptr @rb_last(ptr noundef %root) #12
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %call2, i32 0, i32 1
  %0 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ec, align 4
  %ec5 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %ec5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ec5, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub)
  %cmp = icmp slt i32 %sub, 8192
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  %fm_disabled.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 25
  %6 = ptrtoint ptr %fm_disabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fm_disabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %fm.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 26
  %8 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fm.i, align 8
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true2.i.if.end_crit_edge

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp.i = icmp slt i32 %11, 64
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true4.i.if.end_crit_edge

land.lhs.true4.i.if.end_crit_edge:                ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @rb_next(ptr noundef nonnull %5) #12
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i17 = tail call ptr @rb_first(ptr noundef %root) #12
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i17, i32 0, i32 1
  %12 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ec.i, align 4
  %add.i = add i32 %13, 4096
  %14 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %14)
  %p.01.i = load ptr, ptr %root, align 4
  %tobool.not2.i = icmp eq ptr %p.01.i, null
  br i1 %tobool.not2.i, label %if.else.if.end_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %p.04.i = phi ptr [ %p.0.i, %while.body.i.while.body.i_crit_edge ], [ %p.01.i, %if.else.while.body.i_crit_edge ]
  %e.03.i = phi ptr [ %e.1.i, %while.body.i.while.body.i_crit_edge ], [ %call.i17, %if.else.while.body.i_crit_edge ]
  %ec4.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.04.i, i32 0, i32 1
  %15 = ptrtoint ptr %ec4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ec4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i)
  %cmp.not.i = icmp slt i32 %16, %add.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.04.i, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.04.i, i32 0, i32 1
  %e.1.i = select i1 %cmp.not.i, ptr %p.04.i, ptr %e.03.i
  %p.1.in.i = select i1 %cmp.not.i, ptr %rb_right.i, ptr %rb_left.i
  %17 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i18 = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i18, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then.i, %land.lhs.true4.i.if.end_crit_edge, %land.lhs.true2.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %e.0 = phi ptr [ %5, %land.lhs.true.i.if.end_crit_edge ], [ %5, %land.lhs.true2.i.if.end_crit_edge ], [ %call.i, %if.then.i ], [ %5, %land.lhs.true4.i.if.end_crit_edge ], [ null, %if.then.if.end_crit_edge ], [ %call.i17, %if.else.if.end_crit_edge ], [ %e.1.i, %while.body.i.if.end_crit_edge ]
  ret ptr %e.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubi_refill_pools(ptr noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fm_wl_pool = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28
  %fm_pool = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %used.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 1
  %0 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp7.i = icmp slt i32 %1, %3
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %entry.return_unused_pool_pebs.exit_crit_edge

entry.return_unused_pool_pebs.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_unused_pool_pebs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %lookuptbl.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %free.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %free_count.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ %1, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %lookuptbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lookuptbl.i, align 8
  %arrayidx.i = getelementptr [256 x i32], ptr %fm_wl_pool, i32 0, i32 %i.08.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.i, align 4
  tail call fastcc void @wl_tree_add(ptr noundef %9, ptr noundef %free.i.i) #12
  %10 = ptrtoint ptr %free_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %free_count.i.i, align 8
  %inc.i.i = add i32 %11, 1
  store i32 %inc.i.i, ptr %free_count.i.i, align 8
  %inc.i = add nsw i32 %i.08.i, 1
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.return_unused_pool_pebs.exit_crit_edge

for.body.i.return_unused_pool_pebs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_unused_pool_pebs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

return_unused_pool_pebs.exit:                     ; preds = %for.body.i.return_unused_pool_pebs.exit_crit_edge, %entry.return_unused_pool_pebs.exit_crit_edge
  %used.i108 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 1
  %14 = ptrtoint ptr %used.i108 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used.i108, align 4
  %size.i109 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 2
  %16 = ptrtoint ptr %size.i109 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp7.i110 = icmp slt i32 %15, %17
  br i1 %cmp7.i110, label %for.body.lr.ph.i114, label %return_unused_pool_pebs.exit.return_unused_pool_pebs.exit122_crit_edge

return_unused_pool_pebs.exit.return_unused_pool_pebs.exit122_crit_edge: ; preds = %return_unused_pool_pebs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_unused_pool_pebs.exit122

for.body.lr.ph.i114:                              ; preds = %return_unused_pool_pebs.exit
  %lookuptbl.i111 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %free.i.i112 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %free_count.i.i113 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  br label %for.body.i121

for.body.i121:                                    ; preds = %for.body.i121.for.body.i121_crit_edge, %for.body.lr.ph.i114
  %i.08.i115 = phi i32 [ %15, %for.body.lr.ph.i114 ], [ %inc.i119, %for.body.i121.for.body.i121_crit_edge ]
  %18 = ptrtoint ptr %lookuptbl.i111 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lookuptbl.i111, align 8
  %arrayidx.i116 = getelementptr [256 x i32], ptr %fm_pool, i32 0, i32 %i.08.i115
  %20 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i116, align 4
  %arrayidx1.i117 = getelementptr ptr, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx1.i117 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1.i117, align 4
  tail call fastcc void @wl_tree_add(ptr noundef %23, ptr noundef %free.i.i112) #12
  %24 = ptrtoint ptr %free_count.i.i113 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %free_count.i.i113, align 8
  %inc.i.i118 = add i32 %25, 1
  store i32 %inc.i.i118, ptr %free_count.i.i113, align 8
  %inc.i119 = add nsw i32 %i.08.i115, 1
  %26 = ptrtoint ptr %size.i109 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i109, align 4
  %cmp.i120 = icmp slt i32 %inc.i119, %27
  br i1 %cmp.i120, label %for.body.i121.for.body.i121_crit_edge, label %for.body.i121.return_unused_pool_pebs.exit122_crit_edge

for.body.i121.return_unused_pool_pebs.exit122_crit_edge: ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_unused_pool_pebs.exit122

for.body.i121.for.body.i121_crit_edge:            ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i121

return_unused_pool_pebs.exit122:                  ; preds = %for.body.i121.return_unused_pool_pebs.exit122_crit_edge, %return_unused_pool_pebs.exit.return_unused_pool_pebs.exit122_crit_edge
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %size.i, align 4
  %29 = ptrtoint ptr %size.i109 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %size.i109, align 4
  %fm_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 36
  %30 = ptrtoint ptr %fm_anchor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fm_anchor, align 8
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %return_unused_pool_pebs.exit122.if.end_crit_edge, label %if.then

return_unused_pool_pebs.exit122.if.end_crit_edge: ; preds = %return_unused_pool_pebs.exit122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %return_unused_pool_pebs.exit122
  call void @__sanitizer_cov_trace_pc() #14
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %31, ptr noundef %free)
  %free_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %32 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %free_count, align 8
  %inc = add i32 %33, 1
  store i32 %inc, ptr %free_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %return_unused_pool_pebs.exit122.if.end_crit_edge
  %fm_next_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 37
  %34 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fm_next_anchor, align 4
  %tobool3.not = icmp eq ptr %35, null
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %free6 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %35, ptr noundef %free6)
  %free_count7 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %36 = ptrtoint ptr %free_count7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %free_count7, align 8
  %inc8 = add i32 %37, 1
  store i32 %inc8, ptr %free_count7, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %call = tail call ptr @ubi_wl_get_fm_peb(ptr noundef %ubi, i32 noundef 1)
  %38 = ptrtoint ptr %fm_anchor to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call, ptr %fm_anchor, align 8
  %call11 = tail call ptr @ubi_wl_get_fm_peb(ptr noundef %ubi, i32 noundef 1)
  %39 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call11, ptr %fm_next_anchor, align 4
  %free15 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %free_count35 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %max_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 3
  %max_size29 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 3
  %beb_rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %if.end53.for.cond_crit_edge, %if.end9
  %40 = ptrtoint ptr %size.i109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i109, align 4
  %42 = ptrtoint ptr %max_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp = icmp slt i32 %41, %43
  br i1 %cmp, label %if.then14, label %for.cond.if.end27_crit_edge

for.cond.if.end27_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then14:                                        ; preds = %for.cond
  %44 = ptrtoint ptr %free15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %free15, align 4
  %tobool16.not = icmp eq ptr %45, null
  br i1 %tobool16.not, label %if.then14.for.end_crit_edge, label %if.end18

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end18:                                         ; preds = %if.then14
  %call19 = tail call fastcc ptr @wl_get_wle(ptr noundef %ubi)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.for.end_crit_edge, label %if.end22

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %call19, i32 0, i32 2
  %46 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pnum, align 4
  %48 = ptrtoint ptr %size.i109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i109, align 4
  %arrayidx = getelementptr [256 x i32], ptr %fm_pool, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %arrayidx, align 4
  %51 = load i32, ptr %size.i109, align 4
  %inc25 = add i32 %51, 1
  store i32 %inc25, ptr %size.i109, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end22, %for.cond.if.end27_crit_edge
  %enough.0 = phi i32 [ 0, %if.end22 ], [ 1, %for.cond.if.end27_crit_edge ]
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i, align 4
  %54 = ptrtoint ptr %max_size29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_size29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp30 = icmp slt i32 %53, %55
  br i1 %cmp30, label %if.then31, label %if.else51

if.then31:                                        ; preds = %if.end27
  %56 = ptrtoint ptr %free15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %free15, align 4
  %tobool34.not = icmp eq ptr %57, null
  br i1 %tobool34.not, label %if.then31.for.end_crit_edge, label %lor.lhs.false

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false:                                    ; preds = %if.then31
  %58 = ptrtoint ptr %free_count35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %free_count35, align 8
  %60 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %beb_rsvd_pebs, align 4
  %sub = sub i32 %59, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp36 = icmp slt i32 %sub, 5
  br i1 %cmp36, label %lor.lhs.false.for.end_crit_edge, label %if.end38

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end38:                                         ; preds = %lor.lhs.false
  %call.i = tail call ptr @rb_first(ptr noundef %free15) #12
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %call.i, i32 0, i32 1
  %62 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ec.i, align 4
  %add.i = add i32 %63, 8192
  %64 = ptrtoint ptr %free15 to i32
  call void @__asan_load4_noabort(i32 %64)
  %p.01.i = load ptr, ptr %free15, align 4
  %tobool.not2.i = icmp eq ptr %p.01.i, null
  br i1 %tobool.not2.i, label %if.end38.find_wl_entry.exit_crit_edge, label %if.end38.while.body.i_crit_edge

if.end38.while.body.i_crit_edge:                  ; preds = %if.end38
  br label %while.body.i

if.end38.find_wl_entry.exit_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_wl_entry.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end38.while.body.i_crit_edge
  %p.04.i = phi ptr [ %p.0.i, %while.body.i.while.body.i_crit_edge ], [ %p.01.i, %if.end38.while.body.i_crit_edge ]
  %e.03.i = phi ptr [ %e.1.i, %while.body.i.while.body.i_crit_edge ], [ %call.i, %if.end38.while.body.i_crit_edge ]
  %ec4.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %p.04.i, i32 0, i32 1
  %65 = ptrtoint ptr %ec4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ec4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %add.i)
  %cmp.not.i = icmp slt i32 %66, %add.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %p.04.i, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %p.04.i, i32 0, i32 1
  %e.1.i = select i1 %cmp.not.i, ptr %p.04.i, ptr %e.03.i
  %p.1.in.i = select i1 %cmp.not.i, ptr %rb_right.i, ptr %rb_left.i
  %67 = ptrtoint ptr %p.1.in.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %p.0.i = load ptr, ptr %p.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool.not.i, label %while.body.i.find_wl_entry.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.find_wl_entry.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_wl_entry.exit

find_wl_entry.exit:                               ; preds = %while.body.i.find_wl_entry.exit_crit_edge, %if.end38.find_wl_entry.exit_crit_edge
  %e.0.lcssa.i = phi ptr [ %call.i, %if.end38.find_wl_entry.exit_crit_edge ], [ %e.1.i, %while.body.i.find_wl_entry.exit_crit_edge ]
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef %e.0.lcssa.i, ptr noundef %free15)
  tail call void @rb_erase(ptr noundef %e.0.lcssa.i, ptr noundef %free15) #12
  %68 = ptrtoint ptr %free_count35 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %free_count35, align 8
  %dec = add i32 %69, -1
  store i32 %dec, ptr %free_count35, align 8
  %pnum45 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.0.lcssa.i, i32 0, i32 2
  %70 = ptrtoint ptr %pnum45 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pnum45, align 4
  %72 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size.i, align 4
  %arrayidx48 = getelementptr [256 x i32], ptr %fm_wl_pool, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %71, ptr %arrayidx48, align 4
  %75 = load i32, ptr %size.i, align 4
  %inc50 = add i32 %75, 1
  store i32 %inc50, ptr %size.i, align 4
  br label %if.end53

if.else51:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %inc52 = add nuw nsw i32 %enough.0, 1
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %find_wl_entry.exit
  %enough.1 = phi i32 [ %enough.0, %find_wl_entry.exit ], [ %inc52, %if.else51 ]
  %cmp54 = icmp eq i32 %enough.1, 2
  br i1 %cmp54, label %if.end53.for.end_crit_edge, label %if.end53.for.cond_crit_edge

if.end53.for.cond_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end53.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.then31.for.end_crit_edge, %if.end18.for.end_crit_edge, %if.then14.for.end_crit_edge
  %76 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %used.i, align 4
  %77 = ptrtoint ptr %used.i108 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %used.i108, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wl_get_wle(ptr noundef %ubi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %call = tail call fastcc ptr @find_mean_wl_entry(ptr noundef %ubi, ptr noundef %free)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.77) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef nonnull %call, ptr noundef %free)
  tail call void @rb_erase(ptr noundef nonnull %call, ptr noundef %free) #12
  %free_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %0 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_count, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %free_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wl_get_wle.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wl_get_wle, %if.then8)) #12
          to label %cleanup [label %if.then8], !srcloc !306

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pnum, align 4
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ec, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wl_get_wle.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.79, i32 noundef %7, i32 noundef %9, i32 noundef %11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %if.then
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_get_peb(ptr noundef %ubi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fm_pool = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 29
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 1
  %size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 27, i32 2
  %used1 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 1
  %size2 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 2
  %works_count.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 55
  %free.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  br label %again

again:                                            ; preds = %produce_free_peb.exit.again_crit_edge, %entry
  %attempts.0 = phi i32 [ 0, %entry ], [ %inc, %produce_free_peb.exit.again_crit_edge ]
  tail call void @down_read(ptr noundef %fm_eba_sem) #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used, align 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %again.if.then_crit_edge, label %lor.lhs.false

again.if.then_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %again
  %4 = ptrtoint ptr %used1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used1, align 4
  %6 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %again.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  %call = tail call i32 @ubi_update_fastmap(ptr noundef %ubi) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.43, i32 noundef %call) #12
  tail call void @down_read(ptr noundef %fm_eba_sem) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @down_read(ptr noundef %fm_eba_sem) #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end, %lor.lhs.false.if.end10_crit_edge
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13 = icmp eq i32 %9, %11
  br i1 %cmp13, label %if.then14, label %do.body

if.then14:                                        ; preds = %if.end10
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %inc = add nuw nsw i32 %attempts.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp16 = icmp eq i32 %inc, 10
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i.while.cond.i_crit_edge, %if.end18
  %12 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %land.rhs.i, label %while.cond.i.produce_free_peb.exit_crit_edge

while.cond.i.produce_free_peb.exit_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %produce_free_peb.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %14 = ptrtoint ptr %works_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %works_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %land.rhs.i.produce_free_peb.exit_crit_edge, label %do.body.i

land.rhs.i.produce_free_peb.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %produce_free_peb.exit

do.body.i:                                        ; preds = %land.rhs.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @produce_free_peb.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_get_peb, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !306

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @produce_free_peb.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.81, i32 noundef %21) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %call6.i = tail call fastcc i32 @do_work(ptr noundef %ubi) #12
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.end.i.while.cond.i_crit_edge, label %do.end.i.produce_free_peb.exit_crit_edge

do.end.i.produce_free_peb.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %produce_free_peb.exit

do.end.i.while.cond.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

produce_free_peb.exit:                            ; preds = %do.end.i.produce_free_peb.exit_crit_edge, %land.rhs.i.produce_free_peb.exit_crit_edge, %while.cond.i.produce_free_peb.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %do.end.i.produce_free_peb.exit_crit_edge ], [ 0, %while.cond.i.produce_free_peb.exit_crit_edge ], [ 0, %land.rhs.i.produce_free_peb.exit_crit_edge ]
  %cmp21 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp21, label %if.then22, label %produce_free_peb.exit.again_crit_edge

produce_free_peb.exit.again_crit_edge:            ; preds = %produce_free_peb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %again

if.then22:                                        ; preds = %produce_free_peb.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @down_read(ptr noundef %fm_eba_sem) #12
  br label %cleanup

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp28.not = icmp slt i32 %9, %11
  br i1 %cmp28.not, label %do.body.do.end38_crit_edge, label %do.end, !prof !308

do.body.do.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid, align 8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45, i32 noundef 248, i32 noundef %27) #15
  tail call void @dump_stack() #15
  br label %do.end38

do.end38:                                         ; preds = %do.end, %do.body.do.end38_crit_edge
  %28 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used, align 4
  %inc40 = add i32 %29, 1
  store i32 %inc40, ptr %used, align 4
  %arrayidx = getelementptr [256 x i32], ptr %fm_pool, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %32 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lookuptbl, align 8
  %arrayidx41 = getelementptr ptr, ptr %33, i32 %31
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx41, align 4
  tail call fastcc void @prot_queue_add(ptr noundef %ubi, ptr noundef %35)
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.then22, %if.then17, %if.then6
  %retval.0 = phi i32 [ -28, %if.then6 ], [ -28, %if.then17 ], [ %retval.0.i, %if.then22 ], [ %31, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_update_fastmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prot_queue_add(ptr noundef %ubi, ptr noundef %e) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pq_head = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 45
  %0 = ptrtoint ptr %pq_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pq_head, align 8
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %spec.store.select = select i1 %cmp, i32 9, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %spec.store.select)
  %cmp2 = icmp ugt i32 %spec.store.select, 9
  br i1 %cmp2, label %do.end, label %entry.do.end10_crit_edge, !prof !307

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.82, i32 noundef 304, i32 noundef %7) #15
  tail call void @dump_stack() #15
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 %spec.store.select
  %prev.i = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 %spec.store.select, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %e, ptr noundef %9, ptr noundef %arrayidx) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end10.list_add_tail.exit_crit_edge

do.end10.list_add_tail.exit_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %e, ptr %prev.i, align 4
  %11 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %e, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %e, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %e, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end10.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prot_queue_add.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prot_queue_add, %if.then21)) #12
          to label %do.end27 [label %if.then21], !srcloc !306

if.then21:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i34 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i34 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task23, align 8
  %pid24 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid24, align 8
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %20 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pnum, align 4
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  %22 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ec, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prot_queue_add.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.83, i32 noundef %19, i32 noundef %21, i32 noundef %23) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %list_add_tail.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wear_leveling_worker(ptr noundef %ubi, ptr noundef %wrk, i32 noundef %shutdown) #0 align 64 {
entry:
  %wl_wrk.i = alloca %struct.ubi_work, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %wrk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shutdown)
  %tobool.not = icmp eq i32 %shutdown, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 8) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %vid_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 73
  %1 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vid_hdr_alsize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3136) #17
  %tobool2.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end3

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  %3 = ptrtoint ptr %vid_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vid_hdr_alsize.i, align 4
  %5 = call ptr @memset(ptr %call9.i.i, i32 0, i32 %4)
  %buffer.i.i = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %buffer.i.i, align 4
  %vid_hdr_shift.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 76
  %7 = ptrtoint ptr %vid_hdr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vid_hdr_shift.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %8
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i, align 8
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 29
  tail call void @down_read(ptr noundef %fm_eba_sem) #12
  %move_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %move_mutex, i32 noundef 0) #12
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %move_from = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 51
  %10 = ptrtoint ptr %move_from to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %move_from, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.rhs, label %if.end3.do.end_crit_edge, !prof !308

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs:                                         ; preds = %if.end3
  %move_to = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 52
  %12 = ptrtoint ptr %move_to to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %move_to, align 8
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %land.rhs.do.body18_crit_edge, label %land.rhs.do.end_crit_edge, !prof !308

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.rhs.do.body18_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %if.end3.do.end_crit_edge
  %14 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.84, i32 noundef 670, i32 noundef %19) #15
  tail call void @dump_stack() #15
  br label %do.body18

do.body18:                                        ; preds = %do.end, %land.rhs.do.body18_crit_edge
  %move_to_put = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 53
  %20 = ptrtoint ptr %move_to_put to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %move_to_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool19.not = icmp eq i32 %21, 0
  br i1 %tobool19.not, label %do.body18.do.end41_crit_edge, label %do.end33, !prof !308

do.body18.do.end41_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

do.end33:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i840 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i840 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task36, align 8
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid37, align 8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.84, i32 noundef 671, i32 noundef %27) #15
  tail call void @dump_stack() #15
  br label %do.end41

do.end41:                                         ; preds = %do.end33, %do.body18.do.end41_crit_edge
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  %28 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %free, align 4
  %tobool42.not = icmp eq ptr %29, null
  br i1 %tobool42.not, label %do.end41.do.body48_crit_edge, label %lor.lhs.false

do.end41.do.body48_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

lor.lhs.false:                                    ; preds = %do.end41
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %30 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %used, align 4
  %tobool44.not = icmp eq ptr %31, null
  br i1 %tobool44.not, label %land.lhs.true, label %lor.lhs.false.if.end75_crit_edge

lor.lhs.false.if.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

land.lhs.true:                                    ; preds = %lor.lhs.false
  %scrub = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %32 = ptrtoint ptr %scrub to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %scrub, align 4
  %tobool46.not = icmp eq ptr %33, null
  br i1 %tobool46.not, label %land.lhs.true.do.body48_crit_edge, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

land.lhs.true.do.body48_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

do.body48:                                        ; preds = %land.lhs.true.do.body48_crit_edge, %do.end41.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then58)) #12
          to label %ubi_free_vid_buf.exit880 [label %if.then58], !srcloc !306

if.then58:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %34 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i841 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i841 to ptr
  %task60 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task60, align 8
  %pid61 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid61, align 8
  %40 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %free, align 4
  %tobool64.not = icmp eq ptr %41, null
  %lnot.ext66 = zext i1 %tobool64.not to i32
  %used67 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  %42 = ptrtoint ptr %used67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %used67, align 4
  %tobool69.not = icmp eq ptr %43, null
  %lnot.ext71 = zext i1 %tobool69.not to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.87, i32 noundef %39, i32 noundef %lnot.ext66, i32 noundef %lnot.ext71) #12
  br label %ubi_free_vid_buf.exit880

if.end75:                                         ; preds = %land.lhs.true.if.end75_crit_edge, %lor.lhs.false.if.end75_crit_edge
  %call.i = tail call ptr @rb_first(ptr noundef %used) #12
  %tobool1.not24.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not24.i, label %if.end88.thread, label %if.end75.for.body.i_crit_edge

if.end75.for.body.i_crit_edge:                    ; preds = %if.end75
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end75.for.body.i_crit_edge
  %e.027.i = phi ptr [ %call4.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end75.for.body.i_crit_edge ]
  %victim.026.i = phi ptr [ %victim.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end75.for.body.i_crit_edge ]
  %max_ec.025.i = phi i32 [ %max_ec.1.i, %for.inc.i.for.body.i_crit_edge ], [ 2147483647, %if.end75.for.body.i_crit_edge ]
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.027.i, i32 0, i32 2
  %44 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %45)
  %cmp.i = icmp slt i32 %45, 64
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %ec.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.027.i, i32 0, i32 1
  %46 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %max_ec.025.i)
  %cmp2.i = icmp slt i32 %47, %max_ec.025.i
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 %max_ec.025.i) #12
  %spec.select22.i = select i1 %cmp2.i, ptr %e.027.i, ptr %victim.026.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i.for.inc.i_crit_edge
  %max_ec.1.i = phi i32 [ %max_ec.025.i, %for.body.i.for.inc.i_crit_edge ], [ %48, %land.lhs.true.i ]
  %victim.1.i = phi ptr [ %victim.026.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select22.i, %land.lhs.true.i ]
  %call4.i = tail call ptr @rb_next(ptr noundef nonnull %e.027.i) #12
  %tobool1.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool1.not.i, label %find_anchor_wl_entry.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

find_anchor_wl_entry.exit:                        ; preds = %for.inc.i
  %tobool78.not = icmp eq ptr %victim.1.i, null
  br i1 %tobool78.not, label %if.end88.thread990, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %find_anchor_wl_entry.exit
  %fm_next_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 37
  %49 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fm_next_anchor, align 4
  %tobool80.not = icmp eq ptr %50, null
  br i1 %tobool80.not, label %land.lhs.true79.if.end88_crit_edge, label %land.lhs.true81

land.lhs.true79.if.end88_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

land.lhs.true81:                                  ; preds = %land.lhs.true79
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ec, align 4
  %ec83 = getelementptr inbounds %struct.ubi_wl_entry, ptr %victim.1.i, i32 0, i32 1
  %53 = ptrtoint ptr %ec83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ec83, align 4
  %sub = sub i32 %52, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub)
  %cmp = icmp sgt i32 %sub, 4095
  br i1 %cmp, label %if.then84, label %land.lhs.true81.if.end88_crit_edge

land.lhs.true81.if.end88_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then84:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  %fm_do_produce_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 38
  %55 = ptrtoint ptr %fm_do_produce_anchor to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %fm_do_produce_anchor, align 8
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %50, ptr noundef %free)
  %56 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %fm_next_anchor, align 4
  %free_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %57 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %free_count, align 8
  %inc = add i32 %58, 1
  store i32 %inc, ptr %free_count, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %land.lhs.true81.if.end88_crit_edge, %land.lhs.true79.if.end88_crit_edge
  %fm_do_produce_anchor89 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 38
  %59 = ptrtoint ptr %fm_do_produce_anchor89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fm_do_produce_anchor89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool90.not = icmp eq i32 %60, 0
  br i1 %tobool90.not, label %if.end88.if.else_crit_edge, label %if.end94.critedge

if.end88.if.else_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end88.thread990:                               ; preds = %find_anchor_wl_entry.exit
  %fm_do_produce_anchor89991 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 38
  %61 = ptrtoint ptr %fm_do_produce_anchor89991 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fm_do_produce_anchor89991, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool90.not992 = icmp eq i32 %62, 0
  br i1 %tobool90.not992, label %if.end88.thread990.if.else_crit_edge, label %if.end88.thread990.ubi_free_vid_buf.exit880_crit_edge

if.end88.thread990.ubi_free_vid_buf.exit880_crit_edge: ; preds = %if.end88.thread990
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit880

if.end88.thread990.if.else_crit_edge:             ; preds = %if.end88.thread990
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end88.thread:                                  ; preds = %if.end75
  %fm_do_produce_anchor89895 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 38
  %63 = ptrtoint ptr %fm_do_produce_anchor89895 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fm_do_produce_anchor89895, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool90.not896 = icmp eq i32 %64, 0
  br i1 %tobool90.not896, label %if.end88.thread.if.else_crit_edge, label %if.end88.thread.ubi_free_vid_buf.exit880_crit_edge

if.end88.thread.ubi_free_vid_buf.exit880_crit_edge: ; preds = %if.end88.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit880

if.end88.thread.if.else_crit_edge:                ; preds = %if.end88.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end94.critedge:                                ; preds = %if.end88
  %call95 = tail call fastcc ptr @get_peb_for_wl(ptr noundef %ubi)
  %tobool96.not = icmp eq ptr %call95, null
  br i1 %tobool96.not, label %if.end94.critedge.ubi_free_vid_buf.exit880_crit_edge, label %if.end98

if.end94.critedge.ubi_free_vid_buf.exit880_crit_edge: ; preds = %if.end94.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit880

if.end98:                                         ; preds = %if.end94.critedge
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef nonnull %victim.1.i, ptr noundef %used)
  tail call void @rb_erase(ptr noundef nonnull %victim.1.i, ptr noundef %used) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then114)) #12
          to label %do.end121 [label %if.then114], !srcloc !306

if.then114:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %65 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i842 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i842 to ptr
  %task116 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task116 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task116, align 8
  %pid117 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 68
  %69 = ptrtoint ptr %pid117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pid117, align 8
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %victim.1.i, i32 0, i32 2
  %71 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pnum, align 4
  %pnum118 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call95, i32 0, i32 2
  %73 = ptrtoint ptr %pnum118 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pnum118, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.88, i32 noundef %70, i32 noundef %72, i32 noundef %74) #12
  br label %do.end121

do.end121:                                        ; preds = %if.then114, %if.end98
  %75 = ptrtoint ptr %fm_do_produce_anchor89 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %fm_do_produce_anchor89, align 8
  br label %if.end227

if.else:                                          ; preds = %if.end88.thread.if.else_crit_edge, %if.end88.thread990.if.else_crit_edge, %if.end88.if.else_crit_edge
  %scrub123 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  %76 = ptrtoint ptr %scrub123 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %scrub123, align 4
  %tobool125.not = icmp eq ptr %77, null
  br i1 %tobool125.not, label %if.then126, label %if.else191

if.then126:                                       ; preds = %if.else
  %call128 = tail call ptr @rb_first(ptr noundef %used) #12
  %call130 = tail call fastcc ptr @get_peb_for_wl(ptr noundef %ubi)
  %tobool131.not = icmp eq ptr %call130, null
  br i1 %tobool131.not, label %if.then126.ubi_free_vid_buf.exit880_crit_edge, label %if.end133

if.then126.ubi_free_vid_buf.exit880_crit_edge:    ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit880

if.end133:                                        ; preds = %if.then126
  %ec134 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call130, i32 0, i32 1
  %78 = ptrtoint ptr %ec134 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ec134, align 4
  %ec135 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call128, i32 0, i32 1
  %80 = ptrtoint ptr %ec135 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ec135, align 4
  %sub136 = sub i32 %79, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub136)
  %cmp137 = icmp sgt i32 %sub136, 4095
  br i1 %cmp137, label %if.end163, label %do.body139

do.body139:                                       ; preds = %if.end133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then151)) #12
          to label %do.end159 [label %if.then151], !srcloc !306

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #14
  %82 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i843 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i843 to ptr
  %task153 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task153 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task153, align 8
  %pid154 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 68
  %86 = ptrtoint ptr %pid154 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pid154, align 8
  %88 = ptrtoint ptr %ec135 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ec135, align 4
  %90 = ptrtoint ptr %ec134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ec134, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.89, i32 noundef %87, i32 noundef %89, i32 noundef %91) #12
  br label %do.end159

do.end159:                                        ; preds = %if.then151, %do.body139
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %call130, ptr noundef %free)
  %free_count161 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %92 = ptrtoint ptr %free_count161 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %free_count161, align 8
  %inc162 = add i32 %93, 1
  store i32 %inc162, ptr %free_count161, align 8
  br label %ubi_free_vid_buf.exit880

if.end163:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef %call128, ptr noundef %used)
  tail call void @rb_erase(ptr noundef %call128, ptr noundef %used) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then180)) #12
          to label %if.end227 [label %if.then180], !srcloc !306

if.then180:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  %94 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i844 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i844 to ptr
  %task182 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task182 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task182, align 8
  %pid183 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 68
  %98 = ptrtoint ptr %pid183 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pid183, align 8
  %pnum184 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call128, i32 0, i32 2
  %100 = ptrtoint ptr %pnum184 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pnum184, align 4
  %102 = ptrtoint ptr %ec135 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ec135, align 4
  %pnum186 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call130, i32 0, i32 2
  %104 = ptrtoint ptr %pnum186 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pnum186, align 4
  %106 = ptrtoint ptr %ec134 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ec134, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.90, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107) #12
  br label %if.end227

if.else191:                                       ; preds = %if.else
  %call194 = tail call ptr @rb_first(ptr noundef %scrub123) #12
  %call197 = tail call fastcc ptr @get_peb_for_wl(ptr noundef %ubi)
  %tobool198.not = icmp eq ptr %call197, null
  br i1 %tobool198.not, label %if.else191.ubi_free_vid_buf.exit880_crit_edge, label %if.end200

if.else191.ubi_free_vid_buf.exit880_crit_edge:    ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit880

if.end200:                                        ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %ubi, ptr noundef %call194, ptr noundef %scrub123)
  tail call void @rb_erase(ptr noundef %call194, ptr noundef %scrub123) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then217)) #12
          to label %if.end227 [label %if.then217], !srcloc !306

if.then217:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  %108 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i845 = and i32 %108, -16384
  %109 = inttoptr i32 %and.i845 to ptr
  %task219 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %task219 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task219, align 8
  %pid220 = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 68
  %112 = ptrtoint ptr %pid220 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pid220, align 8
  %pnum221 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call194, i32 0, i32 2
  %114 = ptrtoint ptr %pnum221 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pnum221, align 4
  %pnum222 = getelementptr inbounds %struct.ubi_wl_entry, ptr %call197, i32 0, i32 2
  %116 = ptrtoint ptr %pnum222 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %pnum222, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.91, i32 noundef %113, i32 noundef %115, i32 noundef %117) #12
  br label %if.end227

if.end227:                                        ; preds = %if.then217, %if.end200, %if.then180, %if.end163, %do.end121
  %e2.0 = phi ptr [ %call95, %do.end121 ], [ %call197, %if.then217 ], [ %call130, %if.then180 ], [ %call130, %if.end163 ], [ %call197, %if.end200 ]
  %e1.0 = phi ptr [ %victim.1.i, %do.end121 ], [ %call194, %if.then217 ], [ %call128, %if.then180 ], [ %call128, %if.end163 ], [ %call194, %if.end200 ]
  %tobool354.not = phi i1 [ true, %do.end121 ], [ false, %if.then217 ], [ true, %if.then180 ], [ true, %if.end163 ], [ false, %if.end200 ]
  %scrubbing.0 = phi i32 [ 0, %do.end121 ], [ 1, %if.then217 ], [ 0, %if.then180 ], [ 0, %if.end163 ], [ 1, %if.end200 ]
  %118 = ptrtoint ptr %move_from to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %e1.0, ptr %move_from, align 4
  %move_to229 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 52
  %119 = ptrtoint ptr %move_to229 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %e2.0, ptr %move_to229, align 8
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %pnum231 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e1.0, i32 0, i32 2
  %120 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pnum231, align 4
  %call232 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %ubi, i32 noundef %121, ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #12
  %122 = zext i32 %call232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call232, label %if.else282 [
    i32 0, label %if.end227.if.end311_crit_edge
    i32 5, label %if.end227.if.end311_crit_edge997
    i32 1, label %do.body239
    i32 2, label %do.body262
  ]

if.end227.if.end311_crit_edge997:                 ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end311

if.end227.if.end311_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end311

do.body239:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then251)) #12
          to label %out_not_moved [label %if.then251], !srcloc !306

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #14
  %123 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i846 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i846 to ptr
  %task253 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task253 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task253, align 8
  %pid254 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 68
  %127 = ptrtoint ptr %pid254 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pid254, align 8
  %129 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pnum231, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.92, i32 noundef %128, i32 noundef %130) #12
  br label %do.body448

do.body262:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then274)) #12
          to label %out_not_moved [label %if.then274], !srcloc !306

if.then274:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #14
  %131 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i847 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i847 to ptr
  %task276 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %task276 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %task276, align 8
  %pid277 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 68
  %135 = ptrtoint ptr %pid277 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %pid277, align 8
  %137 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %pnum231, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.93, i32 noundef %136, i32 noundef %138) #12
  br label %do.body448

if.else282:                                       ; preds = %if.end227
  %fast_attach = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 35
  %139 = ptrtoint ptr %fast_attach to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fast_attach, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool283.not = icmp ne i32 %140, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call232)
  %cmp285 = icmp eq i32 %call232, 4
  %or.cond = select i1 %tobool283.not, i1 %cmp285, i1 false
  br i1 %or.cond, label %do.body287, label %out_error.thread

do.body287:                                       ; preds = %if.else282
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then299)) #12
          to label %out_not_moved [label %if.then299], !srcloc !306

if.then299:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #14
  %141 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i848 = and i32 %141, -16384
  %142 = inttoptr i32 %and.i848 to ptr
  %task301 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %task301 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %task301, align 8
  %pid302 = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 68
  %145 = ptrtoint ptr %pid302 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %pid302, align 8
  %147 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pnum231, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.94, i32 noundef %146, i32 noundef %148) #12
  br label %do.body448

out_error.thread:                                 ; preds = %if.else282
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pnum231, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.95, i32 noundef %call232, i32 noundef %150) #12
  br label %if.else547

if.end311:                                        ; preds = %if.end227.if.end311_crit_edge, %if.end227.if.end311_crit_edge997
  %vol_id312 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %151 = ptrtoint ptr %vol_id312 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %vol_id312, align 1
  %lnum313 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %153 = ptrtoint ptr %lnum313 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %lnum313, align 1
  %155 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pnum231, align 4
  %pnum315 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e2.0, i32 0, i32 2
  %157 = ptrtoint ptr %pnum315 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %pnum315, align 4
  %call316 = tail call i32 @ubi_eba_copy_leb(ptr noundef %ubi, i32 noundef %156, i32 noundef %158, ptr noundef nonnull %call7.i.i.i) #12
  %159 = zext i32 %call316 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call316, label %if.end338 [
    i32 0, label %if.end311.if.end353_crit_edge
    i32 1, label %if.end311.out_not_moved_crit_edge
    i32 6, label %if.then323
    i32 5, label %if.end311.if.then330_crit_edge
    i32 4, label %if.end311.if.then330_crit_edge998
    i32 3, label %if.end311.if.then330_crit_edge999
    i32 2, label %if.then333
  ]

if.end311.if.then330_crit_edge999:                ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then330

if.end311.if.then330_crit_edge998:                ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then330

if.end311.if.then330_crit_edge:                   ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then330

if.end311.out_not_moved_crit_edge:                ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_not_moved

if.end311.if.end353_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end353

if.then323:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_not_moved

if.then330:                                       ; preds = %if.end311.if.then330_crit_edge, %if.end311.if.then330_crit_edge998, %if.end311.if.then330_crit_edge999
  br label %out_not_moved

if.then333:                                       ; preds = %if.end311
  %erroneous_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 65
  %160 = ptrtoint ptr %erroneous_peb_count to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %erroneous_peb_count, align 4
  %max_erroneous = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 66
  %162 = ptrtoint ptr %max_erroneous to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %max_erroneous, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %163)
  %cmp334 = icmp sgt i32 %161, %163
  br i1 %cmp334, label %if.then335, label %if.then333.out_not_moved_crit_edge

if.then333.out_not_moved_crit_edge:               ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_not_moved

if.then335:                                       ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.96, i32 noundef %161) #12
  br label %out_error

if.end338:                                        ; preds = %if.end311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %cmp339 = icmp slt i32 %call316, 0
  br i1 %cmp339, label %if.end338.out_error_crit_edge, label %do.end345

if.end338.out_error_crit_edge:                    ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_error

do.end345:                                        ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #14
  %164 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i849 = and i32 %164, -16384
  %165 = inttoptr i32 %and.i849 to ptr
  %task348 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %task348 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %task348, align 8
  %pid349 = getelementptr inbounds %struct.task_struct, ptr %167, i32 0, i32 68
  %168 = ptrtoint ptr %pid349 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pid349, align 8
  %call350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.84, i32 noundef 869, i32 noundef %169) #15
  tail call void @dump_stack() #15
  br label %if.end353

if.end353:                                        ; preds = %do.end345, %if.end311.if.end353_crit_edge
  br i1 %tobool354.not, label %if.end353.ubi_free_vid_buf.exit_crit_edge, label %if.then355

if.end353.ubi_free_vid_buf.exit_crit_edge:        ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit

if.then355:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #14
  %170 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pnum231, align 4
  %172 = ptrtoint ptr %pnum315 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pnum315, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.99, i32 noundef %171, i32 noundef %152, i32 noundef %154, i32 noundef %173) #12
  br label %ubi_free_vid_buf.exit

ubi_free_vid_buf.exit:                            ; preds = %if.then355, %if.end353.ubi_free_vid_buf.exit_crit_edge
  %174 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %175) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %176 = ptrtoint ptr %move_to_put to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %move_to_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool361.not = icmp eq i32 %177, 0
  br i1 %tobool361.not, label %if.then362, label %ubi_free_vid_buf.exit.if.end364_crit_edge

ubi_free_vid_buf.exit.if.end364_crit_edge:        ; preds = %ubi_free_vid_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end364

if.then362:                                       ; preds = %ubi_free_vid_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %e2.0, ptr noundef %used)
  br label %if.end364

if.end364:                                        ; preds = %if.then362, %ubi_free_vid_buf.exit.if.end364_crit_edge
  %e2.1 = phi ptr [ %e2.0, %ubi_free_vid_buf.exit.if.end364_crit_edge ], [ null, %if.then362 ]
  %178 = ptrtoint ptr %move_to229 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %move_to229, align 8
  %179 = ptrtoint ptr %move_from to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %move_from, align 4
  %wl_scheduled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 49
  %180 = ptrtoint ptr %wl_scheduled to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %wl_scheduled, align 4
  %181 = ptrtoint ptr %move_to_put to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %move_to_put, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %call369 = tail call fastcc i32 @do_sync_erase(ptr noundef %ubi, ptr noundef %e1.0, i32 noundef %152, i32 noundef %154, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %tobool370.not = icmp eq i32 %call369, 0
  %tobool376.not = icmp eq ptr %e2.1, null
  br i1 %tobool370.not, label %if.end375, label %if.then371

if.then371:                                       ; preds = %if.end364
  br i1 %tobool376.not, label %if.then371.out_ro_crit_edge, label %if.then373

if.then371.out_ro_crit_edge:                      ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ro

if.then373:                                       ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #14
  %lookuptbl.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  br label %out_ro.sink.split

if.end375:                                        ; preds = %if.end364
  br i1 %tobool376.not, label %if.end375.do.body403_crit_edge, label %do.body378

if.end375.do.body403_crit_edge:                   ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body403

do.body378:                                       ; preds = %if.end375
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then390)) #12
          to label %do.end397 [label %if.then390], !srcloc !306

if.then390:                                       ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #14
  %182 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i853 = and i32 %182, -16384
  %183 = inttoptr i32 %and.i853 to ptr
  %task392 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %task392 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %task392, align 8
  %pid393 = getelementptr inbounds %struct.task_struct, ptr %185, i32 0, i32 68
  %186 = ptrtoint ptr %pid393 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %pid393, align 8
  %pnum394 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e2.1, i32 0, i32 2
  %188 = ptrtoint ptr %pnum394 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %pnum394, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.100, i32 noundef %187, i32 noundef %189, i32 noundef %152, i32 noundef %154) #12
  br label %do.end397

do.end397:                                        ; preds = %if.then390, %do.body378
  %call398 = tail call fastcc i32 @do_sync_erase(ptr noundef %ubi, ptr noundef nonnull %e2.1, i32 noundef %152, i32 noundef %154, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %do.end397.do.body403_crit_edge, label %do.end397.out_ro_crit_edge

do.end397.out_ro_crit_edge:                       ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ro

do.end397.do.body403_crit_edge:                   ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body403

do.body403:                                       ; preds = %do.end397.do.body403_crit_edge, %if.end375.do.body403_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then415)) #12
          to label %do.end421 [label %if.then415], !srcloc !306

if.then415:                                       ; preds = %do.body403
  call void @__sanitizer_cov_trace_pc() #14
  %190 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i854 = and i32 %190, -16384
  %191 = inttoptr i32 %and.i854 to ptr
  %task417 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %task417 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %task417, align 8
  %pid418 = getelementptr inbounds %struct.task_struct, ptr %193, i32 0, i32 68
  %194 = ptrtoint ptr %pid418 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pid418, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.101, i32 noundef %195) #12
  br label %do.end421

do.end421:                                        ; preds = %if.then415, %do.body403
  tail call void @mutex_unlock(ptr noundef %move_mutex) #12
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  br label %cleanup

out_not_moved:                                    ; preds = %if.then333.out_not_moved_crit_edge, %if.then330, %if.then323, %if.end311.out_not_moved_crit_edge, %do.body287, %do.body262, %do.body239
  %tobool490.not = phi i1 [ true, %if.then330 ], [ false, %if.then323 ], [ false, %if.end311.out_not_moved_crit_edge ], [ false, %if.then333.out_not_moved_crit_edge ], [ false, %do.body239 ], [ false, %do.body262 ], [ false, %do.body287 ]
  %lnum.0 = phi i32 [ %154, %if.then330 ], [ %154, %if.then323 ], [ %154, %if.end311.out_not_moved_crit_edge ], [ %154, %if.then333.out_not_moved_crit_edge ], [ -1, %do.body239 ], [ -1, %do.body262 ], [ -1, %do.body287 ]
  %vol_id.0 = phi i32 [ %152, %if.then330 ], [ %152, %if.then323 ], [ %152, %if.end311.out_not_moved_crit_edge ], [ %152, %if.then333.out_not_moved_crit_edge ], [ -1, %do.body239 ], [ -1, %do.body262 ], [ -1, %do.body287 ]
  %tobool534.not = phi i1 [ true, %if.then330 ], [ true, %if.then323 ], [ true, %if.end311.out_not_moved_crit_edge ], [ true, %if.then333.out_not_moved_crit_edge ], [ true, %do.body239 ], [ true, %do.body262 ], [ false, %do.body287 ]
  %tobool474.not = phi i1 [ true, %if.then330 ], [ true, %if.then323 ], [ true, %if.end311.out_not_moved_crit_edge ], [ false, %if.then333.out_not_moved_crit_edge ], [ true, %do.body239 ], [ true, %do.body262 ], [ true, %do.body287 ]
  %tobool471.not = phi i1 [ true, %if.then330 ], [ true, %if.then323 ], [ false, %if.end311.out_not_moved_crit_edge ], [ true, %if.then333.out_not_moved_crit_edge ], [ false, %do.body239 ], [ true, %do.body262 ], [ true, %do.body287 ]
  %tobool483.not = phi i1 [ false, %if.then330 ], [ true, %if.then323 ], [ true, %if.end311.out_not_moved_crit_edge ], [ true, %if.then333.out_not_moved_crit_edge ], [ true, %do.body239 ], [ true, %do.body262 ], [ true, %do.body287 ]
  %torture.0 = phi i32 [ 1, %if.then330 ], [ 0, %if.then323 ], [ 0, %if.end311.out_not_moved_crit_edge ], [ 0, %if.then333.out_not_moved_crit_edge ], [ 0, %do.body239 ], [ 0, %do.body262 ], [ 0, %do.body287 ]
  %scrubbing.1 = phi i32 [ %scrubbing.0, %if.then330 ], [ 1, %if.then323 ], [ %scrubbing.0, %if.end311.out_not_moved_crit_edge ], [ %scrubbing.0, %if.then333.out_not_moved_crit_edge ], [ %scrubbing.0, %do.body239 ], [ 1, %do.body262 ], [ %scrubbing.0, %do.body287 ]
  %err.0 = phi i32 [ %call316, %if.then330 ], [ 6, %if.then323 ], [ %call316, %if.end311.out_not_moved_crit_edge ], [ 2, %if.then333.out_not_moved_crit_edge ], [ 1, %do.body239 ], [ 2, %do.body262 ], [ 4, %do.body287 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vol_id.0)
  %cmp424.not = icmp eq i32 %vol_id.0, -1
  br i1 %cmp424.not, label %out_not_moved.do.body448_crit_edge, label %do.body426

out_not_moved.do.body448_crit_edge:               ; preds = %out_not_moved
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body448

do.body426:                                       ; preds = %out_not_moved
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then438)) #12
          to label %if.end469 [label %if.then438], !srcloc !306

if.then438:                                       ; preds = %do.body426
  %196 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i855 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i855 to ptr
  %task440 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %task440 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task440, align 8
  %pid441 = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 68
  %200 = ptrtoint ptr %pid441 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pid441, align 8
  %202 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pnum231, align 4
  %pnum443 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e2.0, i32 0, i32 2
  %204 = ptrtoint ptr %pnum443 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pnum443, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.102, i32 noundef %201, i32 noundef %203, i32 noundef %vol_id.0, i32 noundef %lnum.0, i32 noundef %205, i32 noundef %err.0) #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  br i1 %tobool471.not, label %if.then438.if.else473_crit_edge, label %if.then438.if.then472_crit_edge

if.then438.if.then472_crit_edge:                  ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then472

if.then438.if.else473_crit_edge:                  ; preds = %if.then438
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else473

do.body448:                                       ; preds = %out_not_moved.do.body448_crit_edge, %if.then299, %if.then274, %if.then251
  %err.0944 = phi i32 [ %err.0, %out_not_moved.do.body448_crit_edge ], [ 4, %if.then299 ], [ 2, %if.then274 ], [ 1, %if.then251 ]
  %scrubbing.1943 = phi i32 [ %scrubbing.1, %out_not_moved.do.body448_crit_edge ], [ %scrubbing.0, %if.then299 ], [ 1, %if.then274 ], [ %scrubbing.0, %if.then251 ]
  %torture.0941 = phi i32 [ %torture.0, %out_not_moved.do.body448_crit_edge ], [ 0, %if.then299 ], [ 0, %if.then274 ], [ 0, %if.then251 ]
  %tobool483.not939 = phi i1 [ %tobool483.not, %out_not_moved.do.body448_crit_edge ], [ true, %if.then299 ], [ true, %if.then274 ], [ true, %if.then251 ]
  %tobool471.not937 = phi i1 [ %tobool471.not, %out_not_moved.do.body448_crit_edge ], [ true, %if.then299 ], [ true, %if.then274 ], [ false, %if.then251 ]
  %tobool474.not935 = phi i1 [ %tobool474.not, %out_not_moved.do.body448_crit_edge ], [ true, %if.then299 ], [ true, %if.then274 ], [ true, %if.then251 ]
  %tobool534.not933 = phi i1 [ %tobool534.not, %out_not_moved.do.body448_crit_edge ], [ false, %if.then299 ], [ true, %if.then274 ], [ true, %if.then251 ]
  %lnum.0929 = phi i32 [ %lnum.0, %out_not_moved.do.body448_crit_edge ], [ -1, %if.then299 ], [ -1, %if.then274 ], [ -1, %if.then251 ]
  %tobool490.not927 = phi i1 [ %tobool490.not, %out_not_moved.do.body448_crit_edge ], [ false, %if.then299 ], [ false, %if.then274 ], [ false, %if.then251 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wear_leveling_worker.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then460)) #12
          to label %if.end469 [label %if.then460], !srcloc !306

if.then460:                                       ; preds = %do.body448
  %206 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i856 = and i32 %206, -16384
  %207 = inttoptr i32 %and.i856 to ptr
  %task462 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %task462 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %task462, align 8
  %pid463 = getelementptr inbounds %struct.task_struct, ptr %209, i32 0, i32 68
  %210 = ptrtoint ptr %pid463 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %pid463, align 8
  %212 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %pnum231, align 4
  %pnum465 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e2.0, i32 0, i32 2
  %214 = ptrtoint ptr %pnum465 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %pnum465, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wear_leveling_worker.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.103, i32 noundef %211, i32 noundef %213, i32 noundef %215, i32 noundef %err.0944) #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  br i1 %tobool471.not937, label %if.then460.if.else473_crit_edge, label %if.then460.if.then472_crit_edge

if.then460.if.then472_crit_edge:                  ; preds = %if.then460
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then472

if.then460.if.else473_crit_edge:                  ; preds = %if.then460
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else473

if.end469:                                        ; preds = %do.body448, %do.body426
  %scrubbing.1942 = phi i32 [ %scrubbing.1, %do.body426 ], [ %scrubbing.1943, %do.body448 ]
  %torture.0940 = phi i32 [ %torture.0, %do.body426 ], [ %torture.0941, %do.body448 ]
  %tobool483.not938 = phi i1 [ %tobool483.not, %do.body426 ], [ %tobool483.not939, %do.body448 ]
  %tobool471.not936 = phi i1 [ %tobool471.not, %do.body426 ], [ %tobool471.not937, %do.body448 ]
  %tobool474.not934 = phi i1 [ %tobool474.not, %do.body426 ], [ %tobool474.not935, %do.body448 ]
  %tobool534.not932 = phi i1 [ %tobool534.not, %do.body426 ], [ %tobool534.not933, %do.body448 ]
  %vol_id.0930 = phi i32 [ %vol_id.0, %do.body426 ], [ -1, %do.body448 ]
  %lnum.0928 = phi i32 [ %lnum.0, %do.body426 ], [ %lnum.0929, %do.body448 ]
  %tobool490.not926 = phi i1 [ %tobool490.not, %do.body426 ], [ %tobool490.not927, %do.body448 ]
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  br i1 %tobool471.not936, label %if.end469.if.else473_crit_edge, label %if.end469.if.then472_crit_edge

if.end469.if.then472_crit_edge:                   ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then472

if.end469.if.else473_crit_edge:                   ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else473

if.then472:                                       ; preds = %if.end469.if.then472_crit_edge, %if.then460.if.then472_crit_edge, %if.then438.if.then472_crit_edge
  %tobool490.not926963 = phi i1 [ %tobool490.not927, %if.then460.if.then472_crit_edge ], [ %tobool490.not926, %if.end469.if.then472_crit_edge ], [ %tobool490.not, %if.then438.if.then472_crit_edge ]
  %lnum.0928960 = phi i32 [ %lnum.0929, %if.then460.if.then472_crit_edge ], [ %lnum.0928, %if.end469.if.then472_crit_edge ], [ %lnum.0, %if.then438.if.then472_crit_edge ]
  %vol_id.0930957 = phi i32 [ -1, %if.then460.if.then472_crit_edge ], [ %vol_id.0930, %if.end469.if.then472_crit_edge ], [ %vol_id.0, %if.then438.if.then472_crit_edge ]
  %tobool534.not932954 = phi i1 [ %tobool534.not933, %if.then460.if.then472_crit_edge ], [ %tobool534.not932, %if.end469.if.then472_crit_edge ], [ %tobool534.not, %if.then438.if.then472_crit_edge ]
  %torture.0940949 = phi i32 [ %torture.0941, %if.then460.if.then472_crit_edge ], [ %torture.0940, %if.end469.if.then472_crit_edge ], [ %torture.0, %if.then438.if.then472_crit_edge ]
  tail call fastcc void @prot_queue_add(ptr noundef %ubi, ptr noundef %e1.0)
  br i1 %tobool490.not926963, label %if.then472.do.body496_crit_edge, label %if.then472.if.then491_crit_edge

if.then472.if.then491_crit_edge:                  ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then491

if.then472.do.body496_crit_edge:                  ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body496

if.else473:                                       ; preds = %if.end469.if.else473_crit_edge, %if.then460.if.else473_crit_edge, %if.then438.if.else473_crit_edge
  %tobool490.not926964 = phi i1 [ %tobool490.not927, %if.then460.if.else473_crit_edge ], [ %tobool490.not926, %if.end469.if.else473_crit_edge ], [ %tobool490.not, %if.then438.if.else473_crit_edge ]
  %lnum.0928961 = phi i32 [ %lnum.0929, %if.then460.if.else473_crit_edge ], [ %lnum.0928, %if.end469.if.else473_crit_edge ], [ %lnum.0, %if.then438.if.else473_crit_edge ]
  %vol_id.0930958 = phi i32 [ -1, %if.then460.if.else473_crit_edge ], [ %vol_id.0930, %if.end469.if.else473_crit_edge ], [ %vol_id.0, %if.then438.if.else473_crit_edge ]
  %tobool534.not932955 = phi i1 [ %tobool534.not933, %if.then460.if.else473_crit_edge ], [ %tobool534.not932, %if.end469.if.else473_crit_edge ], [ %tobool534.not, %if.then438.if.else473_crit_edge ]
  %tobool474.not934952 = phi i1 [ %tobool474.not935, %if.then460.if.else473_crit_edge ], [ %tobool474.not934, %if.end469.if.else473_crit_edge ], [ %tobool474.not, %if.then438.if.else473_crit_edge ]
  %tobool483.not938951 = phi i1 [ %tobool483.not939, %if.then460.if.else473_crit_edge ], [ %tobool483.not938, %if.end469.if.else473_crit_edge ], [ %tobool483.not, %if.then438.if.else473_crit_edge ]
  %torture.0940950 = phi i32 [ %torture.0941, %if.then460.if.else473_crit_edge ], [ %torture.0940, %if.end469.if.else473_crit_edge ], [ %torture.0, %if.then438.if.else473_crit_edge ]
  %scrubbing.1942947 = phi i32 [ %scrubbing.1943, %if.then460.if.else473_crit_edge ], [ %scrubbing.1942, %if.end469.if.else473_crit_edge ], [ %scrubbing.1, %if.then438.if.else473_crit_edge ]
  br i1 %tobool474.not934952, label %if.else478, label %if.then475

if.then475:                                       ; preds = %if.else473
  %erroneous476 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 40
  tail call fastcc void @wl_tree_add(ptr noundef %e1.0, ptr noundef %erroneous476)
  %erroneous_peb_count477 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 65
  %216 = ptrtoint ptr %erroneous_peb_count477 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %erroneous_peb_count477, align 4
  %add = add i32 %217, 1
  store i32 %add, ptr %erroneous_peb_count477, align 4
  br i1 %tobool490.not926964, label %if.then475.do.body496_crit_edge, label %if.then475.if.then491_crit_edge

if.then475.if.then491_crit_edge:                  ; preds = %if.then475
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then491

if.then475.do.body496_crit_edge:                  ; preds = %if.then475
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body496

if.else478:                                       ; preds = %if.else473
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scrubbing.1942947)
  %tobool479.not = icmp eq i32 %scrubbing.1942947, 0
  br i1 %tobool479.not, label %if.else482, label %if.then480

if.then480:                                       ; preds = %if.else478
  %scrub481 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 43
  tail call fastcc void @wl_tree_add(ptr noundef %e1.0, ptr noundef %scrub481)
  br i1 %tobool490.not926964, label %if.then480.do.body496_crit_edge, label %if.then480.if.then491_crit_edge

if.then480.if.then491_crit_edge:                  ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then491

if.then480.do.body496_crit_edge:                  ; preds = %if.then480
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body496

if.else482:                                       ; preds = %if.else478
  br i1 %tobool483.not938951, label %if.end489, label %if.then484

if.then484:                                       ; preds = %if.else482
  tail call fastcc void @wl_tree_add(ptr noundef %e1.0, ptr noundef %used)
  br i1 %tobool490.not926964, label %if.then484.do.body496_crit_edge, label %if.then484.if.then491_crit_edge

if.then484.if.then491_crit_edge:                  ; preds = %if.then484
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then491

if.then484.do.body496_crit_edge:                  ; preds = %if.then484
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body496

if.end489:                                        ; preds = %if.else482
  br i1 %tobool490.not926964, label %if.end489.do.body496_crit_edge, label %if.end489.if.then491_crit_edge

if.end489.if.then491_crit_edge:                   ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then491

if.end489.do.body496_crit_edge:                   ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body496

if.then491:                                       ; preds = %if.end489.if.then491_crit_edge, %if.then484.if.then491_crit_edge, %if.then480.if.then491_crit_edge, %if.then475.if.then491_crit_edge, %if.then472.if.then491_crit_edge
  %torture.0940948978 = phi i32 [ %torture.0940950, %if.then475.if.then491_crit_edge ], [ %torture.0940950, %if.end489.if.then491_crit_edge ], [ %torture.0940950, %if.then484.if.then491_crit_edge ], [ %torture.0940950, %if.then480.if.then491_crit_edge ], [ %torture.0940949, %if.then472.if.then491_crit_edge ]
  %tobool534.not932953976 = phi i1 [ %tobool534.not932955, %if.then475.if.then491_crit_edge ], [ %tobool534.not932955, %if.end489.if.then491_crit_edge ], [ %tobool534.not932955, %if.then484.if.then491_crit_edge ], [ %tobool534.not932955, %if.then480.if.then491_crit_edge ], [ %tobool534.not932954, %if.then472.if.then491_crit_edge ]
  %vol_id.0930956974 = phi i32 [ %vol_id.0930958, %if.then475.if.then491_crit_edge ], [ %vol_id.0930958, %if.end489.if.then491_crit_edge ], [ %vol_id.0930958, %if.then484.if.then491_crit_edge ], [ %vol_id.0930958, %if.then480.if.then491_crit_edge ], [ %vol_id.0930957, %if.then472.if.then491_crit_edge ]
  %lnum.0928959972 = phi i32 [ %lnum.0928961, %if.then475.if.then491_crit_edge ], [ %lnum.0928961, %if.end489.if.then491_crit_edge ], [ %lnum.0928961, %if.then484.if.then491_crit_edge ], [ %lnum.0928961, %if.then480.if.then491_crit_edge ], [ %lnum.0928960, %if.then472.if.then491_crit_edge ]
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %e2.0, ptr noundef %free)
  %free_count493 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %218 = ptrtoint ptr %free_count493 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %free_count493, align 8
  %inc494 = add i32 %219, 1
  store i32 %inc494, ptr %free_count493, align 8
  br label %do.body496

do.body496:                                       ; preds = %if.then491, %if.end489.do.body496_crit_edge, %if.then484.do.body496_crit_edge, %if.then480.do.body496_crit_edge, %if.then475.do.body496_crit_edge, %if.then472.do.body496_crit_edge
  %torture.0940948979 = phi i32 [ %torture.0940950, %if.then475.do.body496_crit_edge ], [ %torture.0940950, %if.end489.do.body496_crit_edge ], [ %torture.0940948978, %if.then491 ], [ %torture.0940950, %if.then484.do.body496_crit_edge ], [ %torture.0940950, %if.then480.do.body496_crit_edge ], [ %torture.0940949, %if.then472.do.body496_crit_edge ]
  %tobool534.not932953977 = phi i1 [ %tobool534.not932955, %if.then475.do.body496_crit_edge ], [ %tobool534.not932955, %if.end489.do.body496_crit_edge ], [ %tobool534.not932953976, %if.then491 ], [ %tobool534.not932955, %if.then484.do.body496_crit_edge ], [ %tobool534.not932955, %if.then480.do.body496_crit_edge ], [ %tobool534.not932954, %if.then472.do.body496_crit_edge ]
  %vol_id.0930956975 = phi i32 [ %vol_id.0930958, %if.then475.do.body496_crit_edge ], [ %vol_id.0930958, %if.end489.do.body496_crit_edge ], [ %vol_id.0930956974, %if.then491 ], [ %vol_id.0930958, %if.then484.do.body496_crit_edge ], [ %vol_id.0930958, %if.then480.do.body496_crit_edge ], [ %vol_id.0930957, %if.then472.do.body496_crit_edge ]
  %lnum.0928959973 = phi i32 [ %lnum.0928961, %if.then475.do.body496_crit_edge ], [ %lnum.0928961, %if.end489.do.body496_crit_edge ], [ %lnum.0928959972, %if.then491 ], [ %lnum.0928961, %if.then484.do.body496_crit_edge ], [ %lnum.0928961, %if.then480.do.body496_crit_edge ], [ %lnum.0928960, %if.then472.do.body496_crit_edge ]
  %tobool490.not926962971 = phi i1 [ true, %if.then475.do.body496_crit_edge ], [ true, %if.end489.do.body496_crit_edge ], [ false, %if.then491 ], [ true, %if.then484.do.body496_crit_edge ], [ true, %if.then480.do.body496_crit_edge ], [ true, %if.then472.do.body496_crit_edge ]
  %220 = ptrtoint ptr %move_to_put to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %move_to_put, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool498.not = icmp eq i32 %221, 0
  br i1 %tobool498.not, label %do.body496.ubi_free_vid_buf.exit861_crit_edge, label %do.end512, !prof !308

do.body496.ubi_free_vid_buf.exit861_crit_edge:    ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_free_vid_buf.exit861

do.end512:                                        ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #14
  %222 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i857 = and i32 %222, -16384
  %223 = inttoptr i32 %and.i857 to ptr
  %task515 = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %task515 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %task515, align 8
  %pid516 = getelementptr inbounds %struct.task_struct, ptr %225, i32 0, i32 68
  %226 = ptrtoint ptr %pid516 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pid516, align 8
  %call517 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.84, i32 noundef 938, i32 noundef %227) #15
  tail call void @dump_stack() #15
  br label %ubi_free_vid_buf.exit861

ubi_free_vid_buf.exit861:                         ; preds = %do.end512, %do.body496.ubi_free_vid_buf.exit861_crit_edge
  %228 = ptrtoint ptr %move_to229 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %move_to229, align 8
  %229 = ptrtoint ptr %move_from to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr null, ptr %move_from, align 4
  %wl_scheduled523 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 49
  %230 = ptrtoint ptr %wl_scheduled523 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %wl_scheduled523, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %231 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %232) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br i1 %tobool490.not926962971, label %if.else528, label %if.then526

if.then526:                                       ; preds = %ubi_free_vid_buf.exit861
  call void @__sanitizer_cov_trace_pc() #14
  %call527 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %ubi, i32 noundef 1)
  br label %if.end533

if.else528:                                       ; preds = %ubi_free_vid_buf.exit861
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %wl_wrk.i) #12
  %233 = call ptr @memset(ptr %wl_wrk.i, i32 255, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_sync_erase.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wear_leveling_worker, %if.then.i)) #12
          to label %do_sync_erase.exit [label %if.then.i], !srcloc !306

if.then.i:                                        ; preds = %if.else528
  call void @__sanitizer_cov_trace_pc() #14
  %234 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i.i = and i32 %234, -16384
  %235 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %235, i32 0, i32 2
  %236 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %237, i32 0, i32 68
  %238 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %pid.i, align 8
  %pnum.i862 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e2.0, i32 0, i32 2
  %240 = ptrtoint ptr %pnum.i862 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %pnum.i862, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_sync_erase.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.112, i32 noundef %239, i32 noundef %241) #12
  br label %do_sync_erase.exit

do_sync_erase.exit:                               ; preds = %if.then.i, %if.else528
  %242 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk.i, i32 0, i32 5
  %243 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk.i, i32 0, i32 4
  %244 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk.i, i32 0, i32 3
  %245 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk.i, i32 0, i32 2
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %e2.0, ptr %245, align 4
  %247 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %vol_id.0930956975, ptr %244, align 4
  %248 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %lnum.0928959973, ptr %243, align 4
  %249 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %torture.0940948979, ptr %242, align 4
  %call8.i = call fastcc i32 @__erase_worker(ptr noundef %ubi, ptr noundef nonnull %wl_wrk.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wl_wrk.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool530.not = icmp eq i32 %call8.i, 0
  br i1 %tobool530.not, label %do_sync_erase.exit.if.end533_crit_edge, label %do_sync_erase.exit.out_ro_crit_edge

do_sync_erase.exit.out_ro_crit_edge:              ; preds = %do_sync_erase.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ro

do_sync_erase.exit.if.end533_crit_edge:           ; preds = %do_sync_erase.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end533

if.end533:                                        ; preds = %do_sync_erase.exit.if.end533_crit_edge, %if.then526
  br i1 %tobool534.not932953977, label %if.end533.if.end540_crit_edge, label %if.then535

if.end533.if.end540_crit_edge:                    ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end540

if.then535:                                       ; preds = %if.end533
  %call536 = tail call fastcc i32 @do_sync_erase(ptr noundef %ubi, ptr noundef %e1.0, i32 noundef %vol_id.0930956975, i32 noundef %lnum.0928959973, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call536)
  %tobool537.not = icmp eq i32 %call536, 0
  br i1 %tobool537.not, label %if.then535.if.end540_crit_edge, label %if.then535.out_ro_crit_edge

if.then535.out_ro_crit_edge:                      ; preds = %if.then535
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_ro

if.then535.if.end540_crit_edge:                   ; preds = %if.then535
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end540

if.end540:                                        ; preds = %if.then535.if.end540_crit_edge, %if.end533.if.end540_crit_edge
  tail call void @mutex_unlock(ptr noundef %move_mutex) #12
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  br label %cleanup

out_error:                                        ; preds = %if.end338.out_error_crit_edge, %if.then335
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %152)
  %cmp543.not = icmp eq i32 %152, -1
  br i1 %cmp543.not, label %out_error.if.else547_crit_edge, label %if.then544

out_error.if.else547_crit_edge:                   ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else547

if.then544:                                       ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #14
  %250 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %pnum231, align 4
  %252 = ptrtoint ptr %pnum315 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %pnum315, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.106, i32 noundef %call316, i32 noundef %251, i32 noundef %253) #12
  br label %ubi_free_vid_buf.exit866

if.else547:                                       ; preds = %out_error.if.else547_crit_edge, %out_error.thread
  %err.1989 = phi i32 [ %call232, %out_error.thread ], [ %call316, %out_error.if.else547_crit_edge ]
  %lnum.1987 = phi i32 [ -1, %out_error.thread ], [ %154, %out_error.if.else547_crit_edge ]
  %254 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %pnum231, align 4
  %pnum549 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e2.0, i32 0, i32 2
  %256 = ptrtoint ptr %pnum549 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %pnum549, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.107, i32 noundef %err.1989, i32 noundef %255, i32 noundef -1, i32 noundef %lnum.1987, i32 noundef %257) #12
  br label %ubi_free_vid_buf.exit866

ubi_free_vid_buf.exit866:                         ; preds = %if.else547, %if.then544
  %err.1988 = phi i32 [ %err.1989, %if.else547 ], [ %call316, %if.then544 ]
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %258 = ptrtoint ptr %move_to229 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr null, ptr %move_to229, align 8
  %259 = ptrtoint ptr %move_from to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr null, ptr %move_from, align 4
  %wl_scheduled554 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 49
  %260 = ptrtoint ptr %wl_scheduled554 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %wl_scheduled554, align 4
  %261 = ptrtoint ptr %move_to_put to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 0, ptr %move_to_put, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  %262 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %263) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %lookuptbl.i867 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %264 = ptrtoint ptr %lookuptbl.i867 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %lookuptbl.i867, align 8
  %266 = ptrtoint ptr %pnum231 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %pnum231, align 4
  %arrayidx.i869 = getelementptr ptr, ptr %265, i32 %267
  %268 = ptrtoint ptr %arrayidx.i869 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr null, ptr %arrayidx.i869, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %269 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %269, ptr noundef %e1.0) #12
  br label %out_ro.sink.split

out_ro.sink.split:                                ; preds = %ubi_free_vid_buf.exit866, %if.then373
  %lookuptbl.i.sink = phi ptr [ %lookuptbl.i, %if.then373 ], [ %lookuptbl.i867, %ubi_free_vid_buf.exit866 ]
  %e2.1.sink996 = phi ptr [ %e2.1, %if.then373 ], [ %e2.0, %ubi_free_vid_buf.exit866 ]
  %err.2.ph = phi i32 [ %call369, %if.then373 ], [ %err.1988, %ubi_free_vid_buf.exit866 ]
  %270 = ptrtoint ptr %lookuptbl.i.sink to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %lookuptbl.i.sink, align 8
  %pnum.i852 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e2.1.sink996, i32 0, i32 2
  %272 = ptrtoint ptr %pnum.i852 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %pnum.i852, align 4
  %arrayidx.i = getelementptr ptr, ptr %271, i32 %273
  %274 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %275 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %275, ptr noundef nonnull %e2.1.sink996) #12
  br label %out_ro

out_ro:                                           ; preds = %out_ro.sink.split, %if.then535.out_ro_crit_edge, %do_sync_erase.exit.out_ro_crit_edge, %do.end397.out_ro_crit_edge, %if.then371.out_ro_crit_edge
  %err.2 = phi i32 [ %call536, %if.then535.out_ro_crit_edge ], [ %call8.i, %do_sync_erase.exit.out_ro_crit_edge ], [ %call369, %if.then371.out_ro_crit_edge ], [ %call398, %do.end397.out_ro_crit_edge ], [ %err.2.ph, %out_ro.sink.split ]
  %ro_mode.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %276 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %ro_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.i873 = icmp eq i32 %277, 0
  br i1 %tobool.not.i873, label %if.then.i874, label %out_ro.ubi_ro_mode.exit_crit_edge

out_ro.ubi_ro_mode.exit_crit_edge:                ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #14
  br label %ubi_ro_mode.exit

if.then.i874:                                     ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #14
  %278 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 1, ptr %ro_mode.i, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.58) #12
  tail call void @dump_stack() #15
  br label %ubi_ro_mode.exit

ubi_ro_mode.exit:                                 ; preds = %if.then.i874, %out_ro.ubi_ro_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %move_mutex) #12
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp560.not = icmp eq i32 %err.2, 0
  br i1 %cmp560.not, label %do.end572, label %ubi_ro_mode.exit.do.end580_crit_edge, !prof !307

ubi_ro_mode.exit.do.end580_crit_edge:             ; preds = %ubi_ro_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end580

do.end572:                                        ; preds = %ubi_ro_mode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %279 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i876 = and i32 %279, -16384
  %280 = inttoptr i32 %and.i876 to ptr
  %task575 = getelementptr inbounds %struct.thread_info, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %task575 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %task575, align 8
  %pid576 = getelementptr inbounds %struct.task_struct, ptr %282, i32 0, i32 68
  %283 = ptrtoint ptr %pid576 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %pid576, align 8
  %call577 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.84, i32 noundef 982, i32 noundef %284) #15
  tail call void @dump_stack() #15
  br label %do.end580

do.end580:                                        ; preds = %do.end572, %ubi_ro_mode.exit.do.end580_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp581 = icmp slt i32 %err.2, 0
  %spec.select = select i1 %cmp581, i32 %err.2, i32 -5
  br label %cleanup

ubi_free_vid_buf.exit880:                         ; preds = %if.else191.ubi_free_vid_buf.exit880_crit_edge, %do.end159, %if.then126.ubi_free_vid_buf.exit880_crit_edge, %if.end94.critedge.ubi_free_vid_buf.exit880_crit_edge, %if.end88.thread.ubi_free_vid_buf.exit880_crit_edge, %if.end88.thread990.ubi_free_vid_buf.exit880_crit_edge, %if.then58, %do.body48
  %wl_scheduled582 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 49
  %285 = ptrtoint ptr %wl_scheduled582 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %wl_scheduled582, align 4
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  tail call void @mutex_unlock(ptr noundef %move_mutex) #12
  tail call void @up_read(ptr noundef %fm_eba_sem) #12
  %286 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %buffer.i.i, align 4
  tail call void @kfree(ptr noundef %287) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ubi_free_vid_buf.exit880, %do.end580, %if.end540, %do.end421, %if.then3.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end580 ], [ 0, %if.end540 ], [ 0, %do.end421 ], [ 0, %ubi_free_vid_buf.exit880 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then3.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__schedule_ubi_work(ptr noundef %ubi, ptr noundef %wrk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %works = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 54
  %prev.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 54, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %wrk, ptr noundef %1, ptr noundef %works) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wrk, ptr %prev.i, align 4
  %3 = ptrtoint ptr %wrk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %works, ptr %wrk, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %wrk, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %wrk, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %works_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 55
  %6 = ptrtoint ptr %works_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %works_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %do.end, label %list_add_tail.exit.do.end5_crit_edge, !prof !307

list_add_tail.exit.do.end5_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.124, i32 noundef 546, i32 noundef %13) #15
  tail call void @dump_stack() #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %list_add_tail.exit.do.end5_crit_edge
  %14 = ptrtoint ptr %works_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %works_count, align 8
  %add = add i32 %15, 1
  store i32 %add, ptr %works_count, align 8
  %thread_enabled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 57
  %16 = ptrtoint ptr %thread_enabled to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %thread_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %do.end5.if.end12_crit_edge, label %land.lhs.true

do.end5.if.end12_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %do.end5
  %dbg.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %18 = ptrtoint ptr %dbg.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %dbg.i, align 4
  %19 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool9.not = icmp eq i8 %19, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %bgt_thread = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 56
  %20 = ptrtoint ptr %bgt_thread to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bgt_thread, align 4
  %call11 = tail call i32 @wake_up_process(ptr noundef %21) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %do.end5.if.end12_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_put_fm_peb(ptr noundef %ubi, ptr noundef %fm_e, i32 noundef %lnum, i32 noundef %torture) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pnum1 = getelementptr inbounds %struct.ubi_wl_entry, ptr %fm_e, i32 0, i32 2
  %0 = ptrtoint ptr %pnum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pnum1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_wl_put_fm_peb.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_wl_put_fm_peb, %if.then)) #12
          to label %do.body5 [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_wl_put_fm_peb.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.3, i32 noundef %7, i32 noundef %1) #12
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.end17, label %do.body5.do.body26_crit_edge, !prof !307

do.body5.do.body26_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

do.end17:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i92 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i92 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid21, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.47, i32 noundef 341, i32 noundef %13) #15
  tail call void @dump_stack() #15
  br label %do.body26

do.body26:                                        ; preds = %do.end17, %do.body5.do.body26_crit_edge
  %peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 60
  %14 = ptrtoint ptr %peb_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %peb_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %15)
  %cmp27.not = icmp slt i32 %1, %15
  br i1 %cmp27.not, label %do.body26.do.end47_crit_edge, label %do.end39, !prof !308

do.body26.do.end47_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

do.end39:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %16 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i93 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i93 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task42, align 8
  %pid43 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid43, align 8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.47, i32 noundef 342, i32 noundef %21) #15
  tail call void @dump_stack() #15
  br label %do.end47

do.end47:                                         ; preds = %do.end39, %do.body26.do.end47_crit_edge
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %22 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lookuptbl, align 8
  %arrayidx = getelementptr ptr, ptr %23, i32 %1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool48.not = icmp eq ptr %25, null
  br i1 %tobool48.not, label %if.then49, label %do.end47.if.end74_crit_edge

do.end47.if.end74_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then49:                                        ; preds = %do.end47
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %fm_e, i32 0, i32 1
  %26 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp51 = icmp slt i32 %27, 0
  br i1 %cmp51, label %do.end63, label %if.then49.do.end71_crit_edge, !prof !307

if.then49.do.end71_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end71

do.end63:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i94 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i94 to ptr
  %task66 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task66, align 8
  %pid67 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid67, align 8
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.47, i32 noundef 353, i32 noundef %33) #15
  tail call void @dump_stack() #15
  br label %do.end71

do.end71:                                         ; preds = %do.end63, %if.then49.do.end71_crit_edge
  %34 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lookuptbl, align 8
  %arrayidx73 = getelementptr ptr, ptr %35, i32 %1
  %36 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %fm_e, ptr %arrayidx73, align 4
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %do.end47.if.end74_crit_edge
  %e.0 = phi ptr [ %25, %do.end47.if.end74_crit_edge ], [ %fm_e, %do.end71 ]
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lnum)
  %tobool76.not = icmp eq i32 %lnum, 0
  %cond = select i1 %tobool76.not, i32 2147479552, i32 2147479553
  %call77 = tail call fastcc i32 @schedule_erase(ptr noundef %ubi, ptr noundef %e.0, i32 noundef %cond, i32 noundef %lnum, i32 noundef %torture, i1 noundef zeroext true)
  ret i32 %call77
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ubi_is_erase_work(ptr nocapture noundef readonly %wrk) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.ubi_work, ptr %wrk, i32 0, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %cmp = icmp eq ptr %1, @erase_worker
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erase_worker(ptr noundef %ubi, ptr noundef %wl_wrk, i32 noundef %shutdown) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shutdown)
  %tobool.not = icmp eq i32 %shutdown, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %e1 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 2
  %0 = ptrtoint ptr %e1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @erase_worker.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@erase_worker, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !306

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pnum, align 4
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ec, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @erase_worker.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.126, i32 noundef %7, i32 noundef %9, i32 noundef %11) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  tail call void @kfree(ptr noundef %wl_wrk) #12
  %lookuptbl.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %12 = ptrtoint ptr %lookuptbl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lookuptbl.i, align 8
  %pnum.i = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pnum.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pnum.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %17 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %1) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call fastcc i32 @__erase_worker(ptr noundef %ubi, ptr noundef %wl_wrk)
  tail call void @kfree(ptr noundef %wl_wrk) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call8, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sync_erase(ptr noundef %ubi, ptr nocapture noundef %e, i32 noundef %torture) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ec1 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ec1, align 4
  %conv = sext i32 %1 to i64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sync_erase.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sync_erase, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %8 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pnum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sync_erase.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.69, i32 noundef %7, i32 noundef %9, i64 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pnum5 = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %10 = ptrtoint ptr %pnum5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pnum5, align 4
  %12 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ec1, align 4
  %dbg.i.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 83
  %14 = ptrtoint ptr %dbg.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %dbg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i, label %do.end.if.end8.i.i_crit_edge, label %if.end8.i.i.i

do.end.if.end8.i.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end8.i.i.i:                                    ; preds = %do.end
  %ec_hdr_alsize.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %15 = ptrtoint ptr %ec_hdr_alsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ec_hdr_alsize.i, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3392) #17
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end4.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end8.i.i.i
  %call5.i = tail call i32 @ubi_io_read_ec_hdr(ptr noundef %ubi, i32 noundef %11, ptr noundef nonnull %call9.i.i.i, i32 noundef 0) #12
  %17 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %call5.i, label %if.end4.i.self_check_ec.exit.thread109_crit_edge [
    i32 0, label %if.end4.i.if.end8.i_crit_edge
    i32 5, label %if.end4.i.if.end8.i_crit_edge118
  ]

if.end4.i.if.end8.i_crit_edge118:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end4.i.self_check_ec.exit.thread109_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %self_check_ec.exit.thread109

if.end8.i:                                        ; preds = %if.end4.i.if.end8.i_crit_edge, %if.end4.i.if.end8.i_crit_edge118
  %ec9.i = getelementptr inbounds %struct.ubi_ec_hdr, ptr %call9.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %ec9.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ec9.i, align 8
  %conv.i = sext i32 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %conv.i)
  %cmp10.not.i = icmp ne i64 %19, %conv.i
  %sub.i = sub i64 %19, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp14.i = icmp sgt i64 %sub.i, 1
  %or.cond.i = and i1 %cmp10.not.i, %cmp14.i
  br i1 %or.cond.i, label %self_check_ec.exit, label %if.end8.i.self_check_ec.exit.thread109_crit_edge

if.end8.i.self_check_ec.exit.thread109_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %self_check_ec.exit.thread109

self_check_ec.exit.thread109:                     ; preds = %if.end8.i.self_check_ec.exit.thread109_crit_edge, %if.end4.i.self_check_ec.exit.thread109_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #12
  br label %if.end8.i.i

self_check_ec.exit:                               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.72, i32 noundef %11) #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.73, i64 noundef %19, i32 noundef %13) #12
  tail call void @dump_stack() #15
  br label %cleanup.sink.split

if.end8.i.i:                                      ; preds = %self_check_ec.exit.thread109, %do.end.if.end8.i.i_crit_edge
  %ec_hdr_alsize = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 72
  %20 = ptrtoint ptr %ec_hdr_alsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ec_hdr_alsize, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3392) #17
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end14

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end8.i.i
  %22 = ptrtoint ptr %pnum5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pnum5, align 4
  %call16 = tail call i32 @ubi_io_sync_erase(ptr noundef %ubi, i32 noundef %23, i32 noundef %torture) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end14.cleanup.sink.split_crit_edge, label %if.end19

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end19:                                         ; preds = %if.end14
  %conv20117 = zext i32 %call16 to i64
  %add = add nsw i64 %conv20117, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %add)
  %cmp21 = icmp ugt i64 %add, 2147483647
  br i1 %cmp21, label %if.then23, label %do.body26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %pnum5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pnum5, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.70, i32 noundef %25, i64 noundef %add) #12
  br label %cleanup.sink.split

do.body26:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sync_erase.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sync_erase, %if.then38)) #12
          to label %do.end45 [label %if.then38], !srcloc !306

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i102 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i102 to ptr
  %task40 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task40, align 8
  %pid41 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid41, align 8
  %32 = ptrtoint ptr %pnum5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pnum5, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sync_erase.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.71, i32 noundef %31, i32 noundef %33, i64 noundef %add) #12
  br label %do.end45

do.end45:                                         ; preds = %if.then38, %do.body26
  %ec46 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %call9.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %ec46 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add, ptr %ec46, align 8
  %35 = ptrtoint ptr %pnum5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pnum5, align 4
  %call48 = tail call i32 @ubi_io_write_ec_hdr(ptr noundef %ubi, i32 noundef %36, ptr noundef nonnull %call9.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %do.end45.cleanup.sink.split_crit_edge

do.end45.cleanup.sink.split_crit_edge:            ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end51:                                         ; preds = %do.end45
  %conv52 = trunc i64 %add to i32
  %37 = ptrtoint ptr %ec1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv52, ptr %ec1, align 4
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %38 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ec1, align 4
  %max_ec = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 19
  %40 = ptrtoint ptr %max_ec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_ec, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp55 = icmp sgt i32 %39, %41
  br i1 %cmp55, label %if.then57, label %if.end51.if.end60_crit_edge

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %max_ec to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %max_ec, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end51.if.end60_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end60, %do.end45.cleanup.sink.split_crit_edge, %if.then23, %if.end14.cleanup.sink.split_crit_edge, %self_check_ec.exit
  %retval.1.i.i36.i.sink = phi ptr [ %call9.i.i.i, %self_check_ec.exit ], [ %call9.i.i, %do.end45.cleanup.sink.split_crit_edge ], [ %call9.i.i, %if.end14.cleanup.sink.split_crit_edge ], [ %call9.i.i, %if.end60 ], [ %call9.i.i, %if.then23 ]
  %retval.0.ph = phi i32 [ -22, %self_check_ec.exit ], [ %call48, %do.end45.cleanup.sink.split_crit_edge ], [ %call16, %if.end14.cleanup.sink.split_crit_edge ], [ 0, %if.end60 ], [ -22, %if.then23 ]
  tail call void @kfree(ptr noundef nonnull %retval.1.i.i36.i.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.i.i.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -22, %if.end8.i.i.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_sync_erase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_ec_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_ec_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_fastmap_work_fn(ptr noundef %wrk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wrk, i32 -4244
  %call = tail call i32 @ubi_update_fastmap(ptr noundef %add.ptr) #12
  %wl_lock = getelementptr i8, ptr %wrk, i32 168
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %fm_work_scheduled = getelementptr i8, ptr %wrk, i32 44
  %0 = ptrtoint ptr %fm_work_scheduled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fm_work_scheduled, align 8
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_peb_for_wl(ptr noundef %ubi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fm_wl_pool = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28
  %fm_eba_sem = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 29
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fm_eba_sem, i32 noundef 4) #12
  %0 = ptrtoint ptr %fm_eba_sem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %fm_eba_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %do.end, label %entry.do.end8_crit_edge, !prof !307

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.110, i32 noundef 265, i32 noundef %7) #15
  tail call void @dump_stack() #15
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 1
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  %size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 28, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.then9, label %if.end15

if.then9:                                         ; preds = %do.end8
  %fm_work_scheduled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 34
  %12 = ptrtoint ptr %fm_work_scheduled to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fm_work_scheduled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.then11, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %fm_work_scheduled to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %fm_work_scheduled, align 8
  %fm_work = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %fm_work) #12
  br label %cleanup

if.end15:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %9, 1
  %16 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %used, align 4
  %arrayidx = getelementptr [256 x i32], ptr %fm_wl_pool, i32 0, i32 %9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %lookuptbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %19 = ptrtoint ptr %lookuptbl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lookuptbl, align 8
  %arrayidx17 = getelementptr ptr, ptr %20, i32 %18
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then11, %if.then9.cleanup_crit_edge
  %retval.0 = phi ptr [ %22, %if.end15 ], [ null, %if.then11 ], [ null, %if.then9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_vid_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_copy_leb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_sync_erase(ptr noundef %ubi, ptr noundef %e, i32 noundef %vol_id, i32 noundef %lnum, i32 noundef %torture) unnamed_addr #0 align 64 {
entry:
  %wl_wrk = alloca %struct.ubi_work, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %wl_wrk) #12
  %0 = call ptr @memset(ptr %wl_wrk, i32 255, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_sync_erase.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_sync_erase, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 68
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %e, i32 0, i32 2
  %7 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pnum, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_sync_erase.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.112, i32 noundef %6, i32 noundef %8) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 5
  %10 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 4
  %11 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 3
  %12 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %e, ptr %12, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %vol_id, ptr %11, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %lnum, ptr %10, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %torture, ptr %9, align 4
  %call8 = call fastcc i32 @__erase_worker(ptr noundef %ubi, ptr noundef nonnull %wl_wrk)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %wl_wrk) #12
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__erase_worker(ptr noundef %ubi, ptr nocapture noundef readonly %wl_wrk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %e1 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 2
  %0 = ptrtoint ptr %e1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e1, align 4
  %pnum2 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pnum2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pnum2, align 4
  %vol_id3 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 3
  %4 = ptrtoint ptr %vol_id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vol_id3, align 4
  %lnum4 = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 4
  %6 = ptrtoint ptr %lnum4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lnum4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__erase_worker.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__erase_worker, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ec, align 4
  %16 = ptrtoint ptr %vol_id3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vol_id3, align 4
  %18 = ptrtoint ptr %lnum4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lnum4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__erase_worker.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.114, i32 noundef %13, i32 noundef %3, i32 noundef %15, i32 noundef %17, i32 noundef %19) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %torture = getelementptr inbounds %struct.ubi_work, ptr %wl_wrk, i32 0, i32 5
  %20 = ptrtoint ptr %torture to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %torture, align 4
  %call10 = tail call fastcc i32 @sync_erase(ptr noundef %ubi, ptr noundef %1, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end22

if.then12:                                        ; preds = %do.end
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %fm_disabled = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 25
  %22 = ptrtoint ptr %fm_disabled to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fm_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.then12.if.else_crit_edge

if.then12.if.else_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then12
  %fm_next_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 37
  %24 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fm_next_anchor, align 4
  %tobool14.not = icmp eq ptr %25, null
  br i1 %tobool14.not, label %land.lhs.true15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true15:                                  ; preds = %land.lhs.true
  %26 = ptrtoint ptr %pnum2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pnum2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %27)
  %cmp = icmp slt i32 %27, 64
  br i1 %cmp, label %if.then17, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %fm_next_anchor to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %fm_next_anchor, align 4
  %fm_do_produce_anchor = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 38
  %29 = ptrtoint ptr %fm_do_produce_anchor to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %fm_do_produce_anchor, align 8
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.then12.if.else_crit_edge
  %free = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 41
  tail call fastcc void @wl_tree_add(ptr noundef %1, ptr noundef %free)
  %free_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 42
  %30 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %free_count, align 8
  %inc = add i32 %31, 1
  store i32 %inc, ptr %free_count, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  tail call fastcc void @serve_prot_queue(ptr noundef %ubi)
  %call21 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %ubi, i32 noundef 1)
  br label %cleanup85

if.end22:                                         ; preds = %do.end
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.115, i32 noundef %3, i32 noundef %call10) #12
  %32 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call10, label %if.end34 [
    i32 -4, label %if.end22.if.then29_crit_edge
    i32 -12, label %if.end22.if.then29_crit_edge174
    i32 -11, label %if.end22.if.then29_crit_edge175
    i32 -16, label %if.end22.if.then29_crit_edge176
  ]

if.end22.if.then29_crit_edge176:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.end22.if.then29_crit_edge175:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.end22.if.then29_crit_edge174:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.end22.if.then29_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.then29:                                        ; preds = %if.end22.if.then29_crit_edge, %if.end22.if.then29_crit_edge174, %if.end22.if.then29_crit_edge175, %if.end22.if.then29_crit_edge176
  %call30 = tail call fastcc i32 @schedule_erase(ptr noundef %ubi, ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.cleanup85_crit_edge, label %cleanup

if.then29.cleanup85_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

cleanup:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %lookuptbl.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %33 = ptrtoint ptr %lookuptbl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lookuptbl.i, align 8
  %35 = ptrtoint ptr %pnum2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pnum2, align 4
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %38 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %1) #12
  br label %if.end84

if.end34:                                         ; preds = %if.end22
  %lookuptbl.i165 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 50
  %39 = ptrtoint ptr %lookuptbl.i165 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lookuptbl.i165, align 8
  %41 = ptrtoint ptr %pnum2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pnum2, align 4
  %arrayidx.i167 = getelementptr ptr, ptr %40, i32 %42
  %43 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.i167, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ubi_wl_entry_slab to i32))
  %44 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call10)
  %cmp35.not = icmp eq i32 %call10, -5
  br i1 %cmp35.not, label %if.end37, label %if.end34.if.end84_crit_edge

if.end34.if.end84_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.end37:                                         ; preds = %if.end34
  %bad_allowed = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 77
  %45 = ptrtoint ptr %bad_allowed to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %bad_allowed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool38.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.116, i32 noundef %3) #12
  br label %if.end84

if.end40:                                         ; preds = %if.end37
  %volumes_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #12
  %beb_rsvd_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 11
  %46 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %beb_rsvd_pebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp41 = icmp eq i32 %47, 0
  br i1 %cmp41, label %if.then42, label %if.end40.if.end48_crit_edge

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then42:                                        ; preds = %if.end40
  %avail_pebs = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 10
  %48 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %avail_pebs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp43 = icmp eq i32 %49, 0
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #12
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %ubi, ptr noundef nonnull @.str.117) #12
  br label %if.end84

if.end46:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %49, -1
  %50 = ptrtoint ptr %avail_pebs to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub, ptr %avail_pebs, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end40.if.end48_crit_edge
  %available_consumed.0 = phi i32 [ 1, %if.end46 ], [ 0, %if.end40.if.end48_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #12
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.118, i32 noundef %3) #12
  %call50 = tail call i32 @ubi_io_mark_bad(ptr noundef %ubi, i32 noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %out_ro

if.end53:                                         ; preds = %if.end48
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #12
  %51 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %beb_rsvd_pebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp56 = icmp sgt i32 %52, 0
  br i1 %cmp56, label %if.then57, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then57:                                        ; preds = %if.end53
  br i1 %cmp41, label %if.then59, label %if.then57.if.end61_crit_edge

if.then57.if.end61_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %avail_pebs60 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 10
  %53 = ptrtoint ptr %avail_pebs60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %avail_pebs60, align 8
  %add = add i32 %54, 1
  store i32 %add, ptr %avail_pebs60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then57.if.end61_crit_edge
  %sub63 = add nsw i32 %52, -1
  %55 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub63, ptr %beb_rsvd_pebs, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.end53.if.end64_crit_edge
  %available_consumed.2 = phi i32 [ 0, %if.end61 ], [ %available_consumed.0, %if.end53.if.end64_crit_edge ]
  %bad_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 62
  %56 = ptrtoint ptr %bad_peb_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bad_peb_count, align 8
  %add65 = add i32 %57, 1
  store i32 %add65, ptr %bad_peb_count, align 8
  %good_peb_count = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 63
  %58 = ptrtoint ptr %good_peb_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %good_peb_count, align 4
  %sub66 = add i32 %59, -1
  store i32 %sub66, ptr %good_peb_count, align 4
  tail call void @ubi_calculate_reserved(ptr noundef %ubi) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %available_consumed.2)
  %tobool67.not = icmp eq i32 %available_consumed.2, 0
  br i1 %tobool67.not, label %if.else69, label %if.then68

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.119) #12
  br label %if.end76

if.else69:                                        ; preds = %if.end64
  %60 = ptrtoint ptr %beb_rsvd_pebs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %beb_rsvd_pebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool71.not = icmp eq i32 %61, 0
  br i1 %tobool71.not, label %if.else74, label %if.then72

if.then72:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %ubi, ptr noundef nonnull @.str.120, i32 noundef %61) #12
  br label %if.end76

if.else74:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.121) #12
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then72, %if.then68
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #12
  br label %cleanup85

out_ro:                                           ; preds = %if.end48
  br i1 %cmp41, label %if.then79, label %out_ro.if.end84_crit_edge

out_ro.if.end84_crit_edge:                        ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then79:                                        ; preds = %out_ro
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %volumes_lock) #12
  %avail_pebs81 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 10
  %62 = ptrtoint ptr %avail_pebs81 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %avail_pebs81, align 8
  %add82 = add i32 %63, 1
  store i32 %add82, ptr %avail_pebs81, align 8
  tail call void @_raw_spin_unlock(ptr noundef %volumes_lock) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %out_ro.if.end84_crit_edge, %if.then44, %if.then39, %if.end34.if.end84_crit_edge, %cleanup
  %err.1173 = phi i32 [ %call50, %if.then79 ], [ %call50, %out_ro.if.end84_crit_edge ], [ -5, %if.then39 ], [ -5, %if.then44 ], [ %call10, %if.end34.if.end84_crit_edge ], [ %call30, %cleanup ]
  %ro_mode.i = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %64 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ro_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end84.cleanup85_crit_edge

if.end84.cleanup85_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

if.then.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %ro_mode.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %ro_mode.i, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %ubi, ptr noundef nonnull @.str.58) #12
  tail call void @dump_stack() #15
  br label %cleanup85

cleanup85:                                        ; preds = %if.then.i, %if.end84.cleanup85_crit_edge, %if.end76, %if.then29.cleanup85_crit_edge, %if.end19
  %retval.1 = phi i32 [ 0, %if.end76 ], [ %call21, %if.end19 ], [ %err.1173, %if.end84.cleanup85_crit_edge ], [ %err.1173, %if.then.i ], [ %call10, %if.then29.cleanup85_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @serve_prot_queue(ptr noundef %ubi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wl_lock = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %pq_head = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 45
  %0 = ptrtoint ptr %pq_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pq_head, align 8
  %arrayidx92 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 %1
  %2 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx92, align 8
  %cmp.not8295 = icmp eq ptr %3, %arrayidx92
  br i1 %cmp.not8295, label %entry.for.end_crit_edge, label %do.body.lr.ph.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.lr.ph.lr.ph:                              ; preds = %entry
  %used = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 39
  br label %do.body

for.cond:                                         ; preds = %list_del.exit
  %inc = add nuw nsw i32 %count.083, 1
  %4 = ptrtoint ptr %pq_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pq_head, align 8
  %arrayidx9 = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 %5
  %cmp.not = icmp eq ptr %tmp.086, %arrayidx9
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.do.body.backedge_crit_edge

for.cond.do.body.backedge_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.backedge:                                 ; preds = %if.then17.do.body.backedge_crit_edge, %for.cond.do.body.backedge_crit_edge
  %e.084.be = phi ptr [ %tmp.086, %for.cond.do.body.backedge_crit_edge ], [ %28, %if.then17.do.body.backedge_crit_edge ]
  %count.083.be = phi i32 [ %inc, %for.cond.do.body.backedge_crit_edge ], [ 0, %if.then17.do.body.backedge_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %do.body.lr.ph.lr.ph
  %e.084 = phi ptr [ %3, %do.body.lr.ph.lr.ph ], [ %e.084.be, %do.body.backedge ]
  %count.083 = phi i32 [ 0, %do.body.lr.ph.lr.ph ], [ %count.083.be, %do.body.backedge ]
  %6 = ptrtoint ptr %e.084 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.086 = load ptr, ptr %e.084, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @serve_prot_queue.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@serve_prot_queue, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !306

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %pnum = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.084, i32 0, i32 2
  %13 = ptrtoint ptr %pnum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pnum, align 4
  %ec = getelementptr inbounds %struct.ubi_wl_entry, ptr %e.084, i32 0, i32 1
  %15 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ec, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @serve_prot_queue.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.123, i32 noundef %12, i32 noundef %14, i32 noundef %16) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.084) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.084, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %e.084 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %e.084, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %23 = ptrtoint ptr %e.084 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %e.084, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %e.084, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @wl_tree_add(ptr noundef %e.084, ptr noundef %used)
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %count.083)
  %exitcond = icmp eq i32 %count.083, 33
  br i1 %exitcond, label %if.then17, label %for.cond

if.then17:                                        ; preds = %list_del.exit
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 522, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  tail call void @_raw_spin_lock(ptr noundef %wl_lock) #12
  %25 = ptrtoint ptr %pq_head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pq_head, align 8
  %arrayidx = getelementptr %struct.ubi_device, ptr %ubi, i32 0, i32 44, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 8
  %cmp.not82 = icmp eq ptr %28, %arrayidx
  br i1 %cmp.not82, label %if.then17.for.end_crit_edge, label %if.then17.do.body.backedge_crit_edge

if.then17.do.body.backedge_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.then17.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %26, %if.then17.for.end_crit_edge ], [ %5, %for.cond.for.end_crit_edge ]
  %add = add i32 %.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add)
  %cmp29 = icmp eq i32 %add, 10
  %spec.select = select i1 %cmp29, i32 0, i32 %add
  %29 = ptrtoint ptr %pq_head to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select, ptr %pq_head, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %spec.select)
  %30 = icmp ugt i32 %spec.select, 9
  br i1 %30, label %do.end49, label %for.end.do.end57_crit_edge, !prof !307

for.end.do.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

do.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = tail call i32 @llvm.read_register.i32(metadata !296) #12
  %and.i77 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i77 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task52, align 8
  %pid53 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid53, align 8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.122, i32 noundef 530, i32 noundef %36) #15
  tail call void @dump_stack() #15
  br label %do.end57

do.end57:                                         ; preds = %do.end49, %for.end.do.end57_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %wl_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_mark_bad(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_calculate_reserved(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !128, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !148, !150, !151, !152, !154, !156, !157, !158, !160, !162, !163, !165, !167, !169, !170, !172, !173, !174, !176, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !195, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !228, !230, !231, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !252, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !271, !273, !275, !277, !279, !281, !283, !284, !285, !287, !288, !290, !291, !292, !294, !295}
!llvm.named.register.sp = !{!296}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/wl.c", i32 1236, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubi_wl_put_peb.__UNIQUE_ID_ddebug254, !1, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/wl.c", i32 1237, i32 2}
!8 = !{ptr @ubi_wl_put_peb._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ubi_wl_put_peb._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @ubi_wl_put_peb._entry.5, !11, !"_entry", i1 false, i1 false}
!11 = !{!"../drivers/mtd/ubi/wl.c", i32 1238, i32 2}
!12 = !{ptr @ubi_wl_put_peb._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/ubi/wl.c", i32 1251, i32 3}
!15 = !{ptr @ubi_wl_put_peb.__UNIQUE_ID_ddebug255, !14, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/ubi/wl.c", i32 1268, i32 3}
!18 = !{ptr @ubi_wl_put_peb.__UNIQUE_ID_ddebug256, !17, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!19 = !{ptr @ubi_wl_put_peb._entry.9, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/mtd/ubi/wl.c", i32 1269, i32 3}
!21 = !{ptr @ubi_wl_put_peb._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ubi_wl_put_peb._entry.11, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/mtd/ubi/wl.c", i32 1285, i32 4}
!24 = !{ptr @ubi_wl_put_peb._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/ubi/wl.c", i32 1291, i32 18}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/ubi/wl.c", i32 1326, i32 15}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/ubi/wl.c", i32 1345, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ubi_wl_scrub_peb.__UNIQUE_ID_ddebug257, !30, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/ubi/wl.c", i32 1396, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ubi_wl_flush.__UNIQUE_ID_ddebug258, !34, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!37 = !{ptr @ubi_wl_flush._entry, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/mtd/ubi/wl.c", i32 1410, i32 5}
!39 = !{ptr @ubi_wl_flush._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/ubi/wl.c", i32 1623, i32 15}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/mtd/ubi/wl.c", i32 1639, i32 4}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/mtd/ubi/wl.c", i32 1650, i32 5}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/ubi/wl.c", i32 1661, i32 17}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/ubi/wl.c", i32 1668, i32 18}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/ubi/wl.c", i32 1680, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ubi_thread.__UNIQUE_ID_ddebug261, !51, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!54 = !{ptr @ubi_wl_init.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/mtd/ubi/wl.c", i32 1759, i32 2}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ubi_wl_init.__key.26, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/mtd/ubi/wl.c", i32 1760, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ubi_wl_init.__key.28, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/mtd/ubi/wl.c", i32 1761, i32 2}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/ubi/wl.c", i32 1765, i32 25}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/ubi/wl.c", i32 1798, i32 3}
!67 = !{ptr @ubi_wl_init._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ubi_wl_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/ubi/wl.c", i32 1823, i32 5}
!71 = !{ptr @ubi_wl_init.__UNIQUE_ID_ddebug262, !70, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/ubi/wl.c", i32 1827, i32 5}
!74 = !{ptr @ubi_wl_init.__UNIQUE_ID_ddebug263, !73, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!75 = !{ptr @ubi_wl_init._entry.34, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/mtd/ubi/wl.c", i32 1842, i32 4}
!77 = !{ptr @ubi_wl_init._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/ubi/wl.c", i32 1876, i32 2}
!80 = !{ptr @ubi_wl_init.__UNIQUE_ID_ddebug264, !79, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!81 = !{ptr @ubi_wl_init._entry.37, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/mtd/ubi/wl.c", i32 1878, i32 2}
!83 = !{ptr @ubi_wl_init._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/ubi/wl.c", i32 1884, i32 16}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/ubi/wl.c", i32 1887, i32 17}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/ubi/wl.c", i32 1938, i32 2}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ubi_wl_close.__UNIQUE_ID_ddebug265, !89, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 223, i32 17}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 235, i32 17}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 248, i32 2}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ubi_wl_get_peb._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ubi_wl_get_peb._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 339, i32 2}
!103 = !{ptr @ubi_wl_put_fm_peb.__UNIQUE_ID_ddebug267, !102, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!104 = !{ptr @ubi_wl_put_fm_peb._entry, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 341, i32 2}
!106 = !{ptr @ubi_wl_put_fm_peb._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @ubi_wl_put_fm_peb._entry.48, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 342, i32 2}
!109 = !{ptr @ubi_wl_put_fm_peb._entry_ptr.49, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @ubi_wl_put_fm_peb._entry.50, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 353, i32 3}
!112 = !{ptr @ubi_wl_put_fm_peb._entry_ptr.51, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/ubi/wl.c", i32 247, i32 4}
!115 = !{ptr @in_wl_tree._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @in_wl_tree._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @in_wl_tree._entry.53, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/mtd/ubi/wl.c", i32 256, i32 4}
!119 = !{ptr @in_wl_tree._entry_ptr.54, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/ubi/wl.c", i32 425, i32 2}
!122 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @prot_queue_del.__UNIQUE_ID_ddebug232, !121, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/ubi/wl.c", i32 2034, i32 15}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/ubi/ubi.h", i32 1160, i32 17}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/ubi/wl.c", i32 588, i32 2}
!130 = !{ptr @schedule_erase._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @schedule_erase._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/ubi/wl.c", i32 590, i32 2}
!134 = !{ptr @schedule_erase.__UNIQUE_ID_ddebug236, !133, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/ubi/wl.c", i32 155, i32 4}
!137 = !{ptr @wl_tree_add._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @wl_tree_add._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/ubi/wl.c", i32 1035, i32 3}
!141 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @ensure_wear_leveling.__UNIQUE_ID_ddebug250, !140, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/ubi/wl.c", i32 1037, i32 3}
!145 = !{ptr @ensure_wear_leveling.__UNIQUE_ID_ddebug251, !144, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/ubi/wl.c", i32 212, i32 2}
!150 = !{ptr @do_work._entry, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @do_work._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/ubi/wl.c", i32 222, i32 16}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/ubi/wl.c", i32 445, i32 2}
!156 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @sync_erase.__UNIQUE_ID_ddebug233, !155, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/ubi/wl.c", i32 465, i32 16}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mtd/ubi/wl.c", i32 471, i32 2}
!162 = !{ptr @sync_erase.__UNIQUE_ID_ddebug234, !161, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mtd/ubi/wl.c", i32 1981, i32 16}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/ubi/wl.c", i32 1982, i32 16}
!167 = !{ptr @ubi_fastmap_init.__key, !168, !"__key", i1 false, i1 false}
!168 = !{!"../drivers/mtd/ubi/wl.h", i32 13, i32 2}
!169 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/ubi/wl.c", i32 1698, i32 3}
!172 = !{ptr @shutdown_work._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @shutdown_work._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/ubi/wl.c", i32 2011, i32 15}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mtd/ubi/wl.c", i32 388, i32 16}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/ubi/wl.c", i32 400, i32 2}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @wl_get_wle.__UNIQUE_ID_ddebug231, !179, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 188, i32 3}
!184 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @produce_free_peb.__UNIQUE_ID_ddebug266, !183, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mtd/ubi/wl.c", i32 304, i32 2}
!188 = !{ptr @prot_queue_add._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @prot_queue_add._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/ubi/wl.c", i32 306, i32 2}
!192 = !{ptr @prot_queue_add.__UNIQUE_ID_ddebug230, !191, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mtd/ubi/wl.c", i32 670, i32 2}
!195 = !{ptr @wear_leveling_worker._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @wear_leveling_worker._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @wear_leveling_worker._entry.85, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/mtd/ubi/wl.c", i32 671, i32 2}
!199 = !{ptr @wear_leveling_worker._entry_ptr.86, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mtd/ubi/wl.c", i32 685, i32 3}
!202 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug238, !201, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mtd/ubi/wl.c", i32 714, i32 3}
!205 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug239, !204, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mtd/ubi/wl.c", i32 731, i32 4}
!208 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug240, !207, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!209 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mtd/ubi/wl.c", i32 741, i32 3}
!211 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug241, !210, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!212 = !{ptr @.str.91, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mtd/ubi/wl.c", i32 753, i32 3}
!214 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug242, !213, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!215 = !{ptr @.str.92, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/mtd/ubi/wl.c", i32 785, i32 4}
!217 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug243, !216, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/mtd/ubi/wl.c", i32 794, i32 4}
!220 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug244, !219, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!221 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mtd/ubi/wl.c", i32 804, i32 4}
!223 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug245, !222, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!224 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mtd/ubi/wl.c", i32 810, i32 16}
!226 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/mtd/ubi/wl.c", i32 857, i32 18}
!228 = !{ptr @wear_leveling_worker._entry.97, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/mtd/ubi/wl.c", i32 869, i32 3}
!230 = !{ptr @wear_leveling_worker._entry_ptr.98, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.99, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/mtd/ubi/wl.c", i32 874, i32 16}
!233 = !{ptr @.str.100, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mtd/ubi/wl.c", i32 899, i32 3}
!235 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug246, !234, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!236 = !{ptr @.str.101, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mtd/ubi/wl.c", i32 906, i32 2}
!238 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug247, !237, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mtd/ubi/wl.c", i32 918, i32 3}
!241 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug248, !240, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mtd/ubi/wl.c", i32 921, i32 3}
!244 = !{ptr @wear_leveling_worker.__UNIQUE_ID_ddebug249, !243, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!245 = !{ptr @wear_leveling_worker._entry.104, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/mtd/ubi/wl.c", i32 938, i32 2}
!247 = !{ptr @wear_leveling_worker._entry_ptr.105, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/mtd/ubi/wl.c", i32 964, i32 16}
!250 = !{ptr @.str.107, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/mtd/ubi/wl.c", i32 967, i32 16}
!252 = !{ptr @wear_leveling_worker._entry.108, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/mtd/ubi/wl.c", i32 982, i32 2}
!254 = !{ptr @wear_leveling_worker._entry_ptr.109, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mtd/ubi/fastmap-wl.c", i32 265, i32 2}
!257 = !{ptr @get_peb_for_wl._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @get_peb_for_wl._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.111, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mtd/ubi/wl.c", i32 625, i32 2}
!261 = !{ptr @.str.112, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @do_sync_erase.__UNIQUE_ID_ddebug237, !260, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!263 = !{ptr @.str.113, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mtd/ubi/wl.c", i32 1081, i32 2}
!265 = !{ptr @.str.114, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @__erase_worker.__UNIQUE_ID_ddebug252, !264, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!267 = !{ptr @.str.115, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/mtd/ubi/wl.c", i32 1113, i32 15}
!269 = !{ptr @.str.116, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/mtd/ubi/wl.c", i32 1141, i32 16}
!271 = !{ptr @.str.117, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/mtd/ubi/wl.c", i32 1149, i32 17}
!273 = !{ptr @.str.118, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/mtd/ubi/wl.c", i32 1157, i32 15}
!275 = !{ptr @.str.119, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mtd/ubi/wl.c", i32 1178, i32 17}
!277 = !{ptr @.str.120, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/mtd/ubi/wl.c", i32 1180, i32 16}
!279 = !{ptr @.str.121, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/mtd/ubi/wl.c", i32 1183, i32 17}
!281 = !{ptr @.str.122, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/mtd/ubi/wl.c", i32 511, i32 3}
!283 = !{ptr @.str.123, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @serve_prot_queue.__UNIQUE_ID_ddebug235, !282, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!285 = !{ptr @serve_prot_queue._entry, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/mtd/ubi/wl.c", i32 530, i32 2}
!287 = !{ptr @serve_prot_queue._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.124, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/mtd/ubi/wl.c", i32 546, i32 2}
!290 = !{ptr @__schedule_ubi_work._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @__schedule_ubi_work._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.125, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/mtd/ubi/wl.c", i32 1206, i32 3}
!294 = !{ptr @.str.126, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @erase_worker.__UNIQUE_ID_ddebug253, !293, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!296 = !{!"sp"}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{i64 2148256029, i64 2148256034, i64 2148256047, i64 2148256091, i64 2148256125, i64 2148256146}
!307 = !{!"branch_weights", i32 1, i32 2000}
!308 = !{!"branch_weights", i32 2000, i32 1}
!309 = !{i64 2154403284}
!310 = !{i64 2154408010}
!311 = !{!"auto-init"}
