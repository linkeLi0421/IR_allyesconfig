; ModuleID = '/llk/IR_all_yes/fs/afs/dir_silly.c_pt.bc'
source_filename = "../fs/afs/dir_silly.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.afs_operation_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.124 }
%struct.atomic_t = type { i32 }
%union.anon.124 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.116 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.127, %struct.list_head, %struct.list_head, %union.anon.128 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.127 = type { %struct.list_head }
%union.anon.128 = type { %struct.hlist_node }
%struct.afs_vnode = type { %struct.inode, ptr, %struct.afs_fid, %struct.afs_file_status, i64, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i64, i16, %struct.work_struct, %struct.list_head, ptr, %struct.atomic_t, i32, i32, i32, i32, %struct.seqlock_t, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.129, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.130, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.131, ptr, %struct.address_space, %struct.list_head, %union.anon.132, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.129 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.130 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.131 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.132 = type { ptr }
%struct.afs_fid = type { i64, i64, i32, i32 }
%struct.afs_file_status = type { i64, i64, %struct.timespec64, %struct.timespec64, i64, i64, i64, i32, i32, i16, i32, i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.afs_operation = type { ptr, ptr, ptr, ptr, ptr, [2 x %struct.afs_vnode_param], ptr, %struct.afs_volsync, ptr, ptr, %struct.timespec64, %struct.timespec64, i16, i16, i32, i32, i32, %union.anon.141, %struct.afs_addr_cursor, ptr, ptr, ptr, i32, i16, i16, i32 }
%struct.afs_vnode_param = type { ptr, %struct.afs_fid, %struct.afs_status_cb, i64, i32, i8, i8 }
%struct.afs_status_cb = type { %struct.afs_file_status, %struct.afs_callback, i8, i8, i8 }
%struct.afs_callback = type { i64 }
%struct.afs_volsync = type { i64 }
%union.anon.141 = type { %struct.anon.152 }
%struct.anon.152 = type { %struct.afs_volume_status, ptr }
%struct.afs_volume_status = type { i64, i64, i8, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.afs_addr_cursor = type { ptr, i32, i8, i8, i16, i16, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@afs_sillyrename.sillycounter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@afs_debug = external dso_local local_unnamed_addr global i32, align 4
@afs_sillyrename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afs_sillyrename\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/afs/dir_silly.c\00", [45 x i8] zeroinitializer }, align 32
@afs_sillyrename._entry_ptr = internal global ptr @afs_sillyrename._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c".__afs%04X\00", [21 x i8] zeroinitializer }, align 32
@afs_sillyrename._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@afs_sillyrename._entry_ptr.6 = internal global ptr @afs_sillyrename._entry.4, section ".printk_index", align 4
@afs_silly_iput.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"&wq\00", [28 x i8] zeroinitializer }, align 32
@afs_silly_iput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] ==> %s(%p{%pd},%llx)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afs_silly_iput\00", [17 x i8] zeroinitializer }, align 32
@afs_silly_iput._entry_ptr = internal global ptr @afs_silly_iput._entry, section ".printk_index", align 4
@afs_do_silly_rename._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(%pd,%pd)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_do_silly_rename\00", [44 x i8] zeroinitializer }, align 32
@afs_do_silly_rename._entry_ptr = internal global ptr @afs_do_silly_rename._entry, section ".printk_index", align 4
@afs_silly_rename_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_rename, ptr @yfs_fs_rename, ptr @afs_silly_rename_success, ptr null, ptr null, ptr @afs_silly_rename_edit_dir, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_silly_rename_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 17, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s(op=%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_silly_rename_success\00", [39 x i8] zeroinitializer }, align 32
@afs_silly_rename_success._entry_ptr = internal global ptr @afs_silly_rename_success._entry, section ".printk_index", align 4
@__tracepoint_afs_silly_rename = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/afs.h\00", [37 x i8] zeroinitializer }, align 32
@trace_afs_silly_rename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_afs_flock_ev = external dso_local global %struct.tracepoint, align 4
@trace_afs_flock_ev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@afs_do_silly_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afs_do_silly_unlink\00", [44 x i8] zeroinitializer }, align 32
@afs_do_silly_unlink._entry_ptr = internal global ptr @afs_do_silly_unlink._entry, section ".printk_index", align 4
@afs_silly_unlink_operation = internal constant { %struct.afs_operation_ops, [36 x i8] } { %struct.afs_operation_ops { ptr @afs_fs_remove_file, ptr @yfs_fs_remove_file, ptr @afs_silly_unlink_success, ptr @afs_check_for_remote_deletion, ptr null, ptr @afs_silly_unlink_edit_dir, ptr null }, [36 x i8] zeroinitializer }, align 32
@afs_fetch_status_operation = external dso_local constant %struct.afs_operation_ops, align 4
@afs_silly_unlink_success._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.18, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"afs_silly_unlink_success\00", [39 x i8] zeroinitializer }, align 32
@afs_silly_unlink_success._entry_ptr = internal global ptr @afs_silly_unlink_success._entry, section ".printk_index", align 4
@afs_silly_unlink_edit_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.19, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"afs_silly_unlink_edit_dir\00", [38 x i8] zeroinitializer }, align 32
@afs_silly_unlink_edit_dir._entry_ptr = internal global ptr @afs_silly_unlink_edit_dir._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"sillycounter\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 103, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 108, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 124, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 154, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 242, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 244, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 66, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"afs_silly_rename_operation\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 50, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 17, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [30 x i8] c"../include/trace/events/afs.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1342, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 108, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 197, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"afs_silly_unlink_operation\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 181, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 160, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [22 x i8] c"../fs/afs/dir_silly.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 172, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @afs_do_silly_rename._entry, ptr @afs_do_silly_rename._entry_ptr, ptr @afs_do_silly_unlink._entry, ptr @afs_do_silly_unlink._entry_ptr, ptr @afs_silly_iput._entry, ptr @afs_silly_iput._entry_ptr, ptr @afs_silly_rename_success._entry, ptr @afs_silly_rename_success._entry_ptr, ptr @afs_silly_unlink_edit_dir._entry, ptr @afs_silly_unlink_edit_dir._entry_ptr, ptr @afs_silly_unlink_success._entry, ptr @afs_silly_unlink_success._entry_ptr, ptr @afs_sillyrename._entry, ptr @afs_sillyrename._entry.4, ptr @afs_sillyrename._entry_ptr, ptr @afs_sillyrename._entry_ptr.6, ptr @afs_sillyrename.sillycounter, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @afs_silly_iput.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @afs_silly_rename_operation, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @afs_silly_unlink_operation, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_sillyrename.sillycounter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_sillyrename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_sillyrename._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_silly_iput.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_silly_iput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_silly_rename._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_silly_rename_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_silly_rename_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_do_silly_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_silly_unlink_operation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_silly_unlink_success._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_silly_unlink_edit_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_sillyrename(ptr noundef %dvnode, ptr noundef %vnode, ptr noundef %dentry, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %silly = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %silly) #7
  %0 = call ptr @memset(ptr %silly, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %1 = load i32, ptr @afs_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !69

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm, ptr noundef nonnull @.str.1) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dentry, align 8
  %and7 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body11.preheader, label %do.end6.cleanup49_crit_edge

do.end6.cleanup49_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup49

do.body11.preheader:                              ; preds = %do.end6
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  br label %do.body11

do.body11:                                        ; preds = %do.cond19.do.body11_crit_edge, %do.body11.preheader
  %sdentry.0 = phi ptr [ %call15, %do.cond19.do.body11_crit_edge ], [ null, %do.body11.preheader ]
  call void @dput(ptr noundef %sdentry.0) #7
  %8 = load i32, ptr @afs_sillyrename.sillycounter, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @afs_sillyrename.sillycounter, align 4
  %call13 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %silly, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %inc) #7
  %9 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_parent, align 8
  %call15 = call ptr @lookup_one_len(ptr noundef nonnull %silly, ptr noundef %10, i32 noundef %call13) #7
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body11.do.body27_crit_edge, label %do.cond19

do.body11.do.body27_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

do.cond19:                                        ; preds = %do.body11
  %11 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call15, align 8
  %and.i.i.i = and i32 %12, 7340032
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %do.end23, label %do.cond19.do.body11_crit_edge

do.cond19.do.body11_crit_edge:                    ; preds = %do.cond19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.end23:                                         ; preds = %do.cond19
  call void @ihold(ptr noundef %vnode) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %13 = load i32, ptr @afs_debug, align 4
  %and.i67 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i, label %do.end23.do.end6.i_crit_edge, label %do.end.i, !prof !69

do.end23.do.end6.i_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %comm.i, ptr noundef nonnull @.str.11, ptr noundef %dentry, ptr noundef %call15) #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.end23.do.end6.i_crit_edge
  %volume.i = getelementptr inbounds %struct.afs_vnode, ptr %dvnode, i32 0, i32 1
  %18 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %volume.i, align 8
  %call7.i = call ptr @afs_alloc_operation(ptr noundef %key, ptr noundef %19) #7
  %cmp.i.i68 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i68, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call7.i to i32
  br label %afs_do_silly_rename.exit

if.end11.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 0
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dvnode, ptr %arrayidx.i.i, align 8
  %need_io_lock.i.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 0, i32 6
  %22 = ptrtoint ptr %need_io_lock.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i = load i8, ptr %need_io_lock.i.i, align 1
  %arrayidx.i52.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dvnode, ptr %arrayidx.i52.i, align 8
  %need_io_lock.i53.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 1, i32 6
  %24 = ptrtoint ptr %need_io_lock.i53.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i54.i = load i8, ptr %need_io_lock.i53.i, align 1
  %dv_delta.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 0, i32 5
  %25 = ptrtoint ptr %dv_delta.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %dv_delta.i, align 4
  %dv_delta14.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 1, i32 5
  %26 = ptrtoint ptr %dv_delta14.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %dv_delta14.i, align 4
  %bf.set27.i = or i8 %bf.load.i.i, 98
  store i8 %bf.set27.i, ptr %need_io_lock.i.i, align 1
  %bf.set33.i = or i8 %bf.load.i54.i, 98
  store i8 %bf.set33.i, ptr %need_io_lock.i53.i, align 1
  %dentry.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 8
  %27 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dentry, ptr %dentry.i, align 8
  %dentry_2.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 9
  %28 = ptrtoint ptr %dentry_2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call15, ptr %dentry_2.i, align 4
  %ops.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 3
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @afs_silly_rename_operation, ptr %ops.i, align 4
  call fastcc void @trace_afs_silly_rename(ptr noundef %vnode, i1 noundef zeroext false) #7
  %call34.i = call i32 @afs_do_sync_operation(ptr noundef %call7.i) #7
  br label %afs_do_silly_rename.exit

afs_do_silly_rename.exit:                         ; preds = %if.end11.i, %if.then9.i
  %retval.0.i = phi i32 [ %20, %if.then9.i ], [ %call34.i, %if.end11.i ]
  %30 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %afs_do_silly_rename.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 -512, label %sw.bb25
  ]

afs_do_silly_rename.exit.sw.epilog_crit_edge:     ; preds = %afs_do_silly_rename.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %afs_do_silly_rename.exit
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %vnode, i32 0, i32 13
  call void @_set_bit(i32 noundef 9, ptr noundef %flags) #7
  call void @d_move(ptr noundef %dentry, ptr noundef %call15) #7
  br label %sw.epilog

sw.bb25:                                          ; preds = %afs_do_silly_rename.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @d_drop(ptr noundef %dentry) #7
  call void @d_drop(ptr noundef %call15) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb, %afs_do_silly_rename.exit.sw.epilog_crit_edge
  call void @iput(ptr noundef %vnode) #7
  call void @dput(ptr noundef %call15) #7
  br label %do.body27

do.body27:                                        ; preds = %sw.epilog, %do.body11.do.body27_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %sw.epilog ], [ -16, %do.body11.do.body27_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %31 = load i32, ptr @afs_debug, align 4
  %and28 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.cleanup49_crit_edge, label %do.end39, !prof !69

do.body27.cleanup49_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup49

do.end39:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %32 = call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i69 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i69 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task42, align 8
  %comm43 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 101
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %comm43, ptr noundef nonnull @.str.1, i32 noundef %ret.0) #10
  br label %cleanup49

cleanup49:                                        ; preds = %do.end39, %do.body27.cleanup49_crit_edge, %do.end6.cleanup49_crit_edge
  %retval.0 = phi i32 [ -16, %do.end6.cleanup49_crit_edge ], [ %ret.0, %do.end39 ], [ %ret.0, %do.body27.cleanup49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %silly) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afs_silly_iput(ptr noundef %dentry, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %wq = alloca %struct.wait_queue_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wq) #7
  %4 = call ptr @memset(ptr %wq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wq, ptr noundef nonnull @.str.7, ptr noundef nonnull @afs_silly_iput.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %5 = load i32, ptr @afs_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.end8, !prof !69

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %vnode10 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %vnode10 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vnode10, align 8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %comm, ptr noundef nonnull @.str.9, ptr noundef %dentry, ptr noundef %dentry, i64 noundef %11) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end8, %entry.do.end13_crit_edge
  %rmdir_lock = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 9
  call void @down_read(ptr noundef %rmdir_lock) #7
  %12 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call15 = call ptr @d_alloc_parallel(ptr noundef %13, ptr noundef %d_name, ptr noundef nonnull %wq) #7
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @up_read(ptr noundef %rmdir_lock) #7
  br label %cleanup

if.end19:                                         ; preds = %do.end13
  %14 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call15, align 8
  %and.i65 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool21.not = icmp eq i32 %and.i65, 0
  br i1 %tobool21.not, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.end19
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %call15, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref) #7
  %d_inode.i66 = getelementptr inbounds %struct.dentry, ptr %call15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i66, align 8
  %cmp.i67.not = icmp eq ptr %17, null
  br i1 %cmp.i67.not, label %if.then22.if.end28_crit_edge, label %land.lhs.true

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then22
  %18 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call15, align 8
  %and24 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %19, 4096
  %20 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %call15, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true.if.end28_crit_edge, %if.then22.if.end28_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.if.end28_crit_edge ], [ 1, %if.then26 ], [ 0, %if.then22.if.end28_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %d_lockref) #7
  call void @up_read(ptr noundef %rmdir_lock) #7
  call void @dput(ptr noundef %call15) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  %lock33 = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock33) #7
  %lock_state = getelementptr inbounds %struct.afs_vnode, ptr %inode, i32 0, i32 20
  %21 = ptrtoint ptr %lock_state to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %lock_state, align 8
  %bf.clear = and i16 %bf.load, 255
  %bf.set = or i16 %bf.clear, 1792
  store i16 %bf.set, ptr %lock_state, align 8
  call fastcc void @trace_afs_flock_ev(ptr noundef %inode)
  call void @_raw_spin_unlock(ptr noundef %lock33) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %22 = load i32, ptr @afs_debug, align 4
  %and.i68 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i, label %if.end32.do.end6.i_crit_edge, label %do.end.i, !prof !69

if.end32.do.end6.i_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %23 = call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 101
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %comm.i, ptr noundef nonnull @.str.17) #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %if.end32.do.end6.i_crit_edge
  %volume.i = getelementptr inbounds %struct.afs_vnode, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %volume.i, align 8
  %call7.i = call ptr @afs_alloc_operation(ptr noundef null, ptr noundef %28) #7
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end6.i.afs_do_silly_unlink.exit_crit_edge, label %if.end11.i

do.end6.i.afs_do_silly_unlink.exit_crit_edge:     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_do_silly_unlink.exit

if.end11.i:                                       ; preds = %do.end6.i
  %arrayidx.i.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 0
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %3, ptr %arrayidx.i.i, align 8
  %need_io_lock.i.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 0, i32 6
  %30 = ptrtoint ptr %need_io_lock.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i.i = load i8, ptr %need_io_lock.i.i, align 1
  %arrayidx.i1.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %inode, ptr %arrayidx.i1.i, align 8
  %need_io_lock.i2.i = getelementptr %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 1, i32 6
  %32 = ptrtoint ptr %need_io_lock.i2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i3.i = load i8, ptr %need_io_lock.i2.i, align 1
  %dv_delta.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 5, i32 0, i32 5
  %33 = ptrtoint ptr %dv_delta.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %dv_delta.i, align 4
  %bf.set18.i = or i8 %bf.load.i.i, 98
  store i8 %bf.set18.i, ptr %need_io_lock.i.i, align 1
  %bf.set29.i = or i8 %bf.load.i3.i, 104
  store i8 %bf.set29.i, ptr %need_io_lock.i2.i, align 1
  %dentry30.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 8
  %34 = ptrtoint ptr %dentry30.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dentry, ptr %dentry30.i, align 8
  %ops.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 3
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @afs_silly_unlink_operation, ptr %ops.i, align 4
  call fastcc void @trace_afs_silly_rename(ptr noundef %inode, i1 noundef zeroext true) #7
  %call31.i = call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call7.i) #7
  call void @afs_wait_for_operation(ptr noundef %call7.i) #7
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 13
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp.i69 = icmp eq i16 %37, 0
  br i1 %cmp.i69, label %land.lhs.true.i, label %if.end11.i.if.end44.i_crit_edge

if.end11.i.if.end44.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 25
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 8
  %and33.i = and i32 %39, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i.if.end44.i_crit_edge, label %if.then35.i

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %need_io_lock.i2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load39.i = load i8, ptr %need_io_lock.i2.i, align 1
  %bf.clear40.i = and i8 %bf.load39.i, -33
  store i8 %bf.clear40.i, ptr %need_io_lock.i2.i, align 1
  %41 = getelementptr inbounds %struct.afs_operation, ptr %call7.i, i32 0, i32 17
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %41, align 8
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @afs_fetch_status_operation, ptr %ops.i, align 4
  %call43.i = call zeroext i1 @afs_begin_vnode_operation(ptr noundef %call7.i) #7
  call void @afs_wait_for_operation(ptr noundef %call7.i) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then35.i, %land.lhs.true.i.if.end44.i_crit_edge, %if.end11.i.if.end44.i_crit_edge
  %call45.i = call i32 @afs_put_operation(ptr noundef %call7.i) #7
  br label %afs_do_silly_unlink.exit

afs_do_silly_unlink.exit:                         ; preds = %if.end44.i, %do.end6.i.afs_do_silly_unlink.exit_crit_edge
  call void @up_read(ptr noundef %rmdir_lock) #7
  %44 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call15, align 8
  %and.i.i70 = and i32 %45, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70)
  %tobool.not.i71 = icmp eq i32 %and.i.i70, 0
  br i1 %tobool.not.i71, label %afs_do_silly_unlink.exit.d_lookup_done.exit_crit_edge, label %if.then.i, !prof !69

afs_do_silly_unlink.exit.d_lookup_done.exit_crit_edge: ; preds = %afs_do_silly_unlink.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %d_lookup_done.exit

if.then.i:                                        ; preds = %afs_do_silly_unlink.exit
  call void @__sanitizer_cov_trace_pc() #9
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call15, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #7
  call void @__d_lookup_done(ptr noundef %call15) #7
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #7
  br label %d_lookup_done.exit

d_lookup_done.exit:                               ; preds = %if.then.i, %afs_do_silly_unlink.exit.d_lookup_done.exit_crit_edge
  call void @dput(ptr noundef %call15) #7
  br label %cleanup

cleanup:                                          ; preds = %d_lookup_done.exit, %if.end28, %if.then17
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 1, %d_lookup_done.exit ], [ %ret.0, %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_flock_ev(ptr noundef %vnode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_ev, i32 0, i32 1), ptr blockaddress(@trace_afs_flock_ev, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !70

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !71
  %call42 = tail call i32 @__traceiter_afs_flock_ev(ptr noundef null, ptr noundef %vnode, ptr noundef null, i32 noundef 8, i32 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !72
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !69

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_ev, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_flock_ev, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_afs_flock_ev.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_afs_flock_ev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 1289, ptr noundef nonnull @.str.15) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @afs_alloc_operation(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_afs_silly_rename(ptr noundef %vnode, i1 noundef zeroext %done) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_silly_rename, i32 0, i32 1), ptr blockaddress(@trace_afs_silly_rename, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !70

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %call43 = tail call i32 @__traceiter_afs_silly_rename(ptr noundef null, ptr noundef %vnode, i1 noundef zeroext %done) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !69

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_silly_rename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_afs_silly_rename, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_afs_silly_rename.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_afs_silly_rename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 1360, ptr noundef nonnull @.str.15) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_do_sync_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_rename(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_rename(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_silly_rename_success(ptr noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !69

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.13, i32 noundef %6) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %dv_before.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %7 = ptrtoint ptr %dv_before.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dv_before.i, align 8
  %dv_delta.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %9 = ptrtoint ptr %dv_delta.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dv_delta.i, align 4
  %conv.i = zext i8 %10 to i64
  %add.i = add i64 %8, %conv.i
  %data_version.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data_version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %12)
  %cmp.not.i = icmp eq i64 %add.i, %12
  br i1 %cmp.not.i, label %do.end5.afs_check_dir_conflict.exit_crit_edge, label %if.then.i

do.end5.afs_check_dir_conflict.exit_crit_edge:    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_check_dir_conflict.exit

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %14, 4096
  store i32 %or.i, ptr %flags.i, align 8
  br label %afs_check_dir_conflict.exit

afs_check_dir_conflict.exit:                      ; preds = %if.then.i, %do.end5.afs_check_dir_conflict.exit_crit_edge
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_silly_rename_edit_dir(ptr nocapture noundef readonly %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %dentry_2 = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 9
  %6 = ptrtoint ptr %dentry_2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry_2, align 4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %or = or i32 %9, 4096
  store i32 %or, ptr %3, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #7
  %silly_key = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %silly_key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %silly_key, align 4
  %key = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 1
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %key, align 4
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @key_put(ptr noundef %11) #7
  %14 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %key, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.key_get.exit_crit_edge, label %cond.true.i

if.then.key_get.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_get.exit

cond.true.i:                                      ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #7, !srcloc !77
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !78

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef %.sink.i.i.i.i.i) #7
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %if.then.key_get.exit_crit_edge
  %18 = ptrtoint ptr %silly_key to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %silly_key, align 4
  br label %if.end

if.end:                                           ; preds = %key_get.exit, %entry.if.end_crit_edge
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock) #7
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %data_version, align 8
  %dv_before = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %24 = ptrtoint ptr %dv_before to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dv_before, align 8
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %26 = ptrtoint ptr %dv_delta to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dv_delta, align 4
  %conv = zext i8 %27 to i64
  %add = add i64 %25, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %add)
  %cmp11 = icmp eq i64 %23, %add
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %d_name = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4
  tail call void @afs_edit_dir_remove(ptr noundef %1, ptr noundef %d_name, i32 noundef 7) #7
  %d_name14 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 4
  %fid = getelementptr inbounds %struct.afs_vnode, ptr %5, i32 0, i32 2
  tail call void @afs_edit_dir_add(ptr noundef %1, ptr noundef %d_name14, ptr noundef %fid, i32 noundef 8) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @up_write(ptr noundef %validate_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_vnode_commit_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_edit_dir_remove(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_edit_dir_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_silly_rename(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_afs_flock_ev(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @afs_begin_vnode_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_wait_for_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afs_put_operation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_fs_remove_file(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @yfs_fs_remove_file(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_silly_unlink_success(ptr noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %0 = load i32, ptr @afs_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !69

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.18, i32 noundef %6) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %dv_before.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %7 = ptrtoint ptr %dv_before.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dv_before.i, align 8
  %dv_delta.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %9 = ptrtoint ptr %dv_delta.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dv_delta.i, align 4
  %conv.i = zext i8 %10 to i64
  %add.i = add i64 %8, %conv.i
  %data_version.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data_version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %12)
  %cmp.not.i = icmp eq i64 %add.i, %12
  br i1 %cmp.not.i, label %do.end5.afs_check_dir_conflict.exit_crit_edge, label %if.then.i

do.end5.afs_check_dir_conflict.exit_crit_edge:    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_check_dir_conflict.exit

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 25
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %14, 4096
  store i32 %or.i, ptr %flags.i, align 8
  br label %afs_check_dir_conflict.exit

afs_check_dir_conflict.exit:                      ; preds = %if.then.i, %do.end5.afs_check_dir_conflict.exit_crit_edge
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %file) #7
  %arrayidx9 = getelementptr %struct.afs_operation, ptr %op, i32 0, i32 5, i32 1
  tail call void @afs_vnode_commit_status(ptr noundef %op, ptr noundef %arrayidx9) #7
  %error.i = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 13
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %error.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %if.then.i23, label %afs_check_dir_conflict.exit.afs_update_dentry_version.exit_crit_edge

afs_check_dir_conflict.exit.afs_update_dentry_version.exit_crit_edge: ; preds = %afs_check_dir_conflict.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %afs_update_dentry_version.exit

if.then.i23:                                      ; preds = %afs_check_dir_conflict.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %17 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dentry, align 8
  %19 = ptrtoint ptr %data_version.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %data_version.i, align 8
  %conv.i22 = trunc i64 %20 to i32
  %21 = inttoptr i32 %conv.i22 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 11
  %22 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %d_fsdata.i, align 4
  br label %afs_update_dentry_version.exit

afs_update_dentry_version.exit:                   ; preds = %if.then.i23, %afs_check_dir_conflict.exit.afs_update_dentry_version.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @afs_check_for_remote_deletion(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afs_silly_unlink_edit_dir(ptr nocapture noundef readonly %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @afs_debug to i32))
  %2 = load i32, ptr @afs_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !69

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.read_register.i32(metadata !59) #7
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 14
  %7 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm, ptr noundef nonnull @.str.19, i32 noundef %8) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %validate_lock = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 8
  tail call void @down_write(ptr noundef %validate_lock) #7
  %flags = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %do.end6.if.end11_crit_edge, label %land.lhs.true

do.end6.if.end11_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end6
  %data_version = getelementptr inbounds %struct.afs_vnode, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %data_version to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %data_version, align 8
  %dv_before = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 3
  %14 = ptrtoint ptr %dv_before to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dv_before, align 8
  %dv_delta = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 5, i32 0, i32 5
  %16 = ptrtoint ptr %dv_delta to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dv_delta, align 4
  %conv = zext i8 %17 to i64
  %add = add i64 %15, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp = icmp eq i64 %13, %add
  br i1 %cmp, label %if.then10, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dentry = getelementptr inbounds %struct.afs_operation, ptr %op, i32 0, i32 8
  %18 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dentry, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 4
  tail call void @afs_edit_dir_remove(ptr noundef %1, ptr noundef %d_name, i32 noundef 10) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true.if.end11_crit_edge, %do.end6.if.end11_crit_edge
  tail call void @up_write(ptr noundef %validate_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @afs_sillyrename.sillycounter, !1, !"sillycounter", i1 false, i1 false}
!1 = !{!"../fs/afs/dir_silly.c", i32 103, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/afs/dir_silly.c", i32 108, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @afs_sillyrename._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @afs_sillyrename._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/afs/dir_silly.c", i32 124, i32 42}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/afs/dir_silly.c", i32 154, i32 2}
!12 = !{ptr @afs_sillyrename._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @afs_sillyrename._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @afs_silly_iput.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../fs/afs/dir_silly.c", i32 242, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/afs/dir_silly.c", i32 244, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @afs_silly_iput._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_silly_iput._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/afs/dir_silly.c", i32 66, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @afs_do_silly_rename._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @afs_do_silly_rename._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @afs_silly_rename_operation, !28, !"afs_silly_rename_operation", i1 false, i1 false}
!28 = !{!"../fs/afs/dir_silly.c", i32 50, i32 39}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/afs/dir_silly.c", i32 17, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @afs_silly_rename_success._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @afs_silly_rename_success._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/trace/events/afs.h", i32 1342, i32 1}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!38 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/trace/events/afs.h", i32 1261, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/afs/dir_silly.c", i32 197, i32 2}
!47 = !{ptr @afs_do_silly_unlink._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @afs_do_silly_unlink._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @afs_silly_unlink_operation, !50, !"afs_silly_unlink_operation", i1 false, i1 false}
!50 = !{!"../fs/afs/dir_silly.c", i32 181, i32 39}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/afs/dir_silly.c", i32 160, i32 2}
!53 = !{ptr @afs_silly_unlink_success._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @afs_silly_unlink_success._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/afs/dir_silly.c", i32 172, i32 2}
!57 = !{ptr @afs_silly_unlink_edit_dir._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @afs_silly_unlink_edit_dir._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2148697179, i64 2148697184, i64 2148697197, i64 2148697241, i64 2148697275, i64 2148697296}
!71 = !{i64 2157798536}
!72 = !{i64 2157798769}
!73 = !{i64 2149478904}
!74 = !{i64 2149479940}
!75 = !{i64 2157851903}
!76 = !{i64 2157852120}
!77 = !{i64 2148216894, i64 2148216926, i64 2148216955, i64 2148216989, i64 2148217020, i64 2148217043}
!78 = !{!"branch_weights", i32 1, i32 2000}
