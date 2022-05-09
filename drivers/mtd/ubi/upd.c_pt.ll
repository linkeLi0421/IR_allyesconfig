; ModuleID = '/llk/IR_all_yes/drivers/mtd/ubi/upd.c_pt.bc'
source_filename = "../drivers/mtd/ubi/upd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
%struct.ubi_leb_change_req = type { i32, i32, i8, [7 x i8] }

@ubi_start_update.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ubi\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ubi_start_update\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mtd/ubi/upd.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UBI DBG gen (pid %d): start update of volume %d, %llu bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@ubi_start_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@ubi_start_update._entry_ptr = internal global ptr @ubi_start_update._entry, section ".printk_index", align 4
@ubi_start_leb_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubi_start_leb_change\00", [43 x i8] zeroinitializer }, align 32
@ubi_start_leb_change._entry_ptr = internal global ptr @ubi_start_leb_change._entry, section ".printk_index", align 4
@ubi_start_leb_change.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UBI DBG gen (pid %d): start changing LEB %d:%d, %u bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@ubi_more_update_data.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ubi_more_update_data\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"UBI DBG gen (pid %d): write %d of %lld bytes, %lld already passed\0A\00", [61 x i8] zeroinitializer }, align 32
@ubi_more_update_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.7, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_more_update_data._entry_ptr = internal global ptr @ubi_more_update_data._entry, section ".printk_index", align 4
@ubi_more_update_data._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.7, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_more_update_data._entry_ptr.10 = internal global ptr @ubi_more_update_data._entry.9, section ".printk_index", align 4
@ubi_more_leb_change_data.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.8, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ubi_more_leb_change_data\00", [39 x i8] zeroinitializer }, align 32
@ubi_more_leb_change_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.11, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ubi_more_leb_change_data._entry_ptr = internal global ptr @ubi_more_leb_change_data._entry, section ".printk_index", align 4
@set_update_marker.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_update_marker\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UBI DBG gen (pid %d): set update marker for volume %d\0A\00", [41 x i8] zeroinitializer }, align 32
@set_update_marker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_update_marker._entry_ptr = internal global ptr @set_update_marker._entry, section ".printk_index", align 4
@set_update_marker.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"UBI DBG gen (pid %d): already set\0A\00", [61 x i8] zeroinitializer }, align 32
@clear_update_marker.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clear_update_marker\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UBI DBG gen (pid %d): clear update marker for volume %d\0A\00", [39 x i8] zeroinitializer }, align 32
@clear_update_marker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.15, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clear_update_marker._entry_ptr = internal global ptr @clear_update_marker._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@write_leb.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_leb\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"UBI DBG gen (pid %d): all %d bytes contain 0xFF - skip\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 119, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 120, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 171, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 173, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 270, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 308, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 349, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 385, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 412, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 46, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 49, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 50, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 80, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 83, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 230, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 214, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 156, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [25 x i8] c"../drivers/mtd/ubi/upd.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 230, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @clear_update_marker._entry, ptr @clear_update_marker._entry_ptr, ptr @set_update_marker._entry, ptr @set_update_marker._entry_ptr, ptr @ubi_more_leb_change_data._entry, ptr @ubi_more_leb_change_data._entry_ptr, ptr @ubi_more_update_data._entry, ptr @ubi_more_update_data._entry.9, ptr @ubi_more_update_data._entry_ptr, ptr @ubi_more_update_data._entry_ptr.10, ptr @ubi_start_leb_change._entry, ptr @ubi_start_leb_change._entry_ptr, ptr @ubi_start_update._entry, ptr @ubi_start_update._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_start_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_start_leb_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_more_update_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_more_update_data._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ubi_more_leb_change_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_update_marker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_update_marker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_start_update(ptr noundef %ubi, ptr noundef %vol, i64 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_start_update.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_start_update, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #7
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
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %6 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_start_update.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.3, i32 noundef %5, i32 noundef %7, i64 noundef %bytes) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %updating = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 25
  %8 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %updating, align 8
  %9 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %do.body4.do.end32_crit_edge, label %do.end24, !prof !72

do.body4.do.end32_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end24:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i101 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i101 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task27, align 8
  %pid28 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid28, align 8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef %15) #10
  tail call void @dump_stack() #10
  br label %do.end32

do.end32:                                         ; preds = %do.end24, %do.body4.do.end32_crit_edge
  %16 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load34 = load i8, ptr %updating, align 8
  %bf.set = or i8 %bf.load34, 8
  store i8 %bf.set, ptr %updating, align 8
  %leb_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 70
  %17 = ptrtoint ptr %leb_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %leb_size, align 8
  %call36 = tail call noalias ptr @vmalloc(i32 noundef %18) #11
  %upd_buf = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 23
  %19 = ptrtoint ptr %upd_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call36, ptr %upd_buf, align 8
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %do.end32.cleanup_crit_edge, label %if.end40

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %do.end32
  %call41 = tail call fastcc i32 @set_update_marker(ptr noundef %ubi, ptr noundef %vol)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.cond.preheader, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end40
  %reserved_pebs = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 9
  %20 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reserved_pebs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp106 = icmp sgt i32 %21, 0
  br i1 %cmp106, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0107, 1
  %22 = ptrtoint ptr %reserved_pebs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reserved_pebs, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0107 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call45 = tail call i32 @ubi_eba_unmap_leb(ptr noundef %ubi, ptr noundef %vol, i32 noundef %i.0107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call49 = tail call i32 @ubi_wl_flush(ptr noundef %ubi, i32 noundef -1, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bytes)
  %cmp53 = icmp eq i64 %bytes, 0
  br i1 %cmp53, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.end52
  %call55 = tail call fastcc i32 @clear_update_marker(ptr noundef %ubi, ptr noundef %vol, i64 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %upd_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %upd_buf, align 8
  tail call void @vfree(ptr noundef %25) #7
  %26 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load61 = load i8, ptr %updating, align 8
  %bf.clear62 = and i8 %bf.load61, -9
  store i8 %bf.clear62, ptr %updating, align 8
  br label %cleanup

if.end64:                                         ; preds = %if.end52
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 11
  %27 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usable_leb_size, align 4
  %conv = sext i32 %28 to i64
  %add = add i64 %bytes, -1
  %sub = add i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !72

if.then168.i.i:                                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %28
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %sub) #12, !srcloc !73
  %asmresult1.i.i.i = extractvalue { i64, i64 } %29, 1
  %extract.t104 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t104, %if.else174.i.i ]
  %upd_ebs = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 19
  %30 = ptrtoint ptr %upd_ebs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %dividend.addr.0.i.i.off0, ptr %upd_ebs, align 4
  %upd_bytes = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 21
  %31 = ptrtoint ptr %upd_bytes to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %bytes, ptr %upd_bytes, align 8
  %upd_received = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 22
  %32 = ptrtoint ptr %upd_received to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %upd_received, align 8
  br label %cleanup

cleanup:                                          ; preds = %div_u64.exit, %if.end58, %if.then54.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ 0, %div_u64.exit ], [ -12, %do.end32.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call49, %for.end.cleanup_crit_edge ], [ %call55, %if.then54.cleanup_crit_edge ], [ %call45, %for.body.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_update_marker(ptr noundef %ubi, ptr nocapture noundef %vol) unnamed_addr #0 align 64 {
entry:
  %vtbl_rec = alloca %struct.ubi_vtbl_record, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %vtbl_rec) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_update_marker.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_update_marker, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #7
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
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %6 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_update_marker.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.13, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %upd_marker = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 25
  %8 = ptrtoint ptr %upd_marker to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %upd_marker, align 8
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %vtbl50 = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %10 = ptrtoint ptr %vtbl50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vtbl50, align 4
  %vol_id51 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %12 = ptrtoint ptr %vol_id51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vol_id51, align 4
  br i1 %tobool4.not, label %if.end49, label %do.body6

do.body6:                                         ; preds = %do.end
  %upd_marker8 = getelementptr %struct.ubi_vtbl_record, ptr %11, i32 %13, i32 4
  %14 = ptrtoint ptr %upd_marker8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %upd_marker8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %do.end21, label %do.body6.do.body30_crit_edge, !prof !74

do.body6.do.body30_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

do.end21:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i73 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i73 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task24, align 8
  %pid25 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid25, align 8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef 49, i32 noundef %21) #10
  tail call void @dump_stack() #10
  br label %do.body30

do.body30:                                        ; preds = %do.end21, %do.body6.do.body30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_update_marker.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_update_marker, %if.then42)) #7
          to label %cleanup [label %if.then42], !srcloc !71

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i74 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i74 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task44, align 8
  %pid45 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid45, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_update_marker.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.14, i32 noundef %27) #7
  br label %cleanup

if.end49:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx52 = getelementptr %struct.ubi_vtbl_record, ptr %11, i32 %13
  %28 = call ptr @memcpy(ptr %vtbl_rec, ptr %arrayidx52, i32 172)
  %upd_marker53 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 4
  %29 = ptrtoint ptr %upd_marker53 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %upd_marker53, align 1
  %device_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %device_mutex, i32 noundef 0) #7
  %30 = ptrtoint ptr %vol_id51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vol_id51, align 4
  %call55 = call i32 @ubi_change_vtbl_record(ptr noundef %ubi, i32 noundef %31, ptr noundef nonnull %vtbl_rec) #7
  %32 = ptrtoint ptr %upd_marker to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load57 = load i8, ptr %upd_marker, align 8
  %bf.set = or i8 %bf.load57, 16
  store i8 %bf.set, ptr %upd_marker, align 8
  call void @mutex_unlock(ptr noundef %device_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then42, %do.body30
  %retval.0 = phi i32 [ %call55, %if.end49 ], [ 0, %if.then42 ], [ 0, %do.body30 ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %vtbl_rec) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_unmap_leb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clear_update_marker(ptr noundef %ubi, ptr nocapture noundef %vol, i64 noundef %bytes) unnamed_addr #0 align 64 {
entry:
  %vtbl_rec = alloca %struct.ubi_vtbl_record, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %vtbl_rec) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clear_update_marker.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clear_update_marker, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #7
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
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %6 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vol_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clear_update_marker.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vtbl = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 17
  %8 = ptrtoint ptr %vtbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vtbl, align 4
  %vol_id4 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %10 = ptrtoint ptr %vol_id4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vol_id4, align 4
  %arrayidx = getelementptr %struct.ubi_vtbl_record, ptr %9, i32 %11
  %12 = call ptr @memcpy(ptr %vtbl_rec, ptr %arrayidx, i32 172)
  %upd_marker = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 25
  %13 = ptrtoint ptr %upd_marker to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %upd_marker, align 8
  %14 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  br i1 %tobool6.not, label %do.end.do.end20_crit_edge, label %land.rhs, !prof !74

do.end.do.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

land.rhs:                                         ; preds = %do.end
  %upd_marker7 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 4
  %15 = ptrtoint ptr %upd_marker7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %upd_marker7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8 = icmp eq i8 %16, 0
  br i1 %tobool8, label %land.rhs.do.end20_crit_edge, label %land.rhs.do.end28_crit_edge, !prof !74

land.rhs.do.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

land.rhs.do.end20_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end20:                                         ; preds = %land.rhs.do.end20_crit_edge, %do.end.do.end20_crit_edge
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i69 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i69 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task23, align 8
  %pid24 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid24, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef 83, i32 noundef %22) #10
  tail call void @dump_stack() #10
  br label %do.end28

do.end28:                                         ; preds = %do.end20, %land.rhs.do.end28_crit_edge
  %upd_marker29 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %vtbl_rec, i32 0, i32 4
  %23 = ptrtoint ptr %upd_marker29 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %upd_marker29, align 1
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 10
  %24 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vol_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp = icmp eq i32 %25, 4
  br i1 %cmp, label %if.then31, label %do.end28.if.end43_crit_edge

do.end28.if.end43_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then31:                                        ; preds = %do.end28
  %26 = ptrtoint ptr %upd_marker to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load32 = load i8, ptr %upd_marker, align 8
  %bf.clear33 = and i8 %bf.load32, -33
  store i8 %bf.clear33, ptr %upd_marker, align 8
  %used_bytes = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 14
  %27 = ptrtoint ptr %used_bytes to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %bytes, ptr %used_bytes, align 8
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 11
  %28 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usable_leb_size, align 4
  %last_eb_bytes = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes)
  %cmp164.i = icmp ult i64 %bytes, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !72

if.then168.i:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %bytes to i32
  %.frozen = freeze i32 %29
  %div172.i = udiv i32 %conv169.i, %.frozen
  %30 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i, %30
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %bytes) #12, !srcloc !73
  %asmresult.i261.i = extractvalue { i64, i64 } %31, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %31, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t72 = trunc i64 %asmresult1.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t72, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %32 = ptrtoint ptr %last_eb_bytes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %__rem.0.i, ptr %last_eb_bytes, align 4
  %used_ebs = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 12
  %33 = ptrtoint ptr %used_ebs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dividend.addr.0.i.off0, ptr %used_ebs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool37.not = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %dividend.addr.0.i.off0, 1
  %34 = ptrtoint ptr %used_ebs to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %used_ebs, align 8
  br label %if.end43

if.else:                                          ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %last_eb_bytes to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %29, ptr %last_eb_bytes, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then38, %do.end28.if.end43_crit_edge
  %device_mutex = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %device_mutex, i32 noundef 0) #7
  %36 = ptrtoint ptr %vol_id4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vol_id4, align 4
  %call45 = call i32 @ubi_change_vtbl_record(ptr noundef %ubi, i32 noundef %37, ptr noundef nonnull %vtbl_rec) #7
  %38 = ptrtoint ptr %upd_marker to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load47 = load i8, ptr %upd_marker, align 8
  %bf.clear48 = and i8 %bf.load47, -17
  store i8 %bf.clear48, ptr %upd_marker, align 8
  call void @mutex_unlock(ptr noundef %device_mutex) #7
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %vtbl_rec) #7
  ret i32 %call45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_start_leb_change(ptr noundef %ubi, ptr noundef %vol, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %updating = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 25
  %0 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %updating, align 8
  %1 = and i8 %bf.load, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %entry.do.body13_crit_edge, label %do.end, !prof !72

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #7
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
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 171, i32 noundef %7) #10
  tail call void @dump_stack() #10
  br label %do.body13

do.body13:                                        ; preds = %do.end, %entry.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_start_leb_change.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_start_leb_change, %if.then23)) #7
          to label %do.end28 [label %if.then23], !srcloc !71

if.then23:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i64 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i64 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task25, align 8
  %pid26 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid26, align 8
  %vol_id = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 3
  %14 = ptrtoint ptr %vol_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vol_id, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %req, align 1
  %bytes = getelementptr inbounds %struct.ubi_leb_change_req, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %bytes, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_start_leb_change.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.6, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body13
  %bytes29 = getelementptr inbounds %struct.ubi_leb_change_req, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %bytes29 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %bytes29, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then30, label %if.end33

if.then30:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %req, align 1
  %call32 = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %ubi, ptr noundef %vol, i32 noundef %23, ptr noundef null, i32 noundef 0) #7
  br label %return

if.end33:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  %conv = sext i32 %21 to i64
  %upd_bytes = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 21
  %24 = ptrtoint ptr %upd_bytes to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %upd_bytes, align 8
  %upd_received = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 22
  %25 = ptrtoint ptr %upd_received to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %upd_received, align 8
  %26 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load36 = load i8, ptr %updating, align 8
  %bf.set = or i8 %bf.load36, 4
  store i8 %bf.set, ptr %updating, align 8
  %27 = ptrtoint ptr %req to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %req, align 1
  %ch_lnum = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 20
  %29 = ptrtoint ptr %ch_lnum to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ch_lnum, align 8
  %30 = ptrtoint ptr %bytes29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %bytes29, align 1
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %32 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_io_size, align 4
  %sub = add i32 %31, -1
  %add = add i32 %sub, %33
  %neg = sub i32 0, %33
  %and = and i32 %add, %neg
  %call42 = tail call noalias ptr @vmalloc(i32 noundef %and) #11
  %upd_buf = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 23
  %34 = ptrtoint ptr %upd_buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call42, ptr %upd_buf, align 8
  %tobool44.not = icmp eq ptr %call42, null
  %. = select i1 %tobool44.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end33, %if.then30
  %retval.0 = phi i32 [ %call32, %if.then30 ], [ %., %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_atomic_leb_change(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_more_update_data(ptr noundef %ubi, ptr noundef %vol, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_more_update_data.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_more_update_data, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #7
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
  %upd_bytes = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 21
  %6 = ptrtoint ptr %upd_bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %upd_bytes, align 8
  %upd_received = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 22
  %8 = ptrtoint ptr %upd_received to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %upd_received, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_more_update_data.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %count, i64 noundef %7, i64 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %10 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup157_crit_edge

do.end.cleanup157_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end6:                                          ; preds = %do.end
  %upd_received7 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 22
  %12 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %upd_received7, align 8
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 11
  %14 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %13)
  %cmp164.i = icmp ult i64 %13, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !72

if.then168.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %13 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %15
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %16 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %16
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %13) #12, !srcloc !73
  %asmresult.i261.i = extractvalue { i64, i64 } %17, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t293 = trunc i64 %asmresult1.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t293, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %conv10 = sext i32 %count to i64
  %add = add i64 %13, %conv10
  %upd_bytes11 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 21
  %18 = ptrtoint ptr %upd_bytes11 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %upd_bytes11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %19)
  %cmp = icmp sgt i64 %add, %19
  %sub = sub i64 %19, %13
  %conv16 = trunc i64 %sub to i32
  %count.addr.0 = select i1 %cmp, i32 %conv16, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %cmp18.not = icmp eq i32 %__rem.0.i, 0
  br i1 %cmp18.not, label %div_u64_rem.exit.if.end79_crit_edge, label %if.then20

div_u64_rem.exit.if.end79_crit_edge:              ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then20:                                        ; preds = %div_u64_rem.exit
  %sub22 = sub i32 %15, %__rem.0.i
  %20 = tail call i32 @llvm.smin.i32(i32 %sub22, i32 %count.addr.0)
  %upd_buf = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 23
  %21 = ptrtoint ptr %upd_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %upd_buf, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 %__rem.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.i.i = icmp slt i32 %20, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then20
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup157_crit_edge, label %if.then27.i.i, !prof !72

land.rhs16.i.i.cleanup157_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %cleanup157

if.then.i.i.i:                                    ; preds = %if.then20
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %20, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %20, i32 -1226833920) #12, !srcloc !75
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !72

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %20) #7
  %24 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !76
  %and.i.i.i.i = and i32 %26, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %20) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %20, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %20, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end30, label %if.then11.i.i, !prof !72

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %20, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %27 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup157

if.end30:                                         ; preds = %if.end.i.i
  %add31 = add i32 %20, %__rem.0.i
  %28 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %29)
  %cmp33 = icmp eq i32 %add31, %29
  br i1 %cmp33, label %if.end30.if.then41_crit_edge, label %lor.lhs.false

if.end30.if.then41_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

lor.lhs.false:                                    ; preds = %if.end30
  %30 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %upd_received7, align 8
  %conv36291 = zext i32 %20 to i64
  %add37 = add i64 %31, %conv36291
  %32 = ptrtoint ptr %upd_bytes11 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %upd_bytes11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add37, i64 %33)
  %cmp39 = icmp eq i64 %add37, %33
  br i1 %cmp39, label %lor.lhs.false.if.then41_crit_edge, label %lor.lhs.false.if.end72_crit_edge

lor.lhs.false.if.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false.if.then41_crit_edge, %if.end30.if.then41_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %29)
  %cmp45.not = icmp sgt i32 %add31, %29
  br i1 %cmp45.not, label %do.end58, label %if.then41.do.end66_crit_edge, !prof !74

if.then41.do.end66_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end58:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i278 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i278 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid62, align 8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef 308, i32 noundef %39) #10
  tail call void @dump_stack() #10
  br label %do.end66

do.end66:                                         ; preds = %do.end58, %if.then41.do.end66_crit_edge
  %40 = ptrtoint ptr %upd_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %upd_buf, align 8
  %upd_ebs = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 19
  %42 = ptrtoint ptr %upd_ebs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %upd_ebs, align 4
  %call68 = tail call fastcc i32 @write_leb(ptr noundef %ubi, ptr noundef %vol, i32 noundef %dividend.addr.0.i.off0, ptr noundef %41, i32 noundef %add31, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end66.if.end72_crit_edge, label %do.end66.cleanup157_crit_edge

do.end66.cleanup157_crit_edge:                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

do.end66.if.end72_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  %.pre318 = zext i32 %20 to i64
  br label %if.end72

if.end72:                                         ; preds = %do.end66.if.end72_crit_edge, %lor.lhs.false.if.end72_crit_edge
  %conv73290.pre-phi = phi i64 [ %.pre318, %do.end66.if.end72_crit_edge ], [ %conv36291, %lor.lhs.false.if.end72_crit_edge ]
  %44 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %upd_received7, align 8
  %add75 = add i64 %45, %conv73290.pre-phi
  store i64 %add75, ptr %upd_received7, align 8
  %sub76 = sub i32 %count.addr.0, %20
  %add.ptr77 = getelementptr i8, ptr %buf, i32 %20
  %add78 = add i32 %dividend.addr.0.i.off0, 1
  br label %if.end79

if.end79:                                         ; preds = %if.end72, %div_u64_rem.exit.if.end79_crit_edge
  %lnum.0 = phi i32 [ %add78, %if.end72 ], [ %dividend.addr.0.i.off0, %div_u64_rem.exit.if.end79_crit_edge ]
  %count.addr.1 = phi i32 [ %sub76, %if.end72 ], [ %count.addr.0, %div_u64_rem.exit.if.end79_crit_edge ]
  %buf.addr.0 = phi ptr [ %add.ptr77, %if.end72 ], [ %buf, %div_u64_rem.exit.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %tobool80.not304 = icmp eq i32 %count.addr.1, 0
  br i1 %tobool80.not304, label %if.end79.do.body116_crit_edge, label %while.body.lr.ph

if.end79.do.body116_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

while.body.lr.ph:                                 ; preds = %if.end79
  %upd_buf87 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 23
  %upd_ebs104 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %if.end109.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.1307 = phi ptr [ %buf.addr.0, %while.body.lr.ph ], [ %add.ptr115, %if.end109.while.body_crit_edge ]
  %count.addr.2306 = phi i32 [ %count.addr.1, %while.body.lr.ph ], [ %sub113, %if.end109.while.body_crit_edge ]
  %lnum.1305 = phi i32 [ %lnum.0, %while.body.lr.ph ], [ %add114, %if.end109.while.body_crit_edge ]
  %46 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %usable_leb_size, align 4
  %48 = tail call i32 @llvm.smin.i32(i32 %count.addr.2306, i32 %47)
  %49 = ptrtoint ptr %upd_buf87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %upd_buf87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp9.i.i248 = icmp slt i32 %48, 0
  br i1 %cmp9.i.i248, label %land.rhs16.i.i251, label %if.then.i.i.i254

land.rhs16.i.i251:                                ; preds = %while.body
  %.b1.i.i250 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i250, label %land.rhs16.i.i251.cleanup157_crit_edge, label %if.then27.i.i252, !prof !72

land.rhs16.i.i251.cleanup157_crit_edge:           ; preds = %land.rhs16.i.i251
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.then27.i.i252:                                 ; preds = %land.rhs16.i.i251
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %cleanup157

if.then.i.i.i254:                                 ; preds = %while.body
  tail call void @__check_object_size(ptr noundef %50, i32 noundef %48, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i255 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i255, label %if.then.i.i.i254.if.end.i.i269_crit_edge, label %land.lhs.true.i.i259

if.then.i.i.i254.if.end.i.i269_crit_edge:         ; preds = %if.then.i.i.i254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i269

land.lhs.true.i.i259:                             ; preds = %if.then.i.i.i254
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.1307, i32 %48, i32 -1226833920) #12, !srcloc !75
  %asmresult.i.i257 = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i257)
  %cmp.i6.i258 = icmp eq i32 %asmresult.i.i257, 0
  br i1 %cmp.i6.i258, label %if.then.i7.i266, label %land.lhs.true.i.i259.if.end.i.i269_crit_edge, !prof !72

land.lhs.true.i.i259.if.end.i.i269_crit_edge:     ; preds = %land.lhs.true.i.i259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i269

if.then.i7.i266:                                  ; preds = %land.lhs.true.i.i259
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i260 = tail call zeroext i1 @__kasan_check_write(ptr noundef %50, i32 noundef %48) #7
  %52 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i.i.i.i.i.i261 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i261 to ptr
  %cpu_domain.i.i.i.i.i262 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 4
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i262) #5, !srcloc !76
  %and.i.i.i.i263 = and i32 %54, -13
  %or.i.i.i.i264 = or i32 %and.i.i.i.i263, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i264) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %call1.i.i.i265 = tail call i32 @arm_copy_from_user(ptr noundef %50, ptr noundef %buf.addr.1307, i32 noundef %48) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  br label %if.end.i.i269

if.end.i.i269:                                    ; preds = %if.then.i7.i266, %land.lhs.true.i.i259.if.end.i.i269_crit_edge, %if.then.i.i.i254.if.end.i.i269_crit_edge
  %res.0.i.i267 = phi i32 [ %48, %if.then.i.i.i254.if.end.i.i269_crit_edge ], [ %call1.i.i.i265, %if.then.i7.i266 ], [ %48, %land.lhs.true.i.i259.if.end.i.i269_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i267)
  %tobool4.not.i.i268 = icmp eq i32 %res.0.i.i267, 0
  br i1 %tobool4.not.i.i268, label %if.end91, label %if.then11.i.i272, !prof !72

if.then11.i.i272:                                 ; preds = %if.end.i.i269
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i270 = sub i32 %48, %res.0.i.i267
  %add.ptr.i.i271 = getelementptr i8, ptr %50, i32 %sub.i.i270
  %55 = call ptr @memset(ptr %add.ptr.i.i271, i32 0, i32 %res.0.i.i267)
  br label %cleanup157

if.end91:                                         ; preds = %if.end.i.i269
  %56 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %usable_leb_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %57)
  %cmp93 = icmp eq i32 %48, %57
  br i1 %cmp93, label %if.end91.if.then102_crit_edge, label %lor.lhs.false95

if.end91.if.then102_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

lor.lhs.false95:                                  ; preds = %if.end91
  %58 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %upd_received7, align 8
  %conv97289 = zext i32 %48 to i64
  %add98 = add i64 %59, %conv97289
  %60 = ptrtoint ptr %upd_bytes11 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %upd_bytes11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add98, i64 %61)
  %cmp100 = icmp eq i64 %add98, %61
  br i1 %cmp100, label %lor.lhs.false95.if.then102_crit_edge, label %lor.lhs.false95.if.end109_crit_edge

lor.lhs.false95.if.end109_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

lor.lhs.false95.if.then102_crit_edge:             ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false95.if.then102_crit_edge, %if.end91.if.then102_crit_edge
  %62 = ptrtoint ptr %upd_buf87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %upd_buf87, align 8
  %64 = ptrtoint ptr %upd_ebs104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %upd_ebs104, align 4
  %call105 = tail call fastcc i32 @write_leb(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum.1305, ptr noundef %63, i32 noundef %48, i32 noundef %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then102.if.end109_crit_edge, label %if.then102.do.body116_crit_edge

if.then102.do.body116_crit_edge:                  ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

if.then102.if.end109_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i32 %48 to i64
  br label %if.end109

if.end109:                                        ; preds = %if.then102.if.end109_crit_edge, %lor.lhs.false95.if.end109_crit_edge
  %conv110288.pre-phi = phi i64 [ %.pre, %if.then102.if.end109_crit_edge ], [ %conv97289, %lor.lhs.false95.if.end109_crit_edge ]
  %66 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %upd_received7, align 8
  %add112 = add i64 %67, %conv110288.pre-phi
  store i64 %add112, ptr %upd_received7, align 8
  %sub113 = sub i32 %count.addr.2306, %48
  %add114 = add i32 %lnum.1305, 1
  %add.ptr115 = getelementptr i8, ptr %buf.addr.1307, i32 %48
  %tobool80.not = icmp eq i32 %sub113, 0
  br i1 %tobool80.not, label %if.end109.do.body116_crit_edge, label %if.end109.while.body_crit_edge

if.end109.while.body_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end109.do.body116_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body116

do.body116:                                       ; preds = %if.end109.do.body116_crit_edge, %if.then102.do.body116_crit_edge, %if.end79.do.body116_crit_edge
  %err.4 = phi i32 [ 0, %if.end79.do.body116_crit_edge ], [ 0, %if.end109.do.body116_crit_edge ], [ %call105, %if.then102.do.body116_crit_edge ]
  %68 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %upd_received7, align 8
  %70 = ptrtoint ptr %upd_bytes11 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %upd_bytes11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %71)
  %cmp119.not = icmp sgt i64 %69, %71
  br i1 %cmp119.not, label %do.end132, label %do.body116.do.end140_crit_edge, !prof !74

do.body116.do.end140_crit_edge:                   ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end140

do.end132:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %72 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i279 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i279 to ptr
  %task135 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task135 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task135, align 8
  %pid136 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid136 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid136, align 8
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef 349, i32 noundef %77) #10
  tail call void @dump_stack() #10
  br label %do.end140

do.end140:                                        ; preds = %do.end132, %do.body116.do.end140_crit_edge
  %78 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %upd_received7, align 8
  %80 = ptrtoint ptr %upd_bytes11 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %upd_bytes11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %79, i64 %81)
  %cmp143 = icmp eq i64 %79, %81
  br i1 %cmp143, label %if.then145, label %do.end140.cleanup157_crit_edge

do.end140.cleanup157_crit_edge:                   ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.then145:                                       ; preds = %do.end140
  %call146 = tail call i32 @ubi_wl_flush(ptr noundef %ubi, i32 noundef -1, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.then145.cleanup157_crit_edge

if.then145.cleanup157_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end149:                                        ; preds = %if.then145
  %82 = ptrtoint ptr %upd_bytes11 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %upd_bytes11, align 8
  %call151 = tail call fastcc i32 @clear_update_marker(ptr noundef %ubi, ptr noundef %vol, i64 noundef %83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end149.cleanup157_crit_edge

if.end149.cleanup157_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end154:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  %updating = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 25
  %84 = ptrtoint ptr %updating to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %updating, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, ptr %updating, align 8
  %upd_buf155 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 23
  %85 = ptrtoint ptr %upd_buf155 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %upd_buf155, align 8
  tail call void @vfree(ptr noundef %86) #7
  br label %cleanup157

cleanup157:                                       ; preds = %if.end154, %if.end149.cleanup157_crit_edge, %if.then145.cleanup157_crit_edge, %do.end140.cleanup157_crit_edge, %if.then11.i.i272, %if.then27.i.i252, %land.rhs16.i.i251.cleanup157_crit_edge, %do.end66.cleanup157_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup157_crit_edge, %do.end.cleanup157_crit_edge
  %retval.1 = phi i32 [ %call68, %do.end66.cleanup157_crit_edge ], [ -30, %do.end.cleanup157_crit_edge ], [ %call146, %if.then145.cleanup157_crit_edge ], [ %call151, %if.end149.cleanup157_crit_edge ], [ %count.addr.0, %if.end154 ], [ %err.4, %do.end140.cleanup157_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup157_crit_edge ], [ -14, %if.then11.i.i272 ], [ -14, %if.then27.i.i252 ], [ -14, %land.rhs16.i.i251.cleanup157_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_leb(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len, i32 noundef %used_ebs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vol_type = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 10
  %0 = ptrtoint ptr %vol_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vol_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %2 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_io_size, align 4
  %sub = add i32 %len, -1
  %add = add i32 %sub, %3
  %neg = sub i32 0, %3
  %and = and i32 %add, %neg
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %sub3 = sub i32 %and, %len
  %4 = call ptr @memset(ptr %add.ptr, i32 255, i32 %sub3)
  %call = tail call i32 @ubi_calc_data_len(ptr noundef %ubi, ptr noundef %buf, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %do.body, label %cleanup.thread41

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_leb.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_leb, %cleanup.thread)) #7
          to label %cleanup17 [label %cleanup.thread], !srcloc !71

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.read_register.i32(metadata !61) #7
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_leb.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.21, i32 noundef %10, i32 noundef 0) #7
  br label %cleanup17

cleanup.thread41:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @ubi_eba_write_leb(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum, ptr noundef %buf, i32 noundef 0, i32 noundef %call) #7
  br label %cleanup17

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %len
  %usable_leb_size = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 11
  %11 = ptrtoint ptr %usable_leb_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usable_leb_size, align 4
  %sub14 = sub i32 %12, %len
  %13 = call ptr @memset(ptr %add.ptr13, i32 0, i32 %sub14)
  %call15 = tail call i32 @ubi_eba_write_leb_st(ptr noundef %ubi, ptr noundef %vol, i32 noundef %lnum, ptr noundef %buf, i32 noundef %len, i32 noundef %used_ebs) #7
  br label %cleanup17

cleanup17:                                        ; preds = %if.else, %cleanup.thread41, %cleanup.thread, %do.body
  %retval.1 = phi i32 [ 0, %cleanup.thread ], [ 0, %do.body ], [ %call15, %if.else ], [ %call12, %cleanup.thread41 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubi_more_leb_change_data(ptr noundef %ubi, ptr noundef %vol, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ubi_more_leb_change_data.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ubi_more_leb_change_data, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #7
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
  %upd_bytes = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 21
  %6 = ptrtoint ptr %upd_bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %upd_bytes, align 8
  %upd_received = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 22
  %8 = ptrtoint ptr %upd_received to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %upd_received, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ubi_more_leb_change_data.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %count, i64 noundef %7, i64 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ro_mode = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 69
  %10 = ptrtoint ptr %ro_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ro_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup82_crit_edge

do.end.cleanup82_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

if.end6:                                          ; preds = %do.end
  %upd_received7 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 22
  %12 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %upd_received7, align 8
  %conv = sext i32 %count to i64
  %add = add i64 %13, %conv
  %upd_bytes8 = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 21
  %14 = ptrtoint ptr %upd_bytes8 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %upd_bytes8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %15)
  %cmp = icmp sgt i64 %add, %15
  %sub = sub i64 %15, %13
  %conv13 = trunc i64 %sub to i32
  %count.addr.0 = select i1 %cmp, i32 %conv13, i32 %count
  %upd_buf = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 23
  %16 = ptrtoint ptr %upd_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %upd_buf, align 8
  %idx.ext = trunc i64 %13 to i32
  %add.ptr = getelementptr i8, ptr %17, i32 %idx.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %cmp9.i.i = icmp slt i32 %count.addr.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end6
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup82_crit_edge, label %if.then27.i.i, !prof !72

land.rhs16.i.i.cleanup82_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %cleanup82

if.then.i.i.i:                                    ; preds = %if.end6
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count.addr.0, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.0, i32 -1226833920) #12, !srcloc !75
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !72

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count.addr.0) #7
  %19 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !76
  %and.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count.addr.0) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count.addr.0, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count.addr.0, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end19, label %if.then11.i.i, !prof !72

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %count.addr.0, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup82

if.end19:                                         ; preds = %if.end.i.i
  %conv20126 = zext i32 %count.addr.0 to i64
  %23 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %upd_received7, align 8
  %add22 = add i64 %24, %conv20126
  store i64 %add22, ptr %upd_received7, align 8
  %25 = ptrtoint ptr %upd_bytes8 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %upd_bytes8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add22, i64 %26)
  %cmp25 = icmp eq i64 %add22, %26
  br i1 %cmp25, label %if.then27, label %if.end19.do.body50_crit_edge

if.end19.do.body50_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

if.then27:                                        ; preds = %if.end19
  %conv29 = trunc i64 %add22 to i32
  %min_io_size = getelementptr inbounds %struct.ubi_device, ptr %ubi, i32 0, i32 67
  %27 = ptrtoint ptr %min_io_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_io_size, align 4
  %sub30 = add i32 %conv29, -1
  %add31 = add i32 %sub30, %28
  %neg = sub i32 0, %28
  %and = and i32 %add31, %neg
  %29 = ptrtoint ptr %upd_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %upd_buf, align 8
  %add.ptr37 = getelementptr i8, ptr %30, i32 %conv29
  %conv41 = sub i32 %and, %conv29
  %31 = call ptr @memset(ptr %add.ptr37, i32 255, i32 %conv41)
  %32 = load ptr, ptr %upd_buf, align 8
  %call43 = tail call i32 @ubi_calc_data_len(ptr noundef %ubi, ptr noundef %32, i32 noundef %and) #7
  %ch_lnum = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 20
  %33 = ptrtoint ptr %ch_lnum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ch_lnum, align 8
  %35 = ptrtoint ptr %upd_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %upd_buf, align 8
  %call45 = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %ubi, ptr noundef %vol, i32 noundef %34, ptr noundef %36, i32 noundef %call43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then27.do.body50_crit_edge, label %if.then27.cleanup82_crit_edge

if.then27.cleanup82_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

if.then27.do.body50_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

do.body50:                                        ; preds = %if.then27.do.body50_crit_edge, %if.end19.do.body50_crit_edge
  %37 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %upd_received7, align 8
  %39 = ptrtoint ptr %upd_bytes8 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %upd_bytes8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %40)
  %cmp53.not = icmp sgt i64 %38, %40
  br i1 %cmp53.not, label %do.end66, label %do.body50.do.end74_crit_edge, !prof !74

do.body50.do.end74_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end74

do.end66:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %41 = tail call i32 @llvm.read_register.i32(metadata !61) #7
  %and.i122 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i122 to ptr
  %task69 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task69, align 8
  %pid70 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid70, align 8
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11, i32 noundef 412, i32 noundef %46) #10
  tail call void @dump_stack() #10
  br label %do.end74

do.end74:                                         ; preds = %do.end66, %do.body50.do.end74_crit_edge
  %47 = ptrtoint ptr %upd_received7 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %upd_received7, align 8
  %49 = ptrtoint ptr %upd_bytes8 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %upd_bytes8, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %50)
  %cmp77 = icmp eq i64 %48, %50
  br i1 %cmp77, label %if.then79, label %do.end74.cleanup82_crit_edge

do.end74.cleanup82_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup82

if.then79:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #9
  %changing_leb = getelementptr inbounds %struct.ubi_volume, ptr %vol, i32 0, i32 25
  %51 = ptrtoint ptr %changing_leb to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %changing_leb, align 8
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %changing_leb, align 8
  %52 = ptrtoint ptr %upd_buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %upd_buf, align 8
  tail call void @vfree(ptr noundef %53) #7
  br label %cleanup82

cleanup82:                                        ; preds = %if.then79, %do.end74.cleanup82_crit_edge, %if.then27.cleanup82_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup82_crit_edge, %do.end.cleanup82_crit_edge
  %retval.1 = phi i32 [ %call45, %if.then27.cleanup82_crit_edge ], [ -30, %do.end.cleanup82_crit_edge ], [ %count.addr.0, %if.then79 ], [ 0, %do.end74.cleanup82_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup82_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_calc_data_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_change_vtbl_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_write_leb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_write_leb_st(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !57, !59, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ubi/upd.c", i32 119, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ubi_start_update.__UNIQUE_ID_ddebug233, !1, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ubi/upd.c", i32 120, i32 2}
!8 = !{ptr @ubi_start_update._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ubi_start_update._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/ubi/upd.c", i32 171, i32 2}
!12 = !{ptr @ubi_start_leb_change._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ubi_start_leb_change._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/ubi/upd.c", i32 173, i32 2}
!16 = !{ptr @ubi_start_leb_change.__UNIQUE_ID_ddebug234, !15, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/ubi/upd.c", i32 270, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ubi_more_update_data.__UNIQUE_ID_ddebug236, !18, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!21 = !{ptr @ubi_more_update_data._entry, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/mtd/ubi/upd.c", i32 308, i32 4}
!23 = !{ptr @ubi_more_update_data._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ubi_more_update_data._entry.9, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/mtd/ubi/upd.c", i32 349, i32 2}
!26 = !{ptr @ubi_more_update_data._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/ubi/upd.c", i32 385, i32 2}
!29 = !{ptr @ubi_more_leb_change_data.__UNIQUE_ID_ddebug237, !28, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!30 = !{ptr @ubi_more_leb_change_data._entry, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/mtd/ubi/upd.c", i32 412, i32 2}
!32 = !{ptr @ubi_more_leb_change_data._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/ubi/upd.c", i32 46, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @set_update_marker.__UNIQUE_ID_ddebug230, !34, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!37 = !{ptr @set_update_marker._entry, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/mtd/ubi/upd.c", i32 49, i32 3}
!39 = !{ptr @set_update_marker._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/ubi/upd.c", i32 50, i32 3}
!42 = !{ptr @set_update_marker.__UNIQUE_ID_ddebug231, !41, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/ubi/upd.c", i32 80, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @clear_update_marker.__UNIQUE_ID_ddebug232, !44, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!47 = !{ptr @clear_update_marker._entry, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/mtd/ubi/upd.c", i32 83, i32 2}
!49 = !{ptr @clear_update_marker._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/ubi/upd.c", i32 230, i32 4}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @write_leb.__UNIQUE_ID_ddebug235, !58, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2148277404, i64 2148277409, i64 2148277422, i64 2148277466, i64 2148277500, i64 2148277521}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2148302591, i64 2148302871, i64 2148303205, i64 2148303539}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2150508227, i64 2150508252}
!76 = !{i64 3003782}
!77 = !{i64 3003979}
!78 = !{i64 2150489212}
