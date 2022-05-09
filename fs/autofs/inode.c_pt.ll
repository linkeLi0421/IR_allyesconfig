; ModuleID = '/llk/IR_all_yes/fs/autofs/inode.c_pt.bc'
source_filename = "../fs/autofs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.user_namespace = type opaque
%struct.match_token = type { i32, ptr }
%struct.autofs_info = type { ptr, ptr, i32, %struct.completion, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.callback_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.autofs_sb_info = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.substring_t = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.60 = type { i32 }
%union.anon.61 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.63 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@autofs_kill_sb.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"autofs4\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"autofs_kill_sb\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/autofs/inode.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shutting down\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"autofs4:pid:%d:%s: shutting down\0A\00", [62 x i8] zeroinitializer }, align 32
@autofs_fill_super.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"autofs_fill_super\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"starting up, sbi = %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"autofs4:pid:%d:%s: starting up, sbi = %p\0A\00", [54 x i8] zeroinitializer }, align 32
@autofs_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sbi->wq_mutex\00", [17 x i8] zeroinitializer }, align 32
@autofs_fill_super.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sbi->pipe_mutex\00", [47 x i8] zeroinitializer }, align 32
@autofs_fill_super.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sbi->fs_lock\00", [18 x i8] zeroinitializer }, align 32
@autofs_fill_super.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sbi->lookup_lock\00", [46 x i8] zeroinitializer }, align 32
@autofs_sops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @autofs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @autofs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@autofs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@autofs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013autofs4:pid:%d:%s: called with bogus options\0A\00", [48 x i8] zeroinitializer }, align 32
@autofs_fill_super._entry_ptr = internal global ptr @autofs_fill_super._entry, section ".printk_index", align 4
@autofs_fill_super._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013autofs4:pid:%d:%s: kernel does not match daemon version daemon (%d, %d) kernel (%d, %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@autofs_fill_super._entry_ptr.18 = internal global ptr @autofs_fill_super._entry.16, section ".printk_index", align 4
@autofs_fill_super._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013autofs4:pid:%d:%s: could not find process group %d\0A\00", [42 x i8] zeroinitializer }, align 32
@autofs_fill_super._entry_ptr.21 = internal global ptr @autofs_fill_super._entry.19, section ".printk_index", align 4
@autofs_root_operations = external dso_local constant %struct.file_operations, align 4
@autofs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@autofs_fill_super.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.22, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pipe fd = %d, pgrp = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"autofs4:pid:%d:%s: pipe fd = %d, pgrp = %u\0A\00", [52 x i8] zeroinitializer }, align 32
@autofs_fill_super._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013autofs4:pid:%d:%s: could not open pipe file descriptor\0A\00", [38 x i8] zeroinitializer }, align 32
@autofs_fill_super._entry_ptr.26 = internal global ptr @autofs_fill_super._entry.24, section ".printk_index", align 4
@autofs_fill_super._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.5, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013autofs4:pid:%d:%s: pipe file descriptor does not contain proper ops\0A\00", [57 x i8] zeroinitializer }, align 32
@autofs_fill_super._entry_ptr.29 = internal global ptr @autofs_fill_super._entry.27, section ".printk_index", align 4
@autofs_dir_operations = external dso_local constant %struct.file_operations, align 4
@autofs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",fd=%d\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",pgrp=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",timeout=%lu\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",minproto=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",maxproto=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",offset\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",direct\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",indirect\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",strictexpire\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",ignore\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",pipe_ino=%ld\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",pipe_ino=-1\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [12 x %struct.match_token], [32 x i8] } { [12 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.48 }, %struct.match_token { i32 2, ptr @.str.49 }, %struct.match_token { i32 3, ptr @.str.50 }, %struct.match_token { i32 4, ptr @.str.51 }, %struct.match_token { i32 5, ptr @.str.52 }, %struct.match_token { i32 6, ptr @.str.53 }, %struct.match_token { i32 7, ptr @.str.54 }, %struct.match_token { i32 8, ptr @.str.55 }, %struct.match_token { i32 9, ptr @.str.56 }, %struct.match_token { i32 10, ptr @.str.57 }, %struct.match_token { i32 11, ptr @.str.58 }, %struct.match_token zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fd=%u\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pgrp=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"minproto=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"maxproto=%u\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"indirect\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"strictexpire\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ignore\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 55, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 234, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 249, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 250, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 251, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 253, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"autofs_sops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 106, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 283, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 290, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 307, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 321, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 326, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 345, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 69, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 71, i32 17 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 74, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 76, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 77, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 78, i32 16 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 79, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 82, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 84, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 86, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 88, i32 15 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 90, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 93, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 95, i32 15 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 153, i32 31 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 116, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 117, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 118, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 119, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 120, i32 13 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 121, i32 17 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 122, i32 17 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 123, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 124, i32 15 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 125, i32 15 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 126, i32 21 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [21 x i8] c"../fs/autofs/inode.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 127, i32 15 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @autofs_fill_super._entry, ptr @autofs_fill_super._entry.16, ptr @autofs_fill_super._entry.19, ptr @autofs_fill_super._entry.24, ptr @autofs_fill_super._entry.27, ptr @autofs_fill_super._entry_ptr, ptr @autofs_fill_super._entry_ptr.18, ptr @autofs_fill_super._entry_ptr.21, ptr @autofs_fill_super._entry_ptr.26, ptr @autofs_fill_super._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @autofs_fill_super.__key, ptr @.str.8, ptr @autofs_fill_super.__key.9, ptr @.str.10, ptr @autofs_fill_super.__key.11, ptr @.str.12, ptr @autofs_fill_super.__key.13, ptr @.str.14, ptr @autofs_sops, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @tokens, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autofs_fill_super._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @autofs_new_ino(ptr noundef %sbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %active = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %active, ptr %active, align 4
  %prev.i = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %active, ptr %prev.i, align 8
  %expiring = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %expiring to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %expiring, ptr %expiring, align 4
  %prev.i7 = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %expiring, ptr %prev.i7, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_used, align 8
  %sbi1 = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %sbi1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sbi, ptr %sbi1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @autofs_clean_ino(ptr nocapture noundef writeonly %ino) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %uid = getelementptr inbounds %struct.autofs_info, ptr %ino, i32 0, i32 9
  %0 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.autofs_info, ptr %ino, i32 0, i32 10
  %1 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %gid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.autofs_info, ptr %ino, i32 0, i32 7
  %3 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %last_used, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @autofs_free_ino(ptr noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ino, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.autofs_info, ptr %ino, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 104 to ptr)) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @autofs_kill_sb(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @autofs_catatonic_mode(ptr noundef nonnull %1) #8
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oz_pgrp, align 4
  tail call void @put_pid(ptr noundef %3) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_kill_sb.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_kill_sb, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !122

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_kill_sb.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.4, i32 noundef %9, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @kill_litter_super(ptr noundef %sb) #8
  br i1 %tobool.not, label %do.end.if.end19_crit_edge, label %do.end15

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.autofs_sb_info, ptr %1, i32 0, i32 19
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 340 to ptr)) #8
  br label %if.end19

if.end19:                                         ; preds = %do.end15, %do.end.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @autofs_catatonic_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autofs_fill_super(ptr noundef %s, ptr noundef %data, i32 noundef %silent) local_unnamed_addr #0 align 64 {
entry:
  %options.addr.i = alloca ptr, align 4
  %args.i = alloca [3 x %struct.substring_t], align 4
  %option.i = alloca i32, align 4
  %pipefd.i = alloca i32, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 348) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_fill_super.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_fill_super, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !122

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !112) #8
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_fill_super.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.7, i32 noundef %6, ptr noundef nonnull @.str.5, ptr noundef nonnull %call7.i.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1833588077, ptr %call7.i.i, align 8
  %pipefd = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pipefd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pipefd, align 4
  %pipe8 = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %pipe8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pipe8, align 8
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %exp_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %exp_timeout, align 4
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %oz_pgrp, align 4
  %sb = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %sb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s, ptr %sb, align 4
  %version = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %version, align 8
  %sub_version = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %sub_version to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sub_version, align 4
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags, align 8
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 8
  %min_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %min_proto to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %min_proto, align 8
  %max_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %max_proto to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %max_proto, align 4
  %wq_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %wq_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @autofs_fill_super.__key) #8
  %pipe_mutex = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %pipe_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @autofs_fill_super.__key.9) #8
  %fs_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %fs_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @autofs_fill_super.__key.11, i16 noundef signext 3) #8
  %queues = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %queues, align 4
  %lookup_lock = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %lookup_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @autofs_fill_super.__key.13, i16 noundef signext 3) #8
  %active_list = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 17
  %21 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 17, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %active_list, ptr %prev.i, align 8
  %expiring_list = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 18
  %23 = ptrtoint ptr %expiring_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %expiring_list, ptr %expiring_list, align 4
  %prev.i221 = getelementptr inbounds %struct.autofs_sb_info, ptr %call7.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev.i221 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %expiring_list, ptr %prev.i221, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %25 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1024, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 2
  %26 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %s_blocksize_bits, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 12
  %27 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 391, ptr %s_magic, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %28 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @autofs_sops, ptr %s_op, align 4
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 45
  %29 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @autofs_dentry_operations, ptr %s_d_op, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 34
  %30 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %s_time_gran, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 112) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.fail_free_crit_edge, label %if.end26

do.end.fail_free_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_free

if.end26:                                         ; preds = %do.end
  %active.i = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %active.i, ptr %active.i, align 4
  %prev.i.i = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %active.i, ptr %prev.i.i, align 8
  %expiring.i = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %expiring.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %expiring.i, ptr %expiring.i, align 4
  %prev.i7.i = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %expiring.i, ptr %prev.i7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %last_used.i = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %last_used.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %last_used.i, align 8
  %sbi1.i = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %sbi1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %sbi1.i, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %s) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end26.autofs_get_inode.exit_crit_edge, label %if.end.i

if.end26.autofs_get_inode.exit_crit_edge:         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %autofs_get_inode.exit

if.end.i:                                         ; preds = %if.end26
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 16877, ptr %call.i, align 8
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %40 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_root.i, align 64
  %tobool.not.i222 = icmp eq ptr %41, null
  br i1 %tobool.not.i222, label %if.end.i.if.end8.i_crit_edge, label %if.then1.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_inode.i.i, align 8
  %i_uid4.i = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %i_uid4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_uid4.i, align 4
  %46 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_root.i, align 64
  %d_inode.i59.i = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %d_inode.i59.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %d_inode.i59.i, align 8
  %i_gid7.i = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %i_gid7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_gid7.i, align 8
  %53 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %i_gid.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then1.i, %if.end.i.if.end8.i_crit_edge
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #8
  %54 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #8
  %55 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %56 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %call9.i = call i32 @get_next_ino() #8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %57 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call9.i, ptr %i_ino.i, align 8
  call void @set_nlink(ptr noundef nonnull %call.i, i32 noundef 2) #8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %58 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @autofs_dir_inode_operations, ptr %i_op.i, align 8
  %59 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @autofs_dir_operations, ptr %59, align 8
  br label %autofs_get_inode.exit

autofs_get_inode.exit:                            ; preds = %if.end8.i, %if.end26.autofs_get_inode.exit_crit_edge
  %call28 = call ptr @d_make_root(ptr noundef %call.i) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %autofs_free_ino.exit, label %if.end31

autofs_free_ino.exit:                             ; preds = %autofs_get_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rcu.i = getelementptr inbounds %struct.autofs_info, ptr %call7.i.i.i, i32 0, i32 11
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 104 to ptr)) #8
  br label %fail_free

if.end31:                                         ; preds = %autofs_get_inode.exit
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %call28, i32 0, i32 11
  %61 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i, ptr %d_fsdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %options.addr.i)
  %62 = ptrtoint ptr %options.addr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %data, ptr %options.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #8
  %63 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option.i) #8
  %64 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %option.i, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipefd.i) #8
  %65 = ptrtoint ptr %pipefd.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %pipefd.i, align 4
  %i_uid.i225 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %66 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 99
  %70 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cred.i, align 16
  %uid1.i = getelementptr inbounds %struct.cred, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %uid1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %uid1.i, align 4
  %74 = ptrtoint ptr %i_uid.i225 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %i_uid.i225, align 4
  %i_gid.i226 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %75 = load ptr, ptr %task.i, align 8
  %cred8.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 99
  %76 = ptrtoint ptr %cred8.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cred8.i, align 16
  %gid9.i = getelementptr inbounds %struct.cred, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %gid9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %gid9.i, align 4
  %80 = ptrtoint ptr %i_gid.i226 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %i_gid.i226, align 8
  %81 = ptrtoint ptr %min_proto to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 3, ptr %min_proto, align 8
  %82 = ptrtoint ptr %max_proto to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 5, ptr %max_proto, align 4
  %83 = ptrtoint ptr %pipefd to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %pipefd, align 4
  %tobool.not.i227 = icmp eq ptr %data, null
  br i1 %tobool.not.i227, label %if.end31.parse_options.exit.thread_crit_edge, label %while.cond.preheader.i

if.end31.parse_options.exit.thread_crit_edge:     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

while.cond.preheader.i:                           ; preds = %if.end31
  %call11121.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.45) #8
  %cmp.not122.i = icmp eq ptr %call11121.i, null
  br i1 %cmp.not122.i, label %while.cond.preheader.i.parse_options.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.parse_options.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %pgrp.0 = phi i32 [ %pgrp.1, %cleanup.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %pgrp_set.0 = phi i8 [ %pgrp_set.1, %cleanup.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call11123.i = phi ptr [ %call11.i, %cleanup.i.while.body.i_crit_edge ], [ %call11121.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %84 = ptrtoint ptr %call11123.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %call11123.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool12.not.i = icmp eq i8 %85, 0
  br i1 %tobool12.not.i, label %while.body.i.cleanup.i_crit_edge, label %if.end14.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end14.i:                                       ; preds = %while.body.i
  %call15.i = call i32 @match_token(ptr noundef nonnull %call11123.i, ptr noundef nonnull @tokens, ptr noundef nonnull %args.i) #8
  %86 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15.i, label %if.end14.i.parse_options.exit.thread_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb22.i
    i32 3, label %sw.bb43.i
    i32 4, label %sw.bb66.i
    i32 5, label %sw.bb72.i
    i32 6, label %sw.bb79.i
    i32 7, label %sw.bb86.i
    i32 8, label %sw.bb87.i
    i32 9, label %sw.bb89.i
    i32 10, label %sw.bb91.i
    i32 11, label %sw.bb92.i
  ]

if.end14.i.parse_options.exit.thread_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

sw.bb.i:                                          ; preds = %if.end14.i
  %call17.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %pipefd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %sw.bb.i.parse_options.exit.thread_crit_edge

sw.bb.i.parse_options.exit.thread_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

if.end20.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %pipefd.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pipefd.i, align 4
  %89 = ptrtoint ptr %pipefd to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %pipefd, align 4
  br label %cleanup.i

sw.bb22.i:                                        ; preds = %if.end14.i
  %call24.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %sw.bb22.i.parse_options.exit.thread_crit_edge

sw.bb22.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

if.end27.i:                                       ; preds = %sw.bb22.i
  %90 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task.i, align 8
  %cred36.i = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 99
  %92 = ptrtoint ptr %cred36.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cred36.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %93, i32 0, i32 25
  %94 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %user_ns.i, align 4
  %96 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %option.i, align 4
  %call37.i = call i32 @make_kuid(ptr noundef %95, i32 noundef %97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37.i)
  %cmp.i.not.i = icmp eq i32 %call37.i, -1
  br i1 %cmp.i.not.i, label %if.end27.i.parse_options.exit.thread_crit_edge, label %if.end41.i

if.end27.i.parse_options.exit.thread_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

if.end41.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %i_uid.i225 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call37.i, ptr %i_uid.i225, align 4
  br label %cleanup.i

sw.bb43.i:                                        ; preds = %if.end14.i
  %call45.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %sw.bb43.i.parse_options.exit.thread_crit_edge

sw.bb43.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

if.end48.i:                                       ; preds = %sw.bb43.i
  %99 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task.i, align 8
  %cred57.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 99
  %101 = ptrtoint ptr %cred57.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cred57.i, align 16
  %user_ns58.i = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 25
  %103 = ptrtoint ptr %user_ns58.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %user_ns58.i, align 4
  %105 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %option.i, align 4
  %call59.i = call i32 @make_kgid(ptr noundef %104, i32 noundef %106) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call59.i)
  %cmp.i119.not.i = icmp eq i32 %call59.i, -1
  br i1 %cmp.i119.not.i, label %if.end48.i.parse_options.exit.thread_crit_edge, label %if.end64.i

if.end48.i.parse_options.exit.thread_crit_edge:   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

if.end64.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %i_gid.i226 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call59.i, ptr %i_gid.i226, align 8
  br label %cleanup.i

sw.bb66.i:                                        ; preds = %if.end14.i
  %call68.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %sw.bb66.i.parse_options.exit.thread_crit_edge

sw.bb66.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

if.end71.i:                                       ; preds = %sw.bb66.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %option.i, align 4
  br label %cleanup.i

sw.bb72.i:                                        ; preds = %if.end14.i
  %call74.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %sw.bb72.i.parse_options.exit.thread_crit_edge

sw.bb72.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

if.end77.i:                                       ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %option.i, align 4
  %112 = ptrtoint ptr %min_proto to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %min_proto, align 8
  br label %cleanup.i

sw.bb79.i:                                        ; preds = %if.end14.i
  %call81.i = call i32 @match_int(ptr noundef nonnull %args.i, ptr noundef nonnull %option.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.end84.i, label %sw.bb79.i.parse_options.exit.thread_crit_edge

sw.bb79.i.parse_options.exit.thread_crit_edge:    ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit.thread

if.end84.i:                                       ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %option.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %option.i, align 4
  %115 = ptrtoint ptr %max_proto to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %max_proto, align 4
  br label %cleanup.i

sw.bb86.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %type, align 8
  br label %cleanup.i

sw.bb87.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %type, align 8
  br label %cleanup.i

sw.bb89.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 4, ptr %type, align 8
  br label %cleanup.i

sw.bb91.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags, align 8
  %or.i = or i32 %120, 2
  store i32 %or.i, ptr %flags, align 8
  br label %cleanup.i

sw.bb92.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags, align 8
  %or94.i = or i32 %122, 4
  store i32 %or94.i, ptr %flags, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb92.i, %sw.bb91.i, %sw.bb89.i, %sw.bb87.i, %sw.bb86.i, %if.end84.i, %if.end77.i, %if.end71.i, %if.end64.i, %if.end41.i, %if.end20.i, %while.body.i.cleanup.i_crit_edge
  %pgrp.1 = phi i32 [ %pgrp.0, %while.body.i.cleanup.i_crit_edge ], [ %pgrp.0, %sw.bb92.i ], [ %pgrp.0, %sw.bb91.i ], [ %pgrp.0, %sw.bb89.i ], [ %pgrp.0, %sw.bb87.i ], [ %pgrp.0, %sw.bb86.i ], [ %pgrp.0, %if.end84.i ], [ %pgrp.0, %if.end77.i ], [ %109, %if.end71.i ], [ %pgrp.0, %if.end64.i ], [ %pgrp.0, %if.end41.i ], [ %pgrp.0, %if.end20.i ]
  %pgrp_set.1 = phi i8 [ %pgrp_set.0, %while.body.i.cleanup.i_crit_edge ], [ %pgrp_set.0, %sw.bb92.i ], [ %pgrp_set.0, %sw.bb91.i ], [ %pgrp_set.0, %sw.bb89.i ], [ %pgrp_set.0, %sw.bb87.i ], [ %pgrp_set.0, %sw.bb86.i ], [ %pgrp_set.0, %if.end84.i ], [ %pgrp_set.0, %if.end77.i ], [ 1, %if.end71.i ], [ %pgrp_set.0, %if.end64.i ], [ %pgrp_set.0, %if.end41.i ], [ %pgrp_set.0, %if.end20.i ]
  %call11.i = call ptr @strsep(ptr noundef nonnull %options.addr.i, ptr noundef nonnull @.str.45) #8
  %cmp.not.i = icmp eq ptr %call11.i, null
  br i1 %cmp.not.i, label %cleanup.i.parse_options.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.parse_options.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_options.exit

parse_options.exit.thread:                        ; preds = %sw.bb79.i.parse_options.exit.thread_crit_edge, %sw.bb72.i.parse_options.exit.thread_crit_edge, %sw.bb66.i.parse_options.exit.thread_crit_edge, %if.end48.i.parse_options.exit.thread_crit_edge, %sw.bb43.i.parse_options.exit.thread_crit_edge, %if.end27.i.parse_options.exit.thread_crit_edge, %sw.bb22.i.parse_options.exit.thread_crit_edge, %sw.bb.i.parse_options.exit.thread_crit_edge, %if.end14.i.parse_options.exit.thread_crit_edge, %if.end31.parse_options.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipefd.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  br label %do.end37

parse_options.exit:                               ; preds = %cleanup.i.parse_options.exit_crit_edge, %while.cond.preheader.i.parse_options.exit_crit_edge
  %pgrp.2 = phi i32 [ 0, %while.cond.preheader.i.parse_options.exit_crit_edge ], [ %pgrp.1, %cleanup.i.parse_options.exit_crit_edge ]
  %pgrp_set.2 = phi i8 [ 0, %while.cond.preheader.i.parse_options.exit_crit_edge ], [ %pgrp_set.1, %cleanup.i.parse_options.exit_crit_edge ]
  %123 = ptrtoint ptr %pipefd to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pipefd, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipefd.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %options.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %tobool33.not = icmp sgt i32 %124, -1
  br i1 %tobool33.not, label %if.end43, label %parse_options.exit.do.end37_crit_edge

parse_options.exit.do.end37_crit_edge:            ; preds = %parse_options.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

do.end37:                                         ; preds = %parse_options.exit.do.end37_crit_edge, %parse_options.exit.thread
  %125 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i228 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i228 to ptr
  %task40 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %task40 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task40, align 8
  %pid41 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 68
  %129 = ptrtoint ptr %pid41 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pid41, align 8
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %130, ptr noundef nonnull @.str.5) #12
  br label %fail_dput

if.end43:                                         ; preds = %parse_options.exit
  %131 = ptrtoint ptr %max_proto to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %max_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %132)
  %cmp = icmp slt i32 %132, 3
  br i1 %cmp, label %if.end43.do.end50_crit_edge, label %lor.lhs.false

if.end43.do.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

lor.lhs.false:                                    ; preds = %if.end43
  %133 = ptrtoint ptr %min_proto to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %min_proto, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %134)
  %cmp46 = icmp sgt i32 %134, 5
  br i1 %cmp46, label %lor.lhs.false.do.end50_crit_edge, label %if.end58

lor.lhs.false.do.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false.do.end50_crit_edge, %if.end43.do.end50_crit_edge
  %135 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i229 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i229 to ptr
  %task53 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task53 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task53, align 8
  %pid54 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 68
  %139 = ptrtoint ptr %pid54 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pid54, align 8
  %141 = ptrtoint ptr %min_proto to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %min_proto, align 8
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %140, ptr noundef nonnull @.str.5, i32 noundef %142, i32 noundef %132, i32 noundef 3, i32 noundef 5) #12
  br label %fail_dput

if.end58:                                         ; preds = %lor.lhs.false
  %143 = call i32 @llvm.umin.i32(i32 %132, i32 5)
  %144 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %version, align 8
  %145 = ptrtoint ptr %sub_version to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 5, ptr %sub_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pgrp_set.2)
  %tobool67.not = icmp eq i8 %pgrp_set.2, 0
  br i1 %tobool67.not, label %if.else83, label %if.then68

if.then68:                                        ; preds = %if.end58
  %call69 = call ptr @find_get_pid(i32 noundef %pgrp.2) #8
  %146 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call69, ptr %oz_pgrp, align 4
  %tobool72.not = icmp eq ptr %call69, null
  br i1 %tobool72.not, label %do.end76, label %if.then68.if.end88_crit_edge

if.then68.if.end88_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

do.end76:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %147 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i230 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i230 to ptr
  %task79 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %task79 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %task79, align 8
  %pid80 = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 68
  %151 = ptrtoint ptr %pid80 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pid80, align 8
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %152, ptr noundef nonnull @.str.5, i32 noundef %pgrp.2) #12
  br label %fail_dput

if.else83:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %153 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i231 = and i32 %153, -16384
  %154 = inttoptr i32 %and.i231 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %task85, align 8
  %call86 = call ptr @get_task_pid(ptr noundef %156, i32 noundef 2) #8
  %157 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call86, ptr %oz_pgrp, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.else83, %if.then68.if.end88_crit_edge
  %158 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %type, align 8
  %160 = zext i32 %159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %159, label %if.end88.if.end93_crit_edge [
    i32 4, label %if.end88.if.then92_crit_edge
    i32 2, label %if.end88.if.then92_crit_edge256
  ]

if.end88.if.then92_crit_edge256:                  ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.end88.if.then92_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then92:                                        ; preds = %if.end88.if.then92_crit_edge, %if.end88.if.then92_crit_edge256
  %161 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %call28, align 8
  %or.i233 = or i32 %162, 393216
  store i32 %or.i233, ptr %call28, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end88.if.end93_crit_edge
  %163 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @autofs_root_operations, ptr %163, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %165 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @autofs_dir_inode_operations, ptr %i_op, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @autofs_fill_super.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@autofs_fill_super, %if.then106)) #8
          to label %do.end115 [label %if.then106], !srcloc !122

if.then106:                                       ; preds = %if.end93
  %166 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i234 = and i32 %166, -16384
  %167 = inttoptr i32 %and.i234 to ptr
  %task108 = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %task108 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task108, align 8
  %pid109 = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 68
  %170 = ptrtoint ptr %pid109 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %pid109, align 8
  %172 = ptrtoint ptr %pipefd to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pipefd, align 4
  %174 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %oz_pgrp, align 4
  %tobool.not.i235 = icmp eq ptr %175, null
  br i1 %tobool.not.i235, label %if.then106.pid_nr.exit_crit_edge, label %if.then.i236

if.then106.pid_nr.exit_crit_edge:                 ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %pid_nr.exit

if.then.i236:                                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  %numbers.i = getelementptr inbounds %struct.pid, ptr %175, i32 0, i32 7
  %176 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i236, %if.then106.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %177, %if.then.i236 ], [ 0, %if.then106.pid_nr.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @autofs_fill_super.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.23, i32 noundef %171, ptr noundef nonnull @.str.5, i32 noundef %173, i32 noundef %nr.0.i) #8
  br label %do.end115

do.end115:                                        ; preds = %pid_nr.exit, %if.end93
  %178 = ptrtoint ptr %pipefd to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pipefd, align 4
  %call117 = call ptr @fget(i32 noundef %179) #8
  %tobool118.not = icmp eq ptr %call117, null
  br i1 %tobool118.not, label %do.end122, label %if.end128

do.end122:                                        ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #10
  %180 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i238 = and i32 %180, -16384
  %181 = inttoptr i32 %and.i238 to ptr
  %task125 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %task125 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %task125, align 8
  %pid126 = getelementptr inbounds %struct.task_struct, ptr %183, i32 0, i32 68
  %184 = ptrtoint ptr %pid126 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pid126, align 8
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %185, ptr noundef nonnull @.str.5) #12
  br label %fail_put_pid

if.end128:                                        ; preds = %do.end115
  %f_mode.i = getelementptr inbounds %struct.file, ptr %call117, i32 0, i32 8
  %186 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %f_mode.i, align 8
  %and.i239 = and i32 %187, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i239)
  %tobool.not.i240 = icmp eq i32 %and.i239, 0
  br i1 %tobool.not.i240, label %if.end128.do.end137_crit_edge, label %if.end.i242

if.end128.do.end137_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end137

if.end.i242:                                      ; preds = %if.end128
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %call117, i32 0, i32 2
  %188 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %f_inode.i.i, align 8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %189, align 8
  %192 = and i16 %191, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %192)
  %cmp.i241 = icmp eq i16 %192, 4096
  br i1 %cmp.i241, label %if.end132, label %if.end.i242.do.end137_crit_edge

if.end.i242.do.end137_crit_edge:                  ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end137

if.end132:                                        ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #10
  %f_flags.i = getelementptr inbounds %struct.file, ptr %call117, i32 0, i32 7
  %193 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %f_flags.i, align 4
  %or.i243 = and i32 %194, -67585
  %and6.i = or i32 %or.i243, 65536
  store i32 %and6.i, ptr %f_flags.i, align 4
  %195 = ptrtoint ptr %pipe8 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call117, ptr %pipe8, align 8
  %196 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %flags, align 8
  %and = and i32 %197, -2
  store i32 %and, ptr %flags, align 8
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %198 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call28, ptr %s_root, align 64
  br label %cleanup

do.end137:                                        ; preds = %if.end.i242.do.end137_crit_edge, %if.end128.do.end137_crit_edge
  %199 = call i32 @llvm.read_register.i32(metadata !112) #8
  %and.i245 = and i32 %199, -16384
  %200 = inttoptr i32 %and.i245 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %task140, align 8
  %pid141 = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 68
  %203 = ptrtoint ptr %pid141 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %pid141, align 8
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %204, ptr noundef nonnull @.str.5) #12
  call void @fput(ptr noundef nonnull %call117) #8
  br label %fail_put_pid

fail_put_pid:                                     ; preds = %do.end137, %do.end122
  %205 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %oz_pgrp, align 4
  call void @put_pid(ptr noundef %206) #8
  br label %fail_dput

fail_dput:                                        ; preds = %fail_put_pid, %do.end76, %do.end50, %do.end37
  call void @dput(ptr noundef nonnull %call28) #8
  br label %fail_free

fail_free:                                        ; preds = %fail_dput, %autofs_free_ino.exit, %do.end.fail_free_crit_edge
  %ret.2 = phi i32 [ -22, %fail_dput ], [ -12, %autofs_free_ino.exit ], [ -12, %do.end.fail_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %207 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %if.end132, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail_free ], [ 0, %if.end132 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @autofs_get_inode(ptr noundef %sb, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sb) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %call, align 8
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %1 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then1

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %i_uid4 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %i_uid4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_uid4, align 4
  %7 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_root, align 64
  %d_inode.i59 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i59 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i59, align 8
  %i_gid7 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %i_gid7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_gid7, align 8
  %14 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %i_gid, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then1, %if.end.if.end8_crit_edge
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call) #8
  %15 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  %16 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %17 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %call9 = call i32 @get_next_ino() #8
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call9, ptr %i_ino, align 8
  %19 = and i16 %mode, -4096
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.60)
  switch i16 %19, label %do.end [
    i16 16384, label %if.then12
    i16 -24576, label %if.then17
  ]

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @set_nlink(ptr noundef nonnull %call, i32 noundef 2) #8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @autofs_dir_inode_operations, ptr %i_op, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @autofs_dir_operations, ptr %22, align 8
  br label %cleanup

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %i_op18 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %24 = ptrtoint ptr %i_op18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @autofs_symlink_inode_operations, ptr %i_op18, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 382, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then17, %if.then12, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @autofs_evict_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clear_inode(ptr noundef %inode) #8
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autofs_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_root = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pipefd = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pipefd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipefd, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %9) #8
  %i_uid = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack)
  %cmp.i = icmp eq i32 %.unpack, 0
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call8 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %11) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %call8) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %i_gid = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack76 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack76)
  %cmp.i78 = icmp eq i32 %.unpack76, 0
  br i1 %cmp.i78, label %if.end9.if.end19_crit_edge, label %if.then15

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %13 = insertvalue [1 x i32] undef, i32 %.unpack76, 0
  %call18 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %13) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %call18) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end9.if.end19_crit_edge
  %oz_pgrp = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %oz_pgrp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oz_pgrp, align 4
  %call20 = tail call i32 @pid_vnr(ptr noundef %15) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %call20) #8
  %exp_timeout = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %exp_timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exp_timeout, align 4
  %div = udiv i32 %17, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %div) #8
  %min_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %min_proto to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_proto, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %19) #8
  %max_proto = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %max_proto to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_proto, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %21) #8
  %type = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch.selectcmp = icmp eq i32 %23, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.38, ptr @.str.39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %switch.selectcmp82 = icmp eq i32 %23, 4
  %switch.select83 = select i1 %switch.selectcmp82, ptr @.str.37, ptr %switch.select
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %switch.select83) #8
  %flags = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end19.if.end33_crit_edge, label %if.then32

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.40) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end19.if.end33_crit_edge
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and35 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end38_crit_edge, label %if.then37

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.41) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33.if.end38_crit_edge
  %pipe = getelementptr inbounds %struct.autofs_sb_info, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe, align 4
  %tobool39.not = icmp eq ptr %29, null
  br i1 %tobool39.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %f_inode.i = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %33) #8
  br label %cleanup

if.else43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else43, %if.then40, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/autofs/inode.c", i32 55, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @autofs_kill_sb.__UNIQUE_ID_ddebug237, !1, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/autofs/inode.c", i32 234, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @autofs_fill_super.__UNIQUE_ID_ddebug239, !8, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @autofs_fill_super.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../fs/autofs/inode.c", i32 249, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @autofs_fill_super.__key.9, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/autofs/inode.c", i32 250, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @autofs_fill_super.__key.11, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/autofs/inode.c", i32 251, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @autofs_fill_super.__key.13, !22, !"__key", i1 false, i1 false}
!22 = !{!"../fs/autofs/inode.c", i32 253, i32 2}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/autofs/inode.c", i32 283, i32 3}
!26 = !{ptr @autofs_fill_super._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @autofs_fill_super._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/autofs/inode.c", i32 290, i32 3}
!30 = !{ptr @autofs_fill_super._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @autofs_fill_super._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/autofs/inode.c", i32 307, i32 4}
!34 = !{ptr @autofs_fill_super._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @autofs_fill_super._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/autofs/inode.c", i32 321, i32 2}
!38 = !{ptr @autofs_fill_super.__UNIQUE_ID_ddebug240, !37, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!39 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/autofs/inode.c", i32 326, i32 3}
!42 = !{ptr @autofs_fill_super._entry.24, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @autofs_fill_super._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/autofs/inode.c", i32 345, i32 2}
!46 = !{ptr @autofs_fill_super._entry.27, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @autofs_fill_super._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @autofs_sops, !49, !"autofs_sops", i1 false, i1 false}
!49 = !{!"../fs/autofs/inode.c", i32 106, i32 38}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/autofs/inode.c", i32 69, i32 16}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/autofs/inode.c", i32 71, i32 17}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/autofs/inode.c", i32 74, i32 17}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/autofs/inode.c", i32 76, i32 16}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/autofs/inode.c", i32 77, i32 16}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/autofs/inode.c", i32 78, i32 16}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/autofs/inode.c", i32 79, i32 16}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/autofs/inode.c", i32 82, i32 15}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/autofs/inode.c", i32 84, i32 15}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/autofs/inode.c", i32 86, i32 15}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/autofs/inode.c", i32 88, i32 15}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/autofs/inode.c", i32 90, i32 15}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/autofs/inode.c", i32 93, i32 17}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/autofs/inode.c", i32 95, i32 15}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../fs/autofs/inode.c", i32 142, i32 16}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../fs/autofs/inode.c", i32 143, i32 16}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/autofs/inode.c", i32 153, i32 31}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../fs/autofs/inode.c", i32 169, i32 20}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../fs/autofs/inode.c", i32 177, i32 20}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/autofs/inode.c", i32 117, i32 11}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/autofs/inode.c", i32 118, i32 12}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/autofs/inode.c", i32 119, i32 12}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/autofs/inode.c", i32 120, i32 13}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/autofs/inode.c", i32 121, i32 17}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/autofs/inode.c", i32 122, i32 17}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/autofs/inode.c", i32 123, i32 17}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/autofs/inode.c", i32 124, i32 15}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/autofs/inode.c", i32 125, i32 15}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/autofs/inode.c", i32 126, i32 21}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/autofs/inode.c", i32 127, i32 15}
!110 = !{ptr @tokens, !111, !"tokens", i1 false, i1 false}
!111 = !{!"../fs/autofs/inode.c", i32 116, i32 28}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2148194442, i64 2148194447, i64 2148194460, i64 2148194504, i64 2148194538, i64 2148194559}
!123 = !{!"auto-init"}
