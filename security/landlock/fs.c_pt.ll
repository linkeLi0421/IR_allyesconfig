; ModuleID = '/llk/IR_all_yes/security/landlock/fs.c_pt.bc'
source_filename = "../security/landlock/fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.security_hook_list = type { %struct.hlist_node, ptr, %union.security_list_options, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.security_list_options = type { ptr }
%struct.landlock_object_underops = type { ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.security_hook_heads = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.path = type { ptr, ptr }
%struct.landlock_ruleset = type { %struct.rb_root, ptr, %union.anon }
%struct.rb_root = type { ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.mutex, %struct.refcount_struct, i32, i32, [0 x i16] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.64 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.landlock_object = type { %struct.refcount_struct, %struct.spinlock, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.callback_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }
%struct.file = type { %union.anon.69, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.69 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.landlock_rule = type { %struct.rb_node, ptr, i32, [0 x %struct.landlock_layer] }
%struct.landlock_layer = type { i16, i16 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }

@landlock_append_fs_rule.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"security/landlock/fs.c\00", [41 x i8] zeroinitializer }, align 32
@landlock_hooks = internal global { [15 x %struct.security_hook_list], [84 x i8] } { [15 x %struct.security_hook_list] [%struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 208), %union.security_list_options { ptr @hook_inode_free_security }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 88), %union.security_list_options { ptr @hook_sb_delete }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 124), %union.security_list_options { ptr @hook_sb_mount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 144), %union.security_list_options { ptr @hook_move_mount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 128), %union.security_list_options { ptr @hook_sb_umount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 108), %union.security_list_options { ptr @hook_sb_remount }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 132), %union.security_list_options { ptr @hook_sb_pivotroot }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 180), %union.security_list_options { ptr @hook_path_link }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 184), %union.security_list_options { ptr @hook_path_rename }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 160), %union.security_list_options { ptr @hook_path_mkdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 168), %union.security_list_options { ptr @hook_path_mknod }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 176), %union.security_list_options { ptr @hook_path_symlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 156), %union.security_list_options { ptr @hook_path_unlink }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 164), %union.security_list_options { ptr @hook_path_rmdir }, ptr null }, %struct.security_hook_list { %struct.hlist_node zeroinitializer, ptr getelementptr (i8, ptr @security_hook_heads, i64 376), %union.security_list_options { ptr @hook_file_open }, ptr null }], [84 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"landlock\00", [23 x i8] zeroinitializer }, align 32
@get_inode_object.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@landlock_fs_underops = internal constant { %struct.landlock_object_underops, [28 x i8] } { %struct.landlock_object_underops { ptr @release_inode }, [28 x i8] zeroinitializer }, align 32
@landlock_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@security_hook_heads = external dso_local global %struct.security_hook_heads, align 4
@hook_inode_free_security.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@landlock_initialized = external dso_local local_unnamed_addr global i8, align 1
@hook_sb_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_access_path.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_access_path.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@unmask_layers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_mode_access.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.hook_path_link = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 256, i32 1024, i32 64, i32 4096, i32 128, i32 4096, i32 2048, i32 4096, i32 256, i32 4096, i32 4096, i32 4096, i32 512], [44 x i8] zeroinitializer }, align 32
@switch.table.hook_path_rename = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 256, i32 1024, i32 64, i32 4096, i32 128, i32 4096, i32 2048, i32 4096, i32 256, i32 4096, i32 4096, i32 4096, i32 512], [44 x i8] zeroinitializer }, align 32
@switch.table.hook_path_mknod = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 256, i32 1024, i32 64, i32 4096, i32 128, i32 4096, i32 2048, i32 4096, i32 256, i32 4096, i32 4096, i32 4096, i32 512], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 162, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"landlock_hooks\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 667, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 691, i32 4 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 94, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"landlock_fs_underops\00", align 1
@___asan_gen_.20 = private constant [26 x i8] c"../security/landlock/fs.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 81, i32 46 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 695, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 723, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"switch.table.hook_path_link\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [30 x i8] c"switch.table.hook_path_rename\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [29 x i8] c"switch.table.hook_path_mknod\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @landlock_hooks, ptr @.str.1, ptr @.str.2, ptr @landlock_fs_underops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.hook_path_link, ptr @switch.table.hook_path_rename, ptr @switch.table.hook_path_mknod], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @landlock_hooks to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @landlock_fs_underops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hook_path_link to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hook_path_rename to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hook_path_mknod to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @landlock_append_fs_rule(ptr noundef %ruleset, ptr nocapture noundef readonly %path, i32 noundef %access_rights) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %4)
  %5 = icmp eq i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %access_rights)
  %cmp.not = icmp ult i32 %access_rights, 8
  %or.cond = or i1 %cmp.not, %5
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2
  %num_layers = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 0, i32 2, i32 0, i32 3
  %7 = ptrtoint ptr %num_layers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2.not = icmp eq i32 %8, 1
  br i1 %cmp2.not, label %if.end43, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b72 = load i1, ptr @landlock_append_fs_rule.__already_done, align 1
  br i1 %.b72, label %land.rhs.cleanup_crit_edge, label %if.then11, !prof !43

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @landlock_append_fs_rule.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end
  %fs_access_masks = getelementptr inbounds %struct.landlock_ruleset, ptr %ruleset, i32 1
  %9 = ptrtoint ptr %fs_access_masks to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fs_access_masks, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %15
  %16 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end43.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end43.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end43
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end43.rcu_read_lock.exit.i_crit_edge
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 18
  br label %retry.i

retry.i:                                          ; preds = %retry.i.backedge, %rcu_read_lock.exit.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %add.ptr.i.i, align 4
  %call3.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %retry.i.do.end9.i_crit_edge

retry.i.do.end9.i_crit_edge:                      ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %retry.i
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b96.i = load i1, ptr @get_inode_object.__warned, align 1
  br i1 %.b96.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_inode_object.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull @.str.2) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %retry.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %21, null
  br i1 %tobool11.not.i, label %if.end19.i, label %if.then12.i

if.then12.i:                                      ; preds = %do.end9.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %21, i32 noundef 4) #8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then12.i
  %24 = phi i32 [ %23, %if.then12.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i108.i = add i32 %24, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %21, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %26 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %21, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %28 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 %27, i32 %add.i.i.i108.i, ptr nonnull elementtype(i32) %21) #8, !srcloc !45
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %27
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !43

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %30, 1
  %31 = or i32 %add5.i.i.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !43

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef 0) #8
  %32 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %33 = phi i32 [ %30, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.i.i.i.not.i = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.not.i, label %if.end17.i, label %if.then16.i, !prof !46

if.then16.i:                                      ; preds = %refcount_inc_not_zero.exit.i
  %call.i109.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i109.i, label %if.then16.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i112.i

if.then16.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i112.i:                             ; preds = %if.then16.i
  %call1.i110.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110.i)
  %tobool.not.i111.i = icmp eq i32 %call1.i110.i, 0
  br i1 %tobool.not.i111.i, label %land.lhs.true.i112.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i114.i

land.lhs.true.i112.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i114.i:                            ; preds = %land.lhs.true.i112.i
  %.b4.i113.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i113.i, label %land.lhs.true2.i114.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i115.i

land.lhs.true2.i114.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i115.i:                                   ; preds = %land.lhs.true2.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i115.i, %land.lhs.true2.i114.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i112.i.rcu_read_unlock.exit.i_crit_edge, %if.then16.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %34 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i116.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i116.i to ptr
  %preempt_count.i.i.i.i117.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i117.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i117.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %get_inode_object.exit

if.end17.i:                                       ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.landlock_object, ptr %21, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i) #8
  call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  br label %retry.i.backedge

if.end19.i:                                       ; preds = %do.end9.i
  %call.i118.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i118.i, label %if.end19.i.rcu_read_unlock.exit128.i_crit_edge, label %land.lhs.true.i121.i

if.end19.i.rcu_read_unlock.exit128.i_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit128.i

land.lhs.true.i121.i:                             ; preds = %if.end19.i
  %call1.i119.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119.i)
  %tobool.not.i120.i = icmp eq i32 %call1.i119.i, 0
  br i1 %tobool.not.i120.i, label %land.lhs.true.i121.i.rcu_read_unlock.exit128.i_crit_edge, label %land.lhs.true2.i123.i

land.lhs.true.i121.i.rcu_read_unlock.exit128.i_crit_edge: ; preds = %land.lhs.true.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit128.i

land.lhs.true2.i123.i:                            ; preds = %land.lhs.true.i121.i
  %.b4.i122.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i122.i, label %land.lhs.true2.i123.i.rcu_read_unlock.exit128.i_crit_edge, label %if.then.i124.i

land.lhs.true2.i123.i.rcu_read_unlock.exit128.i_crit_edge: ; preds = %land.lhs.true2.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit128.i

if.then.i124.i:                                   ; preds = %land.lhs.true2.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit128.i

rcu_read_unlock.exit128.i:                        ; preds = %if.then.i124.i, %land.lhs.true2.i123.i.rcu_read_unlock.exit128.i_crit_edge, %land.lhs.true.i121.i.rcu_read_unlock.exit128.i_crit_edge, %if.end19.i.rcu_read_unlock.exit128.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %38 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i125.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i125.i to ptr
  %preempt_count.i.i.i.i126.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i126.i, align 4
  %sub.i.i.i127.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i127.i, ptr %preempt_count.i.i.i.i126.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %call20.i = call ptr @landlock_create_object(ptr noundef nonnull @landlock_fs_underops, ptr noundef %12) #8
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %rcu_read_unlock.exit128.i.get_inode_object.exit_crit_edge, label %if.end23.i

rcu_read_unlock.exit128.i.get_inode_object.exit_crit_edge: ; preds = %rcu_read_unlock.exit128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_inode_object.exit

if.end23.i:                                       ; preds = %rcu_read_unlock.exit128.i
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #8
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %add.ptr.i.i, align 4
  %tobool30.not.i = icmp eq ptr %43, null
  br i1 %tobool30.not.i, label %if.end39.i, label %if.then37.i, !prof !43

if.then37.i:                                      ; preds = %if.end23.i
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #8
  call void @kfree(ptr noundef %call20.i) #8
  %44 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i97.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i97.i to ptr
  %preempt_count.i.i.i.i98.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i98.i, align 4
  %add.i.i.i99.i = add i32 %47, 1
  store volatile i32 %add.i.i.i99.i, ptr %preempt_count.i.i.i.i98.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i100.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i100.i, label %if.then37.i.retry.i.backedge_crit_edge, label %land.lhs.true.i103.i

if.then37.i.retry.i.backedge_crit_edge:           ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i.backedge

land.lhs.true.i103.i:                             ; preds = %if.then37.i
  %call1.i101.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call1.i101.i, 0
  br i1 %tobool.not.i102.i, label %land.lhs.true.i103.i.retry.i.backedge_crit_edge, label %land.lhs.true2.i105.i

land.lhs.true.i103.i.retry.i.backedge_crit_edge:  ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i.backedge

land.lhs.true2.i105.i:                            ; preds = %land.lhs.true.i103.i
  %.b4.i104.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i104.i, label %land.lhs.true2.i105.i.retry.i.backedge_crit_edge, label %if.then.i106.i

land.lhs.true2.i105.i.retry.i.backedge_crit_edge: ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i.backedge

if.then.i106.i:                                   ; preds = %land.lhs.true2.i105.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %retry.i.backedge

retry.i.backedge:                                 ; preds = %if.then.i106.i, %land.lhs.true2.i105.i.retry.i.backedge_crit_edge, %land.lhs.true.i103.i.retry.i.backedge_crit_edge, %if.then37.i.retry.i.backedge_crit_edge, %if.end17.i
  br label %retry.i

if.end39.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ihold(ptr noundef %12) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call20.i, ptr %add.ptr.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #8
  br label %get_inode_object.exit

get_inode_object.exit:                            ; preds = %if.end39.i, %rcu_read_unlock.exit128.i.get_inode_object.exit_crit_edge, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %21, %rcu_read_unlock.exit.i ], [ %call20.i, %if.end39.i ], [ %call20.i, %rcu_read_unlock.exit128.i.get_inode_object.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then53, label %if.end55

if.then53:                                        ; preds = %get_inode_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end55:                                         ; preds = %get_inode_object.exit
  call void @__sanitizer_cov_trace_pc() #10
  %50 = and i16 %10, 8191
  %51 = xor i16 %50, 8191
  %and = zext i16 %51 to i32
  %or47 = or i32 %and, %access_rights
  call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #8
  %call56 = call i32 @landlock_insert_rule(ptr noundef %ruleset, ptr noundef %retval.0.i, i32 noundef %or47) #8
  call void @mutex_unlock(ptr noundef %6) #8
  call void @landlock_put_object(ptr noundef %retval.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then53, %if.then11, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %if.then53 ], [ %call56, %if.end55 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then11 ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @landlock_insert_rule(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @landlock_put_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @landlock_add_fs_hooks() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @security_add_hooks(ptr noundef nonnull @landlock_hooks, i32 noundef 15, ptr noundef nonnull @.str.1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_add_hooks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @landlock_create_object(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_inode(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %underobj = getelementptr inbounds %struct.landlock_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %underobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %underobj, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.landlock_object, ptr %object, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %underobj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %underobj, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #8, !srcloc !49
  %lock2 = getelementptr inbounds %struct.landlock_object, ptr %object, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock2) #8
  %i_security.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i59 = getelementptr i8, ptr %10, i32 %11
  %12 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %add.ptr.i59, align 4
  tail call void @iput(ptr noundef nonnull %1) #8
  %13 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i61 = getelementptr i8, ptr %14, i32 %15
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i61, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i61, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i61, ptr %add.ptr.i61, i32 1, ptr elementtype(i32) %add.ptr.i61) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then42, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3) to i32))
  %19 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i63 = getelementptr i8, ptr %18, i32 %19
  tail call void @wake_up_var(ptr noundef %add.ptr.i63) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hook_inode_free_security(ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b38 = load i1, ptr @hook_inode_free_security.__already_done, align 1
  br i1 %.b38, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !43

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @hook_inode_free_security.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef null) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hook_sb_delete(ptr noundef %sb) #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @landlock_initialized to i32))
  %0 = load i8, ptr @landlock_initialized, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup125_crit_edge, label %if.end

entry.cleanup125_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup125

if.end:                                           ; preds = %entry
  %s_inode_list_lock = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #8
  %s_inodes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 62
  %1 = ptrtoint ptr %s_inodes to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn209 = load ptr, ptr %s_inodes, align 4
  %cmp.not211 = icmp eq ptr %.pn209, %s_inodes
  br i1 %cmp.not211, label %for.end.thread, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #8
  br label %do.body93

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn213 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn209, %if.end.for.body_crit_edge ]
  %prev_inode.0212 = phi ptr [ %prev_inode.1, %cleanup.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %inode.0214 = getelementptr i8, ptr %.pn213, i32 -344
  %i_count = getelementptr i8, ptr %.pn213, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count, i32 noundef 4) #8
  %2 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %i_lock = getelementptr i8, ptr %.pn213, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  %i_state = getelementptr i8, ptr %.pn213, i32 -144
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end8.rcu_read_lock.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end8.rcu_read_lock.exit_crit_edge
  %i_security.i = getelementptr i8, ptr %.pn213, i32 -308
  %10 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %12
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %add.ptr.i, align 4
  %call13 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end22_crit_edge

rcu_read_lock.exit.do.end22_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b163 = load i1, ptr @hook_sb_delete.__warned, align 1
  br i1 %.b163, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @hook_sb_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 372, ptr noundef nonnull @.str.2) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %rcu_read_lock.exit.do.end22_crit_edge
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %if.then25, label %if.end27

if.then25:                                        ; preds = %do.end22
  %call.i166 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i166, label %if.then25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i169

if.then25.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i169:                               ; preds = %if.then25
  %call1.i167 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167)
  %tobool.not.i168 = icmp eq i32 %call1.i167, 0
  br i1 %tobool.not.i168, label %land.lhs.true.i169.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i171

land.lhs.true.i169.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i171:                              ; preds = %land.lhs.true.i169
  %.b4.i170 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i170, label %land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge, label %if.then.i172

land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i172:                                     ; preds = %land.lhs.true2.i171
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i172, %land.lhs.true2.i171.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i169.rcu_read_unlock.exit_crit_edge, %if.then25.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %15 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i173 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i173 to ptr
  %preempt_count.i.i.i.i174 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i174, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i174, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  br label %cleanup

if.end27:                                         ; preds = %do.end22
  tail call void @__iget(ptr noundef %inode.0214) #8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  %lock = getelementptr inbounds %struct.landlock_object, ptr %14, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %underobj = getelementptr inbounds %struct.landlock_object, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %underobj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %underobj, align 4
  %cmp29 = icmp eq ptr %20, %inode.0214
  br i1 %cmp29, label %if.then30, label %if.else73

if.then30:                                        ; preds = %if.end27
  %21 = ptrtoint ptr %underobj to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %underobj, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %call.i175 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i175, label %if.then30.rcu_read_unlock.exit185_crit_edge, label %land.lhs.true.i178

if.then30.rcu_read_unlock.exit185_crit_edge:      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit185

land.lhs.true.i178:                               ; preds = %if.then30
  %call1.i176 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i176)
  %tobool.not.i177 = icmp eq i32 %call1.i176, 0
  br i1 %tobool.not.i177, label %land.lhs.true.i178.rcu_read_unlock.exit185_crit_edge, label %land.lhs.true2.i180

land.lhs.true.i178.rcu_read_unlock.exit185_crit_edge: ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit185

land.lhs.true2.i180:                              ; preds = %land.lhs.true.i178
  %.b4.i179 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i179, label %land.lhs.true2.i180.rcu_read_unlock.exit185_crit_edge, label %if.then.i181

land.lhs.true2.i180.rcu_read_unlock.exit185_crit_edge: ; preds = %land.lhs.true2.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit185

if.then.i181:                                     ; preds = %land.lhs.true2.i180
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit185

rcu_read_unlock.exit185:                          ; preds = %if.then.i181, %land.lhs.true2.i180.rcu_read_unlock.exit185_crit_edge, %land.lhs.true.i178.rcu_read_unlock.exit185_crit_edge, %if.then30.rcu_read_unlock.exit185_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %22 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i182 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i182 to ptr
  %preempt_count.i.i.i.i183 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i183, align 4
  %sub.i.i.i184 = add i32 %25, -1
  store volatile i32 %sub.i.i.i184, ptr %preempt_count.i.i.i.i183, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %26 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2) to i32))
  %28 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i187 = getelementptr i8, ptr %27, i32 %28
  %29 = ptrtoint ptr %add.ptr.i187 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr null, ptr %add.ptr.i187, align 4
  tail call void @iput(ptr noundef %inode.0214) #8
  br label %if.end75

if.else73:                                        ; preds = %if.end27
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %call.i188 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i188, label %if.else73.rcu_read_unlock.exit198_crit_edge, label %land.lhs.true.i191

if.else73.rcu_read_unlock.exit198_crit_edge:      ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit198

land.lhs.true.i191:                               ; preds = %if.else73
  %call1.i189 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i189)
  %tobool.not.i190 = icmp eq i32 %call1.i189, 0
  br i1 %tobool.not.i190, label %land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge, label %land.lhs.true2.i193

land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge: ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit198

land.lhs.true2.i193:                              ; preds = %land.lhs.true.i191
  %.b4.i192 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i192, label %land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge, label %if.then.i194

land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge: ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit198

if.then.i194:                                     ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit198

rcu_read_unlock.exit198:                          ; preds = %if.then.i194, %land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge, %land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge, %if.else73.rcu_read_unlock.exit198_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %30 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i195 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i195 to ptr
  %preempt_count.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i196, align 4
  %sub.i.i.i197 = add i32 %33, -1
  store volatile i32 %sub.i.i.i197, ptr %preempt_count.i.i.i.i196, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end75

if.end75:                                         ; preds = %rcu_read_unlock.exit198, %rcu_read_unlock.exit185
  %tobool76.not = icmp eq ptr %prev_inode.0212, null
  br i1 %tobool76.not, label %if.end75.cleanup_crit_edge, label %if.then77

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #8
  tail call void @iput(ptr noundef nonnull %prev_inode.0212) #8
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 428, i32 noundef 0) #8
  %call.i199 = tail call i32 @__cond_resched() #8
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end75.cleanup_crit_edge, %rcu_read_unlock.exit, %if.then6, %for.body.cleanup_crit_edge
  %prev_inode.1 = phi ptr [ %prev_inode.0212, %if.then6 ], [ %prev_inode.0212, %rcu_read_unlock.exit ], [ %prev_inode.0212, %for.body.cleanup_crit_edge ], [ %inode.0214, %if.then77 ], [ %inode.0214, %if.end75.cleanup_crit_edge ]
  %34 = ptrtoint ptr %.pn213 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load ptr, ptr %.pn213, align 4
  %cmp.not = icmp eq ptr %.pn, %s_inodes
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock) #8
  %tobool89.not = icmp eq ptr %prev_inode.1, null
  br i1 %tobool89.not, label %for.end.do.body93_crit_edge, label %if.then90

for.end.do.body93_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body93

if.then90:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iput(ptr noundef nonnull %prev_inode.1) #8
  br label %do.body93

do.body93:                                        ; preds = %if.then90, %for.end.do.body93_crit_edge, %for.end.thread
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 440) #8
  %s_security.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 17
  %35 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3) to i32))
  %37 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i200 = getelementptr i8, ptr %36, i32 %37
  %call.i.i164 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i200, i32 noundef 4) #8
  %38 = ptrtoint ptr %add.ptr.i200 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %add.ptr.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool101.not = icmp eq i32 %39, 0
  br i1 %tobool101.not, label %do.body93.cleanup125_crit_edge, label %if.end103

do.body93.cleanup125_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup125

if.end103:                                        ; preds = %do.body93
  %40 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3) to i32))
  %42 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i202 = getelementptr i8, ptr %41, i32 %42
  %call106 = tail call ptr @__var_waitqueue(ptr noundef %add.ptr.i202) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #8
  %43 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %44 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  %45 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3) to i32))
  %47 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i204 = getelementptr i8, ptr %46, i32 %47
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %add.ptr.i204, i32 noundef 0) #8
  %call110215 = call i32 @prepare_to_wait_event(ptr noundef %call106, ptr noundef %43, i32 noundef 2) #8
  %48 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3) to i32))
  %50 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i206216 = getelementptr i8, ptr %49, i32 %50
  %call.i.i165217 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i206216, i32 noundef 4) #8
  %51 = ptrtoint ptr %add.ptr.i206216 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %add.ptr.i206216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool114.not218 = icmp eq i32 %52, 0
  br i1 %tobool114.not218, label %if.end103.for.end120_crit_edge, label %if.end103.cleanup117_crit_edge

if.end103.cleanup117_crit_edge:                   ; preds = %if.end103
  br label %cleanup117

if.end103.for.end120_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

cleanup117:                                       ; preds = %cleanup117.cleanup117_crit_edge, %if.end103.cleanup117_crit_edge
  call void @schedule() #8
  %call110 = call i32 @prepare_to_wait_event(ptr noundef %call106, ptr noundef %43, i32 noundef 2) #8
  %53 = ptrtoint ptr %s_security.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_security.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3) to i32))
  %55 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 3), align 4
  %add.ptr.i206 = getelementptr i8, ptr %54, i32 %55
  %call.i.i165 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i206, i32 noundef 4) #8
  %56 = ptrtoint ptr %add.ptr.i206 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %add.ptr.i206, align 4
  %tobool114.not = icmp eq i32 %57, 0
  br i1 %tobool114.not, label %cleanup117.for.end120_crit_edge, label %cleanup117.cleanup117_crit_edge

cleanup117.cleanup117_crit_edge:                  ; preds = %cleanup117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup117

cleanup117.for.end120_crit_edge:                  ; preds = %cleanup117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.end120:                                       ; preds = %cleanup117.for.end120_crit_edge, %if.end103.for.end120_crit_edge
  call void @finish_wait(ptr noundef %call106, ptr noundef %43) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #8
  br label %cleanup125

cleanup125:                                       ; preds = %for.end120, %do.body93.cleanup125_crit_edge, %entry.cleanup125_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hook_sb_mount(ptr nocapture noundef readnone %dev_name, ptr nocapture noundef readnone %path, ptr nocapture noundef readnone %type, i32 noundef %flags, ptr nocapture noundef readnone %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp ne ptr %10, null
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hook_move_mount(ptr nocapture noundef readnone %from_path, ptr nocapture noundef readnone %to_path) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp ne ptr %10, null
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hook_sb_umount(ptr nocapture noundef readnone %mnt, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp ne ptr %10, null
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hook_sb_remount(ptr nocapture noundef readnone %sb, ptr nocapture noundef readnone %mnt_opts) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp ne ptr %10, null
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hook_sb_pivotroot(ptr nocapture noundef readnone %old_path, ptr nocapture noundef readnone %new_path) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp ne ptr %10, null
  %. = sext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_path_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readnone %new_dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 3
  %11 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_parent, align 8
  %dentry = getelementptr inbounds %struct.path, ptr %new_dir, i32 0, i32 1
  %13 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry, align 4
  %cmp.not = icmp eq ptr %12, %14
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %15 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old_dentry, align 8
  %and.i.i.i = and i32 %16, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.end2.cleanup_crit_edge, label %if.end7, !prof !46

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 8
  %21 = lshr i16 %20, 12
  %22 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %20)
  %23 = icmp ult i16 %20, -12288
  br i1 %23, label %switch.hole_check, label %if.end7.land.end.i_crit_edge

if.end7.land.end.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.end.i:                                       ; preds = %switch.hole_check.land.end.i_crit_edge, %if.end7.land.end.i_crit_edge
  %.b42.i = load i1, ptr @get_mode_access.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.get_mode_access.exit_crit_edge, label %if.then.i, !prof !43

land.end.i.get_mode_access.exit_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_mode_access.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_mode_access.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 534, i32 noundef 9, ptr noundef null) #8
  br label %get_mode_access.exit

switch.hole_check:                                ; preds = %if.end7
  %switch.shifted = lshr i16 5463, %21
  %24 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %switch.lobit.not = icmp eq i16 %24, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i_crit_edge, label %switch.lookup

switch.hole_check.land.end.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.hook_path_link, i32 0, i32 %22
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_mode_access.exit

get_mode_access.exit:                             ; preds = %switch.lookup, %if.then.i, %land.end.i.get_mode_access.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %land.end.i.get_mode_access.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %call10 = tail call fastcc i32 @check_access_path(ptr noundef nonnull %10, ptr noundef %new_dir, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %get_mode_access.exit, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %get_mode_access.exit ], [ 0, %entry.cleanup_crit_edge ], [ -18, %if.end.cleanup_crit_edge ], [ -2, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_path_rename(ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr nocapture noundef readonly %new_dir, ptr nocapture noundef readonly %new_dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, ptr %old_dir, i32 0, i32 1
  %11 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dentry, align 4
  %dentry1 = getelementptr inbounds %struct.path, ptr %new_dir, i32 0, i32 1
  %13 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry1, align 4
  %cmp.not = icmp eq ptr %12, %14
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %15 = ptrtoint ptr %old_dentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old_dentry, align 8
  %and.i.i.i = and i32 %16, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.end3.cleanup_crit_edge, label %if.end8, !prof !46

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %17 = and i32 %16, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %17)
  %18 = icmp eq i32 %17, 2097152
  %conv.i = select i1 %18, i32 16, i32 32
  %19 = ptrtoint ptr %new_dentry to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_dentry, align 8
  %and.i.i.i.i19 = and i32 %20, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i19)
  %cmp.i.i.i20 = icmp eq i32 %and.i.i.i.i19, 0
  %21 = and i32 %20, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %21)
  %22 = icmp eq i32 %21, 2097152
  %conv.i21 = select i1 %22, i32 16, i32 32
  %retval.0.i22 = select i1 %cmp.i.i.i20, i32 0, i32 %conv.i21
  %or = or i32 %retval.0.i22, %conv.i
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 8
  %27 = lshr i16 %26, 12
  %28 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %26)
  %29 = icmp ult i16 %26, -12288
  br i1 %29, label %switch.hole_check, label %if.end8.land.end.i_crit_edge

if.end8.land.end.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.end.i:                                       ; preds = %switch.hole_check.land.end.i_crit_edge, %if.end8.land.end.i_crit_edge
  %.b42.i = load i1, ptr @get_mode_access.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.get_mode_access.exit_crit_edge, label %if.then.i, !prof !43

land.end.i.get_mode_access.exit_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_mode_access.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_mode_access.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 534, i32 noundef 9, ptr noundef null) #8
  br label %get_mode_access.exit

switch.hole_check:                                ; preds = %if.end8
  %switch.shifted = lshr i16 5463, %27
  %30 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %switch.lobit.not = icmp eq i16 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i_crit_edge, label %switch.lookup

switch.hole_check.land.end.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.hook_path_rename, i32 0, i32 %28
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_mode_access.exit

get_mode_access.exit:                             ; preds = %switch.lookup, %if.then.i, %land.end.i.get_mode_access.exit_crit_edge
  %retval.0.i23 = phi i32 [ 0, %if.then.i ], [ 0, %land.end.i.get_mode_access.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %or13 = or i32 %or, %retval.0.i23
  %call14 = tail call fastcc i32 @check_access_path(ptr noundef nonnull %10, ptr noundef %old_dir, i32 noundef %or13)
  br label %cleanup

cleanup:                                          ; preds = %get_mode_access.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %get_mode_access.exit ], [ 0, %entry.cleanup_crit_edge ], [ -18, %if.end.cleanup_crit_edge ], [ -2, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_path_mkdir(ptr noundef %dir, ptr nocapture noundef readnone %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.current_check_access_path.exit_crit_edge, label %if.end.i

entry.current_check_access_path.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %current_check_access_path.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @check_access_path(ptr noundef nonnull %10, ptr noundef %dir, i32 noundef 128) #8
  br label %current_check_access_path.exit

current_check_access_path.exit:                   ; preds = %if.end.i, %entry.current_check_access_path.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ 0, %entry.current_check_access_path.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_path_mknod(ptr noundef %dir, ptr nocapture noundef readnone %dentry, i16 noundef zeroext %mode, i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = lshr i16 %mode, 12
  %12 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %mode)
  %13 = icmp ult i16 %mode, -12288
  br i1 %13, label %switch.hole_check, label %if.end.land.end.i_crit_edge

if.end.land.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.end.i:                                       ; preds = %switch.hole_check.land.end.i_crit_edge, %if.end.land.end.i_crit_edge
  %.b42.i = load i1, ptr @get_mode_access.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.get_mode_access.exit_crit_edge, label %if.then.i, !prof !43

land.end.i.get_mode_access.exit_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_mode_access.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_mode_access.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 534, i32 noundef 9, ptr noundef null) #8
  br label %get_mode_access.exit

switch.hole_check:                                ; preds = %if.end
  %switch.shifted = lshr i16 5463, %11
  %14 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %switch.lobit.not = icmp eq i16 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i_crit_edge, label %switch.lookup

switch.hole_check.land.end.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.hook_path_mknod, i32 0, i32 %12
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_mode_access.exit

get_mode_access.exit:                             ; preds = %switch.lookup, %if.then.i, %land.end.i.get_mode_access.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %land.end.i.get_mode_access.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %call2 = tail call fastcc i32 @check_access_path(ptr noundef nonnull %10, ptr noundef %dir, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %get_mode_access.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %get_mode_access.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_path_symlink(ptr noundef %dir, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %old_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.current_check_access_path.exit_crit_edge, label %if.end.i

entry.current_check_access_path.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %current_check_access_path.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @check_access_path(ptr noundef nonnull %10, ptr noundef %dir, i32 noundef 4096) #8
  br label %current_check_access_path.exit

current_check_access_path.exit:                   ; preds = %if.end.i, %entry.current_check_access_path.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ 0, %entry.current_check_access_path.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_path_unlink(ptr noundef %dir, ptr nocapture noundef readnone %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.current_check_access_path.exit_crit_edge, label %if.end.i

entry.current_check_access_path.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %current_check_access_path.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @check_access_path(ptr noundef nonnull %10, ptr noundef %dir, i32 noundef 32) #8
  br label %current_check_access_path.exit

current_check_access_path.exit:                   ; preds = %if.end.i, %entry.current_check_access_path.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ 0, %entry.current_check_access_path.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_path_rmdir(ptr noundef %dir, ptr nocapture noundef readnone %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.current_check_access_path.exit_crit_edge, label %if.end.i

entry.current_check_access_path.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %current_check_access_path.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @check_access_path(ptr noundef nonnull %10, ptr noundef %dir, i32 noundef 16) #8
  br label %current_check_access_path.exit

current_check_access_path.exit:                   ; preds = %if.end.i, %entry.current_check_access_path.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ 0, %entry.current_check_access_path.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hook_file_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred.i, align 16
  %security.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %security.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @landlock_blob_sizes to i32))
  %8 = load i32, ptr @landlock_blob_sizes, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %11 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end4.i_crit_edge, label %if.then.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %13 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_inode.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 8
  %17 = and i16 %16, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %17)
  %cmp.i = icmp eq i16 %17, 16384
  br i1 %cmp.i, label %if.then.i.get_file_access.exit_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i.get_file_access.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_file_access.exit

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  %access.0.i = phi i32 [ 0, %if.end.if.end4.i_crit_edge ], [ 4, %if.then.i.if.end4.i_crit_edge ]
  %and6.i = and i32 %12, 2
  %18 = or i32 %access.0.i, %and6.i
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %19 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_flags.i, align 4
  %and12.i = lshr i32 %20, 5
  %21 = and i32 %and12.i, 1
  %22 = or i32 %18, %21
  br label %get_file_access.exit

get_file_access.exit:                             ; preds = %if.end4.i, %if.then.i.get_file_access.exit_crit_edge
  %retval.0.i = phi i32 [ %22, %if.end4.i ], [ 8, %if.then.i.get_file_access.exit_crit_edge ]
  %call2 = tail call fastcc i32 @check_access_path(ptr noundef nonnull %10, ptr noundef %f_path, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %get_file_access.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %get_file_access.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_access_path(ptr noundef %domain, ptr noundef readonly %path, i32 noundef %access_request) unnamed_addr #0 align 64 {
entry:
  %walker_path = alloca %struct.path, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %walker_path) #8
  %0 = getelementptr inbounds %struct.path, ptr %walker_path, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %access_request)
  %tobool.not = icmp eq i32 %access_request, 0
  br i1 %tobool.not, label %entry.cleanup166_crit_edge, label %if.end

entry.cleanup166_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %domain, null
  %tobool2.not = icmp eq ptr %path, null
  %spec.select = or i1 %tobool1.not, %tobool2.not
  br i1 %spec.select, label %land.rhs, label %if.end46

land.rhs:                                         ; preds = %if.end
  %.b194 = load i1, ptr @check_access_path.__already_done, align 1
  br i1 %.b194, label %land.rhs.cleanup166_crit_edge, label %if.then11, !prof !43

land.rhs.cleanup166_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_access_path.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 238, i32 noundef 9, ptr noundef null) #8
  br label %cleanup166

if.end46:                                         ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %1 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool47.not = icmp sgt i32 %6, -1
  br i1 %tobool47.not, label %lor.lhs.false, label %if.end46.cleanup166_crit_edge

if.end46.cleanup166_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

lor.lhs.false:                                    ; preds = %if.end46
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 8
  %and.i.i.i.i = and i32 %8, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.not = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.not, label %lor.lhs.false.if.end60_crit_edge, label %land.lhs.true

lor.lhs.false.if.end60_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

land.lhs.true:                                    ; preds = %lor.lhs.false
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags, align 4
  %and51 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %land.lhs.true.if.end60_crit_edge, label %land.lhs.true.cleanup166_crit_edge, !prof !43

land.lhs.true.cleanup166_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true.if.end60_crit_edge, %lor.lhs.false.if.end60_crit_edge
  %num_layers = getelementptr inbounds %struct.landlock_ruleset, ptr %domain, i32 0, i32 2, i32 0, i32 3
  %13 = ptrtoint ptr %num_layers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %land.rhs68, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end60
  %fs_access_masks = getelementptr inbounds %struct.landlock_ruleset, ptr %domain, i32 1
  br label %for.body

land.rhs68:                                       ; preds = %if.end60
  %.b190193 = load i1, ptr @check_access_path.__already_done.6, align 1
  br i1 %.b190193, label %land.rhs68.cleanup166_crit_edge, label %if.then79, !prof !43

land.rhs68.cleanup166_crit_edge:                  ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.then79:                                        ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_access_path.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef null) #8
  br label %cleanup166

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %layer_mask.0217 = phi i64 [ %layer_mask.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0215 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [0 x i16], ptr %fs_access_masks, i32 0, i32 %i.0215
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %16 to i32
  %and119 = and i32 %conv, %access_request
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %for.body.for.inc_crit_edge, label %if.then121

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then121:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom = zext i32 %i.0215 to i64
  %shl = shl nuw i64 1, %sh_prom
  %or = or i64 %shl, %layer_mask.0217
  br label %for.inc

for.inc:                                          ; preds = %if.then121, %for.body.for.inc_crit_edge
  %layer_mask.1 = phi i64 [ %or, %if.then121 ], [ %layer_mask.0217, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0215, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %layer_mask.1)
  %cmp123 = icmp eq i64 %layer_mask.1, 0
  br i1 %cmp123, label %for.end.cleanup166_crit_edge, label %if.end126

for.end.cleanup166_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end126:                                        ; preds = %for.end
  %17 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %path, align 4
  %19 = ptrtoint ptr %walker_path to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %walker_path, align 8
  call void @path_get(ptr noundef nonnull %walker_path) #8
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %if.end126
  %layer_mask.2 = phi i64 [ %layer_mask.1, %if.end126 ], [ %retval.2.i, %cleanup ]
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %and.i.i.i.i197 = and i32 %23, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i197)
  %cmp.i.i.i198 = icmp eq i32 %and.i.i.i.i197, 0
  br i1 %cmp.i.i.i198, label %while.cond.unmask_layers.exit_crit_edge, label %if.end.i

while.cond.unmask_layers.exit_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmask_layers.exit

if.end.i:                                         ; preds = %while.cond
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.i, align 8
  %26 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 10
  %30 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_security.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2) to i32))
  %32 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @landlock_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %32
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %add.ptr.i.i, align 4
  %call5.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end13.i_crit_edge

rcu_read_lock.exit.i.do.end13.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call6.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end13.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b45.i = load i1, ptr @unmask_layers.__warned, align 1
  br i1 %.b45.i, label %land.lhs.true8.i.do.end13.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @unmask_layers.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @.str.2) #8
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.do.end13.i_crit_edge, %land.lhs.true.i.do.end13.i_crit_edge, %rcu_read_lock.exit.i.do.end13.i_crit_edge
  %call15.i = call ptr @landlock_find_rule(ptr noundef %domain, ptr noundef %34) #8
  %call.i46.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i46.i, label %do.end13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i49.i

do.end13.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i49.i:                              ; preds = %do.end13.i
  %call1.i47.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call1.i47.i, 0
  br i1 %tobool.not.i48.i, label %land.lhs.true.i49.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i51.i

land.lhs.true.i49.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i51.i:                             ; preds = %land.lhs.true.i49.i
  %.b4.i50.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i50.i, label %land.lhs.true2.i51.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i52.i

land.lhs.true2.i51.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i52.i:                                    ; preds = %land.lhs.true2.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i52.i, %land.lhs.true2.i51.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i49.i.rcu_read_unlock.exit.i_crit_edge, %do.end13.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  %35 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i53.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i53.i to ptr
  %preempt_count.i.i.i.i54.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i54.i, align 4
  %sub.i.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i54.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %rcu_read_unlock.exit.i.unmask_layers.exit_crit_edge, label %for.cond.preheader.i

rcu_read_unlock.exit.i.unmask_layers.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmask_layers.exit

for.cond.preheader.i:                             ; preds = %rcu_read_unlock.exit.i
  %num_layers.i = getelementptr inbounds %struct.landlock_rule, ptr %call15.i, i32 0, i32 2
  %39 = ptrtoint ptr %num_layers.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_layers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp58.not.i = icmp eq i32 %40, 0
  br i1 %cmp58.not.i, label %for.cond.preheader.i.unmask_layers.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.unmask_layers.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmask_layers.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %layer_mask.addr.061.i = phi i64 [ %layer_mask.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %layer_mask.2, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.059.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %access.i = getelementptr %struct.landlock_rule, ptr %call15.i, i32 0, i32 3, i32 %i.059.i, i32 1
  %41 = ptrtoint ptr %access.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %access.i, align 2
  %conv19.i = zext i16 %42 to i32
  %and.i = and i32 %conv19.i, %access_request
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %access_request)
  %cmp20.i = icmp eq i32 %and.i, %access_request
  br i1 %cmp20.i, label %if.then22.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then22.i:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.landlock_rule, ptr %call15.i, i32 0, i32 3, i32 %i.059.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %44 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %neg.i = xor i64 %shl.i, -1
  %and23.i = and i64 %layer_mask.addr.061.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23.i)
  %cmp24.i = icmp eq i64 %and23.i, 0
  br i1 %cmp24.i, label %if.then22.i.while.end.thread_crit_edge, label %if.then22.i.for.inc.i_crit_edge

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then22.i.while.end.thread_crit_edge:           ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

for.inc.i:                                        ; preds = %if.then22.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %layer_mask.addr.1.i = phi i64 [ %and23.i, %if.then22.i.for.inc.i_crit_edge ], [ %layer_mask.addr.061.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not.i, label %for.inc.i.unmask_layers.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.unmask_layers.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmask_layers.exit

unmask_layers.exit:                               ; preds = %for.inc.i.unmask_layers.exit_crit_edge, %for.cond.preheader.i.unmask_layers.exit_crit_edge, %rcu_read_unlock.exit.i.unmask_layers.exit_crit_edge, %while.cond.unmask_layers.exit_crit_edge
  %retval.2.i = phi i64 [ %layer_mask.2, %while.cond.unmask_layers.exit_crit_edge ], [ %layer_mask.2, %rcu_read_unlock.exit.i.unmask_layers.exit_crit_edge ], [ %layer_mask.2, %for.cond.preheader.i.unmask_layers.exit_crit_edge ], [ %layer_mask.addr.1.i, %for.inc.i.unmask_layers.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.2.i)
  %cmp128 = icmp eq i64 %retval.2.i, 0
  br i1 %cmp128, label %unmask_layers.exit.while.end.thread_crit_edge, label %unmask_layers.exit.jump_up_crit_edge

unmask_layers.exit.jump_up_crit_edge:             ; preds = %unmask_layers.exit
  br label %jump_up

unmask_layers.exit.while.end.thread_crit_edge:    ; preds = %unmask_layers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

jump_up:                                          ; preds = %if.then135.jump_up_crit_edge, %unmask_layers.exit.jump_up_crit_edge
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %47 = ptrtoint ptr %walker_path to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %walker_path, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %cmp133 = icmp eq ptr %46, %50
  br i1 %cmp133, label %if.then135, label %if.end139

if.then135:                                       ; preds = %jump_up
  %call136 = call i32 @follow_up(ptr noundef nonnull %walker_path) #8
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %while.end.thread208, label %if.then135.jump_up_crit_edge

if.then135.jump_up_crit_edge:                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %jump_up

while.end.thread208:                              ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  call void @path_put(ptr noundef nonnull %walker_path) #8
  br label %cleanup166

if.end139:                                        ; preds = %jump_up
  %d_parent = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 3
  %51 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d_parent, align 8
  %cmp142 = icmp eq ptr %46, %52
  br i1 %cmp142, label %while.end, label %cleanup, !prof !46

cleanup:                                          ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %call161 = call ptr @dget_parent(ptr noundef %46) #8
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %0, align 4
  call void @dput(ptr noundef %54) #8
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call161, ptr %0, align 4
  br label %while.cond

while.end.thread:                                 ; preds = %unmask_layers.exit.while.end.thread_crit_edge, %if.then22.i.while.end.thread_crit_edge
  call void @path_put(ptr noundef nonnull %walker_path) #8
  br label %58

while.end:                                        ; preds = %if.end139
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %48, i32 0, i32 2
  %56 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mnt_flags, align 4
  %and152 = and i32 %57, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  call void @path_put(ptr noundef nonnull %walker_path) #8
  br i1 %tobool153.not, label %while.end.cleanup166_crit_edge, label %while.end._crit_edge

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %58

while.end.cleanup166_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

58:                                               ; preds = %while.end._crit_edge, %while.end.thread
  br label %cleanup166

cleanup166:                                       ; preds = %58, %while.end.cleanup166_crit_edge, %while.end.thread208, %for.end.cleanup166_crit_edge, %if.then79, %land.rhs68.cleanup166_crit_edge, %land.lhs.true.cleanup166_crit_edge, %if.end46.cleanup166_crit_edge, %if.then11, %land.rhs.cleanup166_crit_edge, %entry.cleanup166_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup166_crit_edge ], [ 0, %if.then11 ], [ 0, %land.lhs.true.cleanup166_crit_edge ], [ 0, %if.end46.cleanup166_crit_edge ], [ -13, %if.then79 ], [ 0, %for.end.cleanup166_crit_edge ], [ 0, %land.rhs.cleanup166_crit_edge ], [ -13, %land.rhs68.cleanup166_crit_edge ], [ 0, %58 ], [ -13, %while.end.cleanup166_crit_edge ], [ -13, %while.end.thread208 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %walker_path) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @landlock_find_rule(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../security/landlock/fs.c", i32 162, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../security/landlock/fs.c", i32 691, i32 4}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../security/landlock/fs.c", i32 94, i32 11}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @landlock_fs_underops, !16, !"landlock_fs_underops", i1 false, i1 false}
!16 = !{!"../security/landlock/fs.c", i32 81, i32 46}
!17 = !{ptr @landlock_hooks, !18, !"landlock_hooks", i1 false, i1 false}
!18 = !{!"../security/landlock/fs.c", i32 667, i32 34}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../security/landlock/fs.c", i32 329, i32 2}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../security/landlock/fs.c", i32 372, i32 12}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../security/landlock/cred.h", i32 31, i32 23}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../security/landlock/fs.c", i32 238, i32 6}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../security/landlock/fs.c", i32 249, i32 6}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../security/landlock/fs.c", i32 198, i32 4}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../security/landlock/fs.c", i32 534, i32 3}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2149200428}
!45 = !{i64 511067, i64 511091, i64 511112, i64 511129, i64 511146}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2149200694}
!48 = !{i64 2153578197}
!49 = !{i64 2148136233, i64 2148136259, i64 2148136288, i64 2148136322, i64 2148136353, i64 2148136376}
!50 = !{i64 2148224685}
!51 = !{i64 2148139418, i64 2148139450, i64 2148139479, i64 2148139513, i64 2148139544, i64 2148139567}
!52 = !{i64 2148224914}
!53 = !{i8 0, i8 2}
