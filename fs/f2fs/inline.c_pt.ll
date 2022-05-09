; ModuleID = '/llk/IR_all_yes/fs/f2fs/inline.c_pt.bc'
source_filename = "../fs/f2fs/inline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.f2fs_inode_info = type { %struct.inode, i32, i8, i8, i32, [2 x i32], i32, i16, [2 x i32], %struct.rw_semaphore, %struct.atomic_t, i32, i32, ptr, ptr, i32, i64, %struct.spinlock, [3 x ptr], i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, [2 x %struct.rw_semaphore], %struct.rw_semaphore, i32, %struct.kprojid_t, i32, %struct.timespec64, [4 x %struct.timespec64], %struct.atomic_t, i8, i8, i8, i16, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kprojid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.f2fs_sb_info = type { ptr, ptr, ptr, %struct.rw_semaphore, i32, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, [3 x ptr], %struct.rw_semaphore, ptr, ptr, i32, %struct.spinlock, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.wait_queue_head, [6 x i32], [6 x i32], %struct.ckpt_req_control, [5 x %struct.inode_management], %struct.spinlock, %struct.list_head, i32, i32, i32, [4 x %struct.list_head], [4 x %struct.spinlock], %struct.mutex, %struct.xarray, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rw_semaphore, [14 x %struct.atomic_t], %struct.percpu_counter, [2 x %struct.atomic_t], %struct.percpu_counter, %struct.f2fs_mount_info, %struct.rw_semaphore, ptr, %struct.atgc_management, i32, i32, [2 x i32], %struct.spinlock, i8, i32, i32, [2 x i64], i64, i64, %struct.rw_semaphore, i32, i32, ptr, [4 x %struct.atomic_t], [2 x i32], [2 x i32], %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, [4 x i32], %struct.spinlock, i32, i32, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.kobject, %struct.completion, %struct.list_head, %struct.mutex, i32, i32, ptr, i32, %struct.spinlock, i8, i64, i64, ptr, i32, ptr, ptr, i32, i32, [6 x i32], i32, i32, i32, ptr, i32, i64, i64, i32, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, [22 x i64], [22 x i64], i8, i32, i32, %struct.spinlock, ptr }
%struct.ckpt_req_control = type { ptr, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.llist_head, %struct.spinlock, i32, i32 }
%struct.llist_head = type { ptr }
%struct.inode_management = type { %struct.xarray, %struct.spinlock, %struct.list_head, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.f2fs_mount_info = type { i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32, %struct.f2fs_fault_info, [3 x ptr], i32, i32, i32, i32, i32, i32, i32, %struct.fscrypt_dummy_policy, i32, i32, i8, i8, i8, i8, i8, i8, i32, [16 x [8 x i8]], [16 x [8 x i8]] }
%struct.f2fs_fault_info = type { %struct.atomic_t, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.atgc_management = type { i8, %struct.rb_root_cached, %struct.list_head, i32, i32, i32, i32, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.6, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.f2fs_inode = type { i16, i8, i8, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, %union.anon.79, i32, i32, i32, i32, [255 x i8], i8, %struct.f2fs_extent, %union.anon.80, [5 x i32] }
%union.anon.79 = type { i32 }
%struct.f2fs_extent = type { i32, i32, i32 }
%union.anon.80 = type { [923 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.f2fs_io_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, i8, i32, i8, i8, i8, i32, i8, i32, ptr, ptr, ptr, i8 }
%struct.node_info = type { i32, i32, i32, i8, i8 }
%struct.dnode_of_data = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.f2fs_dev_info = type { ptr, [64 x i8], i32, i32, i32, i32, ptr, ptr }
%struct.f2fs_node = type { %union.anon.82, %struct.node_footer }
%union.anon.82 = type { %struct.f2fs_inode }
%struct.node_footer = type <{ i32, i32, i32, i64, i32 }>
%struct.f2fs_dentry_ptr = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.f2fs_filename = type { ptr, %struct.fscrypt_str, i32, %struct.fscrypt_str, %struct.fscrypt_str }
%struct.fscrypt_str = type { ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.anon.76 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.f2fs_dentry_block = type { [27 x i8], [3 x i8], [214 x %struct.f2fs_dir_entry], [214 x [8 x i8]] }
%struct.f2fs_dir_entry = type <{ i32, i32, i16, i8 }>
%struct.f2fs_super_block = type <{ i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], [512 x i16], i32, [64 x [8 x i8]], i32, [256 x i8], [256 x i8], i32, i8, [16 x i8], [8 x %struct.f2fs_device], [3 x i32], i8, i16, i16, [306 x i8], i32 }>
%struct.f2fs_device = type { [64 x i8], i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }

@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014%s: corrupted inline inode ino=%lx, i_addr[0]:0x%x, run fsck to fix.\00", [57 x i8] zeroinitializer }, align 32
@__func__.f2fs_convert_inline_page = private unnamed_addr constant [25 x i8] c"f2fs_convert_inline_page\00", align 1
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@f2fs_grab_cache_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.f2fs_grab_cache_page = private unnamed_addr constant [21 x i8] c"f2fs_grab_cache_page\00", align 1
@f2fs_grab_cache_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.f2fs_grab_cache_page, ptr @.str.9, i32 2572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%sF2FS-fs (%s) : inject %s in %s of %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/f2fs/f2fs.h\00", [17 x i8] zeroinitializer }, align 32
@f2fs_grab_cache_page._entry_ptr = internal global ptr @f2fs_grab_cache_page._entry, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@f2fs_fault_name = external dso_local local_unnamed_addr global [18 x ptr], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.f2fs_move_inline_dirents = private unnamed_addr constant [25 x i8] c"f2fs_move_inline_dirents\00", align 1
@f2fs_kmalloc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.f2fs_kmalloc = private unnamed_addr constant [13 x i8] c"f2fs_kmalloc\00", align 1
@f2fs_kmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.f2fs_kmalloc, ptr @.str.9, i32 3219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@f2fs_kmalloc._entry_ptr = internal global ptr @f2fs_kmalloc._entry, section ".printk_index", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_f2fs_fiemap = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/f2fs.h\00", [36 x i8] zeroinitializer }, align 32
@trace_f2fs_fiemap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.19 = private constant [20 x i8] c"../fs/f2fs/inline.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 146, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 260, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 414, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 717, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 416, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 452, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 2571, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 271, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"../fs/f2fs/f2fs.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 3219, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 788, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"../include/trace/events/f2fs.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 2034, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 108, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @f2fs_grab_cache_page._entry, ptr @f2fs_grab_cache_page._entry_ptr, ptr @f2fs_kmalloc._entry, ptr @f2fs_kmalloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @f2fs_grab_cache_page._rs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @f2fs_kmalloc._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_grab_cache_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_grab_cache_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f2fs_kmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_may_inline_data(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i.i, align 4
  %2 = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %inode, align 8
  %5 = and i16 %4, -4096
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end.return_crit_edge [
    i16 -32768, label %if.end.if.end8_crit_edge
    i16 -24576, label %if.end.if.end8_crit_edge29
  ]

if.end.if.end8_crit_edge29:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge29
  %call9 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %i_extra_isize.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %7 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i = lshr i32 %8, 2
  %i_inline_xattr_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %9 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_inline_xattr_size.i, align 4
  %11 = add i32 %div1.i, %10
  %.neg = mul i32 %11, -4
  %mul = add i32 %.neg, 3688
  %conv14 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call9, i64 %conv14)
  %cmp15 = icmp sgt i64 %call9, %conv14
  br i1 %cmp15, label %if.end8.return_crit_edge, label %if.end18

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end18:                                         ; preds = %if.end8
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end18.lor.lhs.false.i_crit_edge, label %f2fs_encrypted_file.exit.i

if.end18.lor.lhs.false.i_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

f2fs_encrypted_file.exit.i:                       ; preds = %if.end18
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inode, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %16)
  %cmp.i.i = icmp eq i16 %16, -32768
  br i1 %cmp.i.i, label %f2fs_encrypted_file.exit.i.f2fs_post_read_required.exit.thread_crit_edge, label %f2fs_encrypted_file.exit.i.lor.lhs.false.i_crit_edge

f2fs_encrypted_file.exit.i.lor.lhs.false.i_crit_edge: ; preds = %f2fs_encrypted_file.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

f2fs_encrypted_file.exit.i.f2fs_post_read_required.exit.thread_crit_edge: ; preds = %f2fs_encrypted_file.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_post_read_required.exit.thread

lor.lhs.false.i:                                  ; preds = %f2fs_encrypted_file.exit.i.lor.lhs.false.i_crit_edge, %if.end18.lor.lhs.false.i_crit_edge
  %i_verity_info.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 53
  %17 = ptrtoint ptr %i_verity_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %i_verity_info.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  %cmp.i5.not.i = icmp eq ptr %18, null
  br i1 %cmp.i5.not.i, label %lor.rhs.i, label %lor.lhs.false.i.f2fs_post_read_required.exit.thread_crit_edge

lor.lhs.false.i.f2fs_post_read_required.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_post_read_required.exit.thread

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inode, align 8
  %21 = and i16 %20, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %21)
  %cmp.i6.i = icmp eq i16 %21, -32768
  br i1 %cmp.i6.i, label %f2fs_post_read_required.exit, label %lor.rhs.i.return_crit_edge

lor.rhs.i.return_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

f2fs_post_read_required.exit:                     ; preds = %lor.rhs.i
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %phi.cmp.i = icmp slt i32 %23, 0
  br i1 %phi.cmp.i, label %f2fs_post_read_required.exit.f2fs_post_read_required.exit.thread_crit_edge, label %f2fs_post_read_required.exit.return_crit_edge

f2fs_post_read_required.exit.return_crit_edge:    ; preds = %f2fs_post_read_required.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

f2fs_post_read_required.exit.f2fs_post_read_required.exit.thread_crit_edge: ; preds = %f2fs_post_read_required.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_post_read_required.exit.thread

f2fs_post_read_required.exit.thread:              ; preds = %f2fs_post_read_required.exit.f2fs_post_read_required.exit.thread_crit_edge, %lor.lhs.false.i.f2fs_post_read_required.exit.thread_crit_edge, %f2fs_encrypted_file.exit.i.f2fs_post_read_required.exit.thread_crit_edge
  br label %return

return:                                           ; preds = %f2fs_post_read_required.exit.thread, %f2fs_post_read_required.exit.return_crit_edge, %lor.rhs.i.return_crit_edge, %if.end8.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end8.return_crit_edge ], [ false, %f2fs_post_read_required.exit.thread ], [ true, %f2fs_post_read_required.exit.return_crit_edge ], [ true, %lor.rhs.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !55
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !56
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !57

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !58
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !60
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !62
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @f2fs_may_inline_dentry(ptr nocapture noundef readonly %inode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_opt = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 73
  %4 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt, align 8
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %inode, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_do_read_inline_data(ptr noundef %page, ptr noundef %ipage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i49 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i49)
  %tobool.not.i.i.i50 = icmp eq i32 %and.i.i.i.i49, 0
  br i1 %tobool.not.i.i.i50, label %folio_flags.exit.i.i, label %if.then.i.i.i51, !prof !63

if.then.i.i.i51:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.1) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %do.body, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !65
  br label %cleanup

do.body:                                          ; preds = %folio_flags.exit.i.i
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not = icmp eq i32 %16, 0
  br i1 %tobool1.not, label %do.end11, label %do.body5, !prof !63

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 53, 0\0A.popsection", ""() #11, !srcloc !66
  unreachable

do.end11:                                         ; preds = %do.body
  %i_extra_isize.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %3, i32 0, i32 29
  %17 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i = lshr i32 %18, 2
  %i_inline_xattr_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_inline_xattr_size.i, align 4
  %21 = add i32 %div1.i, %20
  %.neg = mul i32 %21, -4
  %mul = add i32 %.neg, 3688
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %mul, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #11
  %call.i.i = tail call ptr @page_address(ptr noundef %ipage) #11
  %22 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i.i = lshr i32 %23, 2
  %24 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %24, i32 0, i32 %add.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %25, 512
  %26 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !67
  %30 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i1.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %call.i.i52 = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #11
  %36 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i54 = lshr i32 %37, 2
  %38 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_inline_xattr_size.i, align 4
  %40 = add i32 %div1.i54, %39
  %.neg48 = mul i32 %40, -4
  %mul23 = add i32 %.neg48, 3688
  %41 = call ptr @memcpy(ptr %call.i.i52, ptr %arrayidx.i, i32 %mul23)
  tail call void @flush_dcache_page(ptr noundef %page) #11
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i52) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %42 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i1.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 213
  %46 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %47, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %48 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i.i56 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i56 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i57 = add i32 %51, -1
  store volatile i32 %sub.i.i57, ptr %preempt_count.i.i.i, align 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %4, align 4
  %and.i.i58 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i58)
  %tobool.not.i.i59 = icmp eq i32 %and.i.i58, 0
  br i1 %tobool.not.i.i59, label %if.end.i.i62, label %if.then.i.i61, !prof !63

if.then.i.i61:                                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i60 = add i32 %53, -1
  br label %_compound_head.exit.i66

if.end.i.i62:                                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i66

_compound_head.exit.i66:                          ; preds = %if.end.i.i62, %if.then.i.i61
  %retval.0.i.i63 = phi i32 [ %sub.i.i60, %if.then.i.i61 ], [ %54, %if.end.i.i62 ]
  %55 = inttoptr i32 %retval.0.i.i63 to ptr
  %56 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %and.i.i.i.i64 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i64)
  %tobool.not.i.i.i65 = icmp eq i32 %and.i.i.i.i64, 0
  br i1 %tobool.not.i.i.i65, label %folio_flags.exit.i.i69, label %if.then.i.i.i67, !prof !63

if.then.i.i.i67:                                  ; preds = %_compound_head.exit.i66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.1) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_flags.exit.i.i69:                           ; preds = %_compound_head.exit.i66
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %55, align 4
  %61 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.i.not.i68 = icmp eq i32 %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11
  br i1 %tobool.i.not.i68, label %if.then32, label %folio_flags.exit.i.i69.cleanup_crit_edge

folio_flags.exit.i.i69.cleanup_crit_edge:         ; preds = %folio_flags.exit.i.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %folio_flags.exit.i.i69
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !63

if.then.i.i.i:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %cleanup

cleanup:                                          ; preds = %SetPageUptodate.exit, %folio_flags.exit.i.i69.cleanup_crit_edge, %PageUptodate.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_truncate_inline_inode(ptr noundef %inode, ptr noundef %ipage, i64 noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_extra_isize.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %0 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i = lshr i32 %1, 2
  %i_inline_xattr_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %2 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_inline_xattr_size.i, align 4
  %4 = add i32 %div1.i, %3
  %.neg = mul i32 %4, -4
  %mul = add i32 %.neg, 3688
  %conv = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %from)
  %cmp.not = icmp ugt i64 %conv, %from
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @page_address(ptr noundef %ipage) #11
  %5 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i.i = lshr i32 %6, 2
  %7 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %7, i32 0, i32 %add.i
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %ipage, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %arrayidx.i, i32 %idx.ext
  %8 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i32 = lshr i32 %9, 2
  %10 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_inline_xattr_size.i, align 4
  %12 = add i32 %div1.i32, %11
  %.neg30 = mul i32 %12, -4
  %mul11 = sub i32 3688, %idx.ext
  %conv14 = add i32 %mul11, %.neg30
  %13 = call ptr @memset(ptr %add.ptr, i32 0, i32 %conv14)
  %call15 = tail call zeroext i1 @set_page_dirty(ptr noundef %ipage) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %from)
  %cmp16 = icmp eq i64 %from, 0
  br i1 %cmp16, label %if.then18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %flags.i) #11
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_wait_on_page_writeback(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_read_inline_data(ptr noundef %inode, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %call1 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %5) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unlock_page(ptr noundef %page) #11
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i, align 4
  %9 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @f2fs_put_page(ptr noundef %call1, i32 noundef 1)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #11
  br label %if.end9

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @f2fs_do_read_inline_data(ptr noundef %page, ptr noundef %call1)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %12 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i26 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i26)
  %tobool.not.i.i.i27 = icmp eq i32 %and.i.i.i.i26, 0
  br i1 %tobool.not.i.i.i27, label %folio_flags.exit.i.i, label %if.then.i.i.i28, !prof !63

if.then.i.i.i28:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.1) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11
  br i1 %tobool.i.not.i, label %if.then12, label %folio_flags.exit.i.i.if.end13_crit_edge

folio_flags.exit.i.i.if.end13_crit_edge:          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %folio_flags.exit.i.i
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !63

if.then.i.i.i:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %if.end13

if.end13:                                         ; preds = %SetPageUptodate.exit, %folio_flags.exit.i.i.if.end13_crit_edge
  tail call fastcc void @f2fs_put_page(ptr noundef %call1, i32 noundef 1)
  tail call void @unlock_page(ptr noundef %page) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then5, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %if.end13 ], [ -11, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_get_node_page(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef %unlock) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unlock)
  %tobool1.not = icmp eq i32 %unlock, 0
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.body:                                          ; preds = %if.end
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !57

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !63

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.3) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #11, !srcloc !71
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !63

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not, label %do.body8, label %do.end12, !prof !57

do.body8:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/f2fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2610, 0\0A.popsection", ""() #11, !srcloc !72
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unlock_page(ptr noundef nonnull %page) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %if.end.if.end13_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i17 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.not.i.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.not.i.i18, label %if.end.i.i21, label %if.then.i.i20, !prof !63

if.then.i.i20:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i19 = add i32 %17, -1
  br label %_compound_head.exit.i23

if.end.i.i21:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i23

_compound_head.exit.i23:                          ; preds = %if.end.i.i21, %if.then.i.i20
  %retval.0.i.i22 = phi i32 [ %sub.i.i19, %if.then.i.i20 ], [ %18, %if.end.i.i21 ]
  %19 = inttoptr i32 %retval.0.i.i22 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.4) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !73
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i23
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_page, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !77

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %19) #11
  br label %return

return:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_convert_inline_page(ptr noundef %dn, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %fio = alloca %struct.f2fs_io_info, align 4
  %ni = alloca %struct.node_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %fio) #11
  %0 = call ptr @memset(ptr %fio, i32 255, i32 92)
  %1 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dn, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %7 = ptrtoint ptr %fio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %fio, align 4
  %ino = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 1
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ino, align 4
  %type = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type, align 4
  %temp = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 3
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %temp, align 4
  %op = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 4
  %13 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %op, align 4
  %op_flags = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 5
  %14 = ptrtoint ptr %op_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10240, ptr %op_flags, align 4
  %new_blkaddr = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 6
  %15 = ptrtoint ptr %new_blkaddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %new_blkaddr, align 4
  %old_blkaddr = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 7
  %16 = ptrtoint ptr %old_blkaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %old_blkaddr, align 4
  %page2 = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 8
  %17 = ptrtoint ptr %page2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %page, ptr %page2, align 4
  %encrypted_page = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 9
  %need_lock = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 13
  %compr_blocks = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 17
  %18 = ptrtoint ptr %compr_blocks to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %compr_blocks, align 4
  %encrypted = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 18
  %19 = ptrtoint ptr %encrypted to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %encrypted, align 4
  %io_type = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 19
  %20 = call ptr @memset(ptr %encrypted_page, i32 0, i32 17)
  %21 = call ptr @memset(ptr %need_lock, i32 0, i32 7)
  %22 = ptrtoint ptr %io_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %io_type, align 4
  %io_wbc = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 20
  %version = getelementptr inbounds %struct.f2fs_io_info, ptr %fio, i32 0, i32 23
  %23 = call ptr @memset(ptr %io_wbc, i32 0, i32 13)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ni) #11
  %24 = call ptr @memset(ptr %ni, i32 255, i32 16)
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %2, i32 0, i32 8
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i.i, align 4
  %27 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %entry.do.body56_crit_edge, label %if.end

entry.do.body56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body56

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @f2fs_reserve_block(ptr noundef %dn, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %28 = ptrtoint ptr %fio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fio, align 4
  %nid = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 3
  %30 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nid, align 4
  %call10 = call i32 @f2fs_get_node_info(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %ni, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @f2fs_truncate_data_blocks_range(ptr noundef %dn, i32 noundef 1) #11
  call fastcc void @f2fs_put_dnode(ptr noundef %dn)
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %version14 = getelementptr inbounds %struct.node_info, ptr %ni, i32 0, i32 3
  %32 = ptrtoint ptr %version14 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %version14, align 4
  %34 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %version, align 4
  %data_blkaddr = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 9
  %35 = ptrtoint ptr %data_blkaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_blkaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.not = icmp eq i32 %36, -1
  br i1 %cmp.not, label %do.body, label %if.then18, !prof !63

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @f2fs_put_dnode(ptr noundef %dn)
  %37 = ptrtoint ptr %fio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fio, align 4
  %s_flag.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %38, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i) #11
  %39 = ptrtoint ptr %fio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fio, align 4
  %41 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dn, align 4
  %i_ino22 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %i_ino22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_ino22, align 8
  %45 = ptrtoint ptr %data_blkaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_blkaddr, align 4
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %40, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.f2fs_convert_inline_page, i32 noundef %44, i32 noundef %46) #11
  br label %cleanup

do.body:                                          ; preds = %if.end13
  %47 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %49, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %50, %if.end.i.i ]
  %51 = inttoptr i32 %retval.0.i.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.not.i = icmp eq i32 %53, -1
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %47, align 4
  %and.i16.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !57

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !63

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %55, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %56, %if.end.i20.i ]
  %57 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %57, ptr noundef nonnull @.str.3) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #11, !srcloc !78
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !63

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %55, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %58, %if.end.i27.i ]
  %59 = inttoptr i32 %retval.0.i28.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %62 = and i32 %61, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool26.not = icmp eq i32 %62, 0
  br i1 %tobool26.not, label %do.end40, label %do.body34, !prof !63

do.body34:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #11, !srcloc !79
  unreachable

do.end40:                                         ; preds = %PageWriteback.exit
  %inode_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %63 = ptrtoint ptr %inode_page to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %inode_page, align 4
  call void @f2fs_do_read_inline_data(ptr noundef %page, ptr noundef %64)
  %call41 = call zeroext i1 @set_page_dirty(ptr noundef %page) #11
  %call42 = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #11
  %call43 = call zeroext i1 @set_page_writeback(ptr noundef %page) #11
  %65 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %47, align 4
  %and.i.i104 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104)
  %tobool.not.i = icmp eq i32 %and.i.i104, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i105, !prof !63

if.then.i105:                                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.5) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !80
  unreachable

do.body7.i:                                       ; preds = %do.end40
  %67 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %47, align 4
  %and.i31.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i106 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i106, label %if.end.i.i109, label %if.then.i.i108, !prof !63

if.then.i.i108:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i107 = add i32 %68, -1
  br label %_compound_head.exit.i112

if.end.i.i109:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i112

_compound_head.exit.i112:                         ; preds = %if.end.i.i109, %if.then.i.i108
  %retval.0.i.i110 = phi i32 [ %sub.i.i107, %if.then.i.i108 ], [ %69, %if.end.i.i109 ]
  %70 = inttoptr i32 %retval.0.i.i110 to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i111 = icmp eq i32 %72, -1
  %73 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %47, align 4
  %and.i32.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i111, label %if.then17.i, label %do.end24.i, !prof !57

if.then17.i:                                      ; preds = %_compound_head.exit.i112
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !63

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i34.i = add i32 %74, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %75, %if.end.i36.i ]
  %76 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.3) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !81
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i112
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !63

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i41.i = add i32 %74, -1
  br label %ClearPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %page to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %77, %if.end.i43.i ]
  %78 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %78) #11
  %79 = ptrtoint ptr %data_blkaddr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_blkaddr, align 4
  %81 = ptrtoint ptr %old_blkaddr to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %old_blkaddr, align 4
  %82 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dn, align 4
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %83, i32 0, i32 8
  call void @_set_bit(i32 noundef 25, ptr noundef %flags.i) #11
  call void @f2fs_outplace_write_data(ptr noundef %dn, ptr noundef nonnull %fio) #11
  call void @f2fs_wait_on_page_writeback(ptr noundef %page, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #11
  br i1 %call42, label %if.then48, label %ClearPageError.exit.if.end51_crit_edge

ClearPageError.exit.if.end51_crit_edge:           ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then48:                                        ; preds = %ClearPageError.exit
  %84 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dn, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %85, align 8
  %88 = and i16 %87, -4096
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %88, label %if.then48.inode_dec_dirty_pages.exit_crit_edge [
    i16 16384, label %if.then48.if.end.i_crit_edge
    i16 -32768, label %if.then48.if.end.i_crit_edge121
    i16 -24576, label %if.then48.if.end.i_crit_edge122
  ]

if.then48.if.end.i_crit_edge122:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then48.if.end.i_crit_edge121:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then48.if.end.i_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then48.inode_dec_dirty_pages.exit_crit_edge:   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %inode_dec_dirty_pages.exit

if.end.i:                                         ; preds = %if.then48.if.end.i_crit_edge, %if.then48.if.end.i_crit_edge121, %if.then48.if.end.i_crit_edge122
  %dirty_pages.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %85, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dirty_pages.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %dirty_pages.i, i32 1, i32 3, i32 1) #11
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dirty_pages.i, ptr %dirty_pages.i, i32 1, ptr elementtype(i32) %dirty_pages.i) #11, !srcloc !82
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 8
  %91 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %92, i32 0, i32 33
  %93 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %95 = ptrtoint ptr %85 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %85, align 8
  %97 = and i16 %96, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %97)
  %cmp17.i = icmp ne i16 %97, 16384
  %cond.i = zext i1 %cmp17.i to i32
  %arrayidx.i.i = getelementptr %struct.f2fs_sb_info, ptr %94, i32 0, i32 69, i32 %cond.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #11
  %98 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i) #11, !srcloc !82
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 4
  %99 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %i_flags.i, align 4
  %and19.i = and i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i113 = icmp eq i32 %and19.i, 0
  br i1 %tobool.not.i113, label %if.end.i.inode_dec_dirty_pages.exit_crit_edge, label %if.then20.i

if.end.i.inode_dec_dirty_pages.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inode_dec_dirty_pages.exit

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i31.i = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 33
  %103 = ptrtoint ptr %s_fs_info.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_fs_info.i.i31.i, align 16
  %arrayidx.i32.i = getelementptr %struct.f2fs_sb_info, ptr %104, i32 0, i32 69, i32 2
  %call.i.i.i33.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i32.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx.i32.i, i32 1, i32 3, i32 1) #11
  %105 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i32.i, ptr %arrayidx.i32.i, i32 1, ptr elementtype(i32) %arrayidx.i32.i) #11, !srcloc !82
  br label %inode_dec_dirty_pages.exit

inode_dec_dirty_pages.exit:                       ; preds = %if.then20.i, %if.end.i.inode_dec_dirty_pages.exit_crit_edge, %if.then48.inode_dec_dirty_pages.exit_crit_edge
  %106 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dn, align 4
  call void @f2fs_remove_dirty_inode(ptr noundef %107) #11
  br label %if.end51

if.end51:                                         ; preds = %inode_dec_dirty_pages.exit, %ClearPageError.exit.if.end51_crit_edge
  %108 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dn, align 4
  %flags.i114 = getelementptr inbounds %struct.f2fs_inode_info, ptr %109, i32 0, i32 8
  call void @_set_bit(i32 noundef 12, ptr noundef %flags.i114) #11
  %110 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dn, align 4
  %112 = ptrtoint ptr %inode_page to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %inode_page, align 4
  call void @f2fs_truncate_inline_inode(ptr noundef %111, ptr noundef %113, i64 noundef 0)
  %114 = ptrtoint ptr %inode_page to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %inode_page, align 4
  call fastcc void @clear_page_private_inline(ptr noundef %115)
  br label %do.body56

do.body56:                                        ; preds = %if.end51, %entry.do.body56_crit_edge
  %116 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dn, align 4
  %flags.i.i115 = getelementptr inbounds %struct.f2fs_inode_info, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %flags.i.i115 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %flags.i.i115, align 4
  %120 = and i32 %119, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool59.not = icmp eq i32 %120, 0
  br i1 %tobool59.not, label %do.body56.do.end65_crit_edge, label %if.then60

do.body56.do.end65_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

if.then60:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i118 = getelementptr inbounds %struct.inode, ptr %117, i32 0, i32 8
  %121 = ptrtoint ptr %i_sb.i118 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i_sb.i118, align 4
  %s_fs_info.i.i119 = getelementptr inbounds %struct.super_block, ptr %122, i32 0, i32 33
  %123 = ptrtoint ptr %s_fs_info.i.i119 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %s_fs_info.i.i119, align 16
  %inline_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %124, i32 0, i32 100
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inline_inode, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %inline_inode, i32 1, i32 3, i32 1) #11
  %125 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_inode, ptr %inline_inode, i32 1, ptr elementtype(i32) %inline_inode) #11, !srcloc !82
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body56.do.end65_crit_edge
  %126 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dn, align 4
  %flags.i120 = getelementptr inbounds %struct.f2fs_inode_info, ptr %127, i32 0, i32 8
  call void @_clear_bit(i32 noundef 10, ptr noundef %flags.i120) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %127, i1 noundef zeroext true) #11
  call fastcc void @f2fs_put_dnode(ptr noundef %dn)
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.then18, %if.then12, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ -117, %if.then18 ], [ 0, %do.end65 ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni) #11
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %fio) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_reserve_block(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_node_info(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_truncate_data_blocks_range(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_put_dnode(ptr nocapture noundef %dn) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %node_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %0 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @f2fs_put_page(ptr noundef nonnull %1, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inode_page = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %2 = ptrtoint ptr %inode_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode_page, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %node_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node_page, align 4
  %cmp.not = icmp eq ptr %5, %3
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %if.end.i

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i:                                         ; preds = %land.lhs.true
  %6 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i17.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !63

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i19.i = add i32 %8, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %9, %if.end.i.i21.i ]
  %10 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !57

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.4) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !73
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #11, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_put_dnode, %if.then.i.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !77

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end7_crit_edge

folio_put_testzero.exit.i.i.i.if.end7_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %10) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %node_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %node_page, align 4
  %15 = ptrtoint ptr %inode_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %inode_page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_outplace_write_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_remove_dirty_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_page_private_inline(ptr noundef %page) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %private) #11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %private, align 4
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i.not.i = icmp eq i32 %4, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !57

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !83
  unreachable

PagePrivate.exit:                                 ; preds = %if.then
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %PagePrivate.exit.if.end3_crit_edge, label %if.then2

PagePrivate.exit.if.end3_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %PagePrivate.exit
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i9 = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i9, label %if.then.i10, label %ClearPagePrivate.exit, !prof !57

if.then.i10:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !84
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.then2
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #11
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.4) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !73
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@clear_page_private_inline, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !77

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end3_crit_edge

folio_put_testzero.exit.i.i.if.end3_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %14) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end3_crit_edge, %PagePrivate.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_convert_inline_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %dn = alloca %struct.dnode_of_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn) #11
  %4 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %6 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 3
  %7 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 4
  %8 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 6
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %9 = call ptr @memset(ptr %dn, i32 255, i32 28)
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i.i, align 4
  %12 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_ndevs.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 122
  %13 = ptrtoint ptr %s_ndevs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_ndevs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i.i = icmp sgt i32 %14, 1
  br i1 %cmp.i.i, label %for.body.lr.ph.i, label %if.then.i

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %devs.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 123
  %15 = ptrtoint ptr %devs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %devs.i, align 4
  br label %for.body.i

if.then.i:                                        ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_bdev.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bd_read_only.i.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs.i.i:                                      ; preds = %if.then.i
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %20, i32 0, i32 17
  %23 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bd_disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %part0.i.i.i, align 4
  %bd_read_only.i.i.i = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %bd_read_only.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bd_read_only.i.i.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i.i, label %f2fs_hw_is_readonly.exit, label %lor.rhs.i.i.cleanup_crit_edge

lor.rhs.i.i.cleanup_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i:                                       ; preds = %bdev_read_only.exit21.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.lor.lhs.false3_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.lor.lhs.false3_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false3

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.f2fs_dev_info, ptr %16, i32 %i.024.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %bd_read_only.i11.i = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %bd_read_only.i11.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bd_read_only.i11.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i12.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i12.i, label %lor.rhs.i17.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs.i17.i:                                    ; preds = %for.body.i
  %bd_disk.i13.i = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 17
  %33 = ptrtoint ptr %bd_disk.i13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bd_disk.i13.i, align 8
  %part0.i.i14.i = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %part0.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %part0.i.i14.i, align 4
  %bd_read_only.i.i15.i = getelementptr inbounds %struct.block_device, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %bd_read_only.i.i15.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bd_read_only.i.i15.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i16.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i16.i, label %bdev_read_only.exit21.i, label %lor.rhs.i17.i.cleanup_crit_edge

lor.rhs.i17.i.cleanup_crit_edge:                  ; preds = %lor.rhs.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

bdev_read_only.exit21.i:                          ; preds = %lor.rhs.i17.i
  %state.i.i18.i = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 12
  %39 = ptrtoint ptr %state.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i.i18.i, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool3.not.i = icmp eq i32 %41, 0
  br i1 %tobool3.not.i, label %for.cond.i, label %bdev_read_only.exit21.i.cleanup_crit_edge

bdev_read_only.exit21.i.cleanup_crit_edge:        ; preds = %bdev_read_only.exit21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

f2fs_hw_is_readonly.exit:                         ; preds = %lor.rhs.i.i
  %state.i.i.i = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 12
  %42 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i.i, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %phi.cmp.i.not = icmp eq i32 %44, 0
  br i1 %phi.cmp.i.not, label %f2fs_hw_is_readonly.exit.lor.lhs.false3_crit_edge, label %f2fs_hw_is_readonly.exit.cleanup_crit_edge

f2fs_hw_is_readonly.exit.cleanup_crit_edge:       ; preds = %f2fs_hw_is_readonly.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

f2fs_hw_is_readonly.exit.lor.lhs.false3_crit_edge: ; preds = %f2fs_hw_is_readonly.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %f2fs_hw_is_readonly.exit.lor.lhs.false3_crit_edge, %for.cond.i.lor.lhs.false3_crit_edge
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 8
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call5 = tail call i32 @f2fs_dquot_initialize(ptr noundef %inode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %49 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_mapping, align 8
  %call9 = tail call fastcc ptr @f2fs_grab_cache_page(ptr noundef %50, i1 noundef zeroext false)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %51 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_ino, align 8
  %call13 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %52) #11
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %call13 to i32
  br label %out

if.end17:                                         ; preds = %if.end12
  %54 = call ptr @memset(ptr %7, i32 0, i32 12)
  %55 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %inode, ptr %dn, align 4
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call13, ptr %4, align 4
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call13, ptr %5, align 4
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %6, align 4
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags.i.i, align 4
  %61 = and i32 %60, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool19.not = icmp eq i32 %61, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = call i32 @f2fs_convert_inline_page(ptr noundef nonnull %dn, ptr noundef nonnull %call9)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %err.0 = phi i32 [ %call21, %if.then20 ], [ 0, %if.end17.if.end22_crit_edge ]
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn)
  br label %out

out:                                              ; preds = %if.end22, %if.then15
  %err.1 = phi i32 [ %53, %if.then15 ], [ %err.0, %if.end22 ]
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call9, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool23.not = icmp eq i32 %err.1, 0
  br i1 %tobool23.not, label %if.then24, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %8, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool25 = icmp ne i8 %63, 0
  call void @f2fs_balance_fs(ptr noundef %3, i1 noundef zeroext %tobool25) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %out.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %f2fs_hw_is_readonly.exit.cleanup_crit_edge, %bdev_read_only.exit21.i.cleanup_crit_edge, %lor.rhs.i17.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %lor.rhs.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false3.cleanup_crit_edge ], [ 0, %f2fs_hw_is_readonly.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.then24 ], [ %err.1, %out.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %lor.rhs.i.i.cleanup_crit_edge ], [ 0, %bdev_read_only.exit21.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ], [ 0, %lor.rhs.i17.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_dquot_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f2fs_grab_cache_page(ptr noundef %mapping, i1 noundef zeroext %for_write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %. = select i1 %for_write, i32 2, i32 3
  %call.i1 = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef 0, i32 noundef %., i32 noundef 0) #11
  %tobool2.not = icmp eq ptr %call.i1, null
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fault_info.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7
  %inject_rate.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 1
  %6 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end4.if.end14_crit_edge, label %if.end.i

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end.i:                                         ; preds = %if.end4
  %inject_type.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %5, i32 0, i32 73, i32 7, i32 2
  %8 = ptrtoint ptr %inject_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inject_type.i, align 4
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end14_crit_edge, label %if.end3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fault_info.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i, ptr %fault_info.i, i32 1, ptr elementtype(i32) %fault_info.i) #11, !srcloc !86
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %fault_info.i, align 4
  %13 = ptrtoint ptr %inject_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inject_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp ult i32 %12, %14
  br i1 %cmp.not.i, label %if.end3.i.if.end14_crit_edge, label %if.then7

if.end3.i.if.end14_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then7:                                         ; preds = %if.end3.i
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %fault_info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %fault_info.i, align 4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_grab_cache_page._rs, ptr noundef nonnull @__func__.f2fs_grab_cache_page) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %do.end

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping, align 4
  %i_sb.i.i2 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i.i2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i2, align 4
  %s_fs_info.i.i.i3 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i3, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([18 x ptr], ptr @f2fs_fault_name, i32 0, i32 2), align 4
  %25 = tail call ptr @llvm.returnaddress(i32 0)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, ptr noundef %s_id, ptr noundef %24, ptr noundef nonnull @__func__.f2fs_grab_cache_page, ptr noundef %25) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end3.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  br i1 %for_write, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %26 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef 0, i32 noundef 7, i32 noundef %27) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef 0, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %do.end, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call19, %if.end18 ], [ %call.i.i, %if.then16 ], [ %call.i1, %entry.cleanup_crit_edge ], [ null, %do.end ], [ null, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_balance_fs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_write_inline_data(ptr noundef %inode, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %dn = alloca %struct.dnode_of_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn) #11
  %0 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dnode_of_data, ptr %dn, i32 0, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 12)
  %5 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %inode, ptr %dn, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %call = call i32 @f2fs_get_dnode_of_data(ptr noundef nonnull %dn, i32 noundef 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i, align 4
  %11 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %do.body

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %do.end15, label %do.body9, !prof !63

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/f2fs/inline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #11, !srcloc !87
  unreachable

do.end15:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  call void @f2fs_wait_on_page_writeback(ptr noundef %15, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %16 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %16, 512
  %17 = call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !67
  %21 = call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i1.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #11
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %call.i.i45 = call ptr @page_address(ptr noundef %28) #11
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %29 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %30, 2
  %31 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i45, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %31, i32 0, i32 %add.i
  %i_inline_xattr_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %32 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_inline_xattr_size.i, align 4
  %34 = add i32 %div1.i.i, %33
  %.neg = mul i32 %34, -4
  %mul = add i32 %.neg, 3688
  %35 = call ptr @memcpy(ptr %arrayidx.i, ptr %call.i.i, i32 %mul)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %36 = call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i1.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %41, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %42 = call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %0, align 4
  %call30 = call zeroext i1 @set_page_dirty(ptr noundef %47) #11
  call void @f2fs_clear_page_cache_dirty_tag(ptr noundef %page) #11
  call void @_set_bit(i32 noundef 12, ptr noundef %flags.i.i) #11
  call void @_set_bit(i32 noundef 20, ptr noundef %flags.i.i) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %0, align 4
  call fastcc void @clear_page_private_inline(ptr noundef %49)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end15, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %do.end15 ], [ -11, %if.end.cleanup.sink.split_crit_edge ]
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_get_dnode_of_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_clear_page_cache_dirty_tag(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_recover_inline_data(ptr noundef %inode, ptr noundef %npage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %call.i.i97 = tail call ptr @page_address(ptr noundef %npage) #11
  %footer.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i97, i32 0, i32 1
  %4 = ptrtoint ptr %footer.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %footer.i, align 1
  %ino.i = getelementptr inbounds %struct.f2fs_node, ptr %call.i.i97, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ino.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ino.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %if.end, label %if.end20.thread

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @page_address(ptr noundef %npage) #11
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %tobool4.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.if.end20_crit_edge, label %land.lhs.true5

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true5:                                   ; preds = %if.end
  %i_inline = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %i_inline to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_inline, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %land.lhs.true5.if.end20_crit_edge, label %land.lhs.true5.process_inline_crit_edge

land.lhs.true5.process_inline_crit_edge:          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_inline

land.lhs.true5.if.end20_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

process_inline:                                   ; preds = %if.then49, %do.body46.process_inline_crit_edge, %land.lhs.true5.process_inline_crit_edge
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %call8 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %15) #11
  %cmp.i98 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %if.then10, label %if.end12

if.then10:                                        ; preds = %process_inline
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call8 to i32
  br label %cleanup57

if.end12:                                         ; preds = %process_inline
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %call8, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %call.i.i99 = tail call ptr @page_address(ptr noundef %npage) #11
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %17 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %18, 2
  %19 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i99, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %19, i32 0, i32 %add.i
  %call.i.i100 = tail call ptr @page_address(ptr noundef %call8) #11
  %20 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i102 = lshr i32 %21, 2
  %22 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i100, i32 0, i32 23
  %add.i103 = add nuw nsw i32 %div1.i.i102, 1
  %arrayidx.i104 = getelementptr [923 x i32], ptr %22, i32 0, i32 %add.i103
  %i_inline_xattr_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %23 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_inline_xattr_size.i, align 4
  %25 = add i32 %div1.i.i102, %24
  %.neg = mul i32 %25, -4
  %mul = add i32 %.neg, 3688
  %26 = call ptr @memcpy(ptr %arrayidx.i104, ptr %arrayidx.i, i32 %mul)
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i.i) #11
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags.i.i) #11
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  %call19 = tail call zeroext i1 @set_page_dirty(ptr noundef %call8) #11
  tail call fastcc void @f2fs_put_page(ptr noundef %call8, i32 noundef 1)
  br label %cleanup57

if.end20:                                         ; preds = %land.lhs.true5.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i.i, align 4
  %29 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not = icmp eq i32 %29, 0
  br i1 %tobool22.not, label %if.else, label %if.end20.if.then23_crit_edge

if.end20.if.then23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.end20.thread:                                  ; preds = %entry
  %flags.i.i122 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %30 = ptrtoint ptr %flags.i.i122 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i.i122, align 4
  %32 = load volatile i32, ptr %flags.i.i122, align 4
  %33 = and i32 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool22.not137 = icmp eq i32 %33, 0
  br i1 %tobool22.not137, label %if.end20.thread.cleanup57_crit_edge, label %if.end20.thread.if.then23_crit_edge

if.end20.thread.if.then23_crit_edge:              ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.end20.thread.cleanup57_crit_edge:              ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.then23:                                        ; preds = %if.end20.thread.if.then23_crit_edge, %if.end20.if.then23_crit_edge
  %flags.i.i129140 = phi ptr [ %flags.i.i122, %if.end20.thread.if.then23_crit_edge ], [ %flags.i.i, %if.end20.if.then23_crit_edge ]
  %i_ino24 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino24, align 8
  %call25 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %35) #11
  %cmp.i109 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %call25 to i32
  br label %cleanup57

if.end29:                                         ; preds = %if.then23
  tail call void @f2fs_truncate_inline_inode(ptr noundef %inode, ptr noundef %call25, i64 noundef 0)
  %37 = ptrtoint ptr %flags.i.i129140 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags.i.i129140, align 4
  %39 = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool31.not = icmp eq i32 %39, 0
  br i1 %tobool31.not, label %if.end29.do.end_crit_edge, label %if.then32

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i114 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %s_fs_info.i.i114 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_fs_info.i.i114, align 16
  %inline_inode = getelementptr inbounds %struct.f2fs_sb_info, ptr %43, i32 0, i32 100
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_inode, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inline_inode, i32 1, i32 3, i32 1) #11
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_inode, ptr %inline_inode, i32 1, ptr elementtype(i32) %inline_inode) #11, !srcloc !82
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.end29.do.end_crit_edge
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags.i.i129140) #11
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  tail call fastcc void @f2fs_put_page(ptr noundef %call25, i32 noundef 1)
  br label %cleanup57

if.else:                                          ; preds = %if.end20
  br i1 %tobool4.not, label %if.else.cleanup57_crit_edge, label %land.lhs.true36

if.else.cleanup57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

land.lhs.true36:                                  ; preds = %if.else
  %i_inline37 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %i_inline37 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i_inline37, align 1
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool40.not = icmp eq i8 %47, 0
  br i1 %tobool40.not, label %land.lhs.true36.cleanup57_crit_edge, label %if.then41

land.lhs.true36.cleanup57_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.then41:                                        ; preds = %land.lhs.true36
  %call42 = tail call i32 @f2fs_truncate_blocks(ptr noundef %inode, i64 noundef 0, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body46, label %if.then41.cleanup57_crit_edge

if.then41.cleanup57_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

do.body46:                                        ; preds = %if.then41
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i.i, align 4
  %50 = and i32 %49, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool48.not = icmp eq i32 %50, 0
  br i1 %tobool48.not, label %do.body46.process_inline_crit_edge, label %if.then49

do.body46.process_inline_crit_edge:               ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %process_inline

if.then49:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i120 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i.i120 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i.i120, align 16
  %inline_inode51 = getelementptr inbounds %struct.f2fs_sb_info, ptr %54, i32 0, i32 100
  %call.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inline_inode51, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %inline_inode51, i32 1, i32 3, i32 1) #11
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_inode51, ptr %inline_inode51, i32 1, ptr elementtype(i32) %inline_inode51) #11, !srcloc !86
  br label %process_inline

cleanup57:                                        ; preds = %if.then41.cleanup57_crit_edge, %land.lhs.true36.cleanup57_crit_edge, %if.else.cleanup57_crit_edge, %do.end, %if.then27, %if.end20.thread.cleanup57_crit_edge, %if.end12, %if.then10
  %retval.1 = phi i32 [ %16, %if.then10 ], [ 1, %if.end12 ], [ %36, %if.then27 ], [ 0, %if.else.cleanup57_crit_edge ], [ 0, %land.lhs.true36.cleanup57_crit_edge ], [ 0, %do.end ], [ %call42, %if.then41.cleanup57_crit_edge ], [ 0, %if.end20.thread.cleanup57_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_truncate_blocks(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @f2fs_find_in_inline_dir(ptr noundef %dir, ptr noundef %fname, ptr nocapture noundef writeonly %res_page) local_unnamed_addr #0 align 64 {
entry:
  %d = alloca %struct.f2fs_dentry_ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d) #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %call1 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %5) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %res_page, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 5
  %8 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 4
  %9 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %10 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %11 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %call.i.i = tail call ptr @page_address(ptr noundef %call1) #11
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 29
  %12 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %13, 2
  %14 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %14, i32 0, i32 %add.i
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 31
  %15 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %17 = add i32 %div1.i.i, %16
  %mul.i = mul i32 %17, -32
  %mul4.i = add i32 %mul.i, 29504
  %div.i = udiv i32 %mul4.i, 153
  %sub13.i = add nuw nsw i32 %div.i, 7
  %div1470.i = lshr i32 %sub13.i, 3
  %.neg.i = mul i32 %17, -4
  %mul29.neg.i = mul nsw i32 %div.i, -19
  %add41.neg.i = add i32 %.neg.i, 3688
  %mul20.i = add i32 %add41.neg.i, %mul29.neg.i
  %18 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dir, ptr %d, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.i, ptr %8, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div1470.i, ptr %7, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.i, ptr %11, align 4
  %add.ptr44.i = getelementptr i8, ptr %arrayidx.i, i32 %mul20.i
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr44.i, ptr %10, align 4
  %mul47.i = mul nuw nsw i32 %div.i, 11
  %add.ptr48.i = getelementptr i8, ptr %add.ptr44.i, i32 %mul47.i
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr48.i, ptr %9, align 4
  %call4 = call ptr @f2fs_find_target_dentry(ptr noundef nonnull %d, ptr noundef %fname, ptr noundef null) #11
  call void @unlock_page(ptr noundef %call1) #11
  %cmp.i30 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call4, ptr %res_page, align 4
  br label %if.else

if.end8:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end8.if.else_crit_edge, label %if.then9

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call1, ptr %res_page, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end8.if.else_crit_edge, %if.end8.thread
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %26 = getelementptr inbounds %struct.page, ptr %call1, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i17.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !63

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i19.i = add i32 %28, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call1 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %29, %if.end.i.i21.i ]
  %30 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  %31 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !57

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.4) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !73
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #11, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_find_in_inline_dir, %if.then.i.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !77

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %30, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %30) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then9, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %call4, %if.then9 ], [ null, %if.else.cleanup_crit_edge ], [ null, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ null, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_find_target_dentry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_make_empty_inline_dir(ptr noundef %inode, ptr noundef %parent, ptr noundef %ipage) local_unnamed_addr #0 align 64 {
entry:
  %d = alloca %struct.f2fs_dentry_ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d) #11
  %0 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %1 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %2 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %3 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 4
  %4 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 5
  %call.i.i = tail call ptr @page_address(ptr noundef %ipage) #11
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %5 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %6, 2
  %7 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %7, i32 0, i32 %add.i
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %8 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %10 = add i32 %div1.i.i, %9
  %mul.i = mul i32 %10, -32
  %mul4.i = add i32 %mul.i, 29504
  %div.i = udiv i32 %mul4.i, 153
  %sub13.i = add nuw nsw i32 %div.i, 7
  %div1470.i = lshr i32 %sub13.i, 3
  %.neg.i = mul i32 %10, -4
  %mul29.neg.i = mul nsw i32 %div.i, -19
  %add41.neg.i = add i32 %.neg.i, 3688
  %mul20.i = add i32 %add41.neg.i, %mul29.neg.i
  %11 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %inode, ptr %d, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div.i, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div1470.i, ptr %4, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %0, align 4
  %add.ptr44.i = getelementptr i8, ptr %arrayidx.i, i32 %mul20.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr44.i, ptr %1, align 4
  %mul47.i = mul nuw nsw i32 %div.i, 11
  %add.ptr48.i = getelementptr i8, ptr %add.ptr44.i, i32 %mul47.i
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr48.i, ptr %2, align 4
  call void @f2fs_do_make_empty_dir(ptr noundef %inode, ptr noundef %parent, ptr noundef nonnull %d) #11
  %call1 = call zeroext i1 @set_page_dirty(ptr noundef %ipage) #11
  %call2 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %17 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i = lshr i32 %18, 2
  %19 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %21 = add i32 %div1.i, %20
  %.neg = mul i32 %21, -4
  %mul = add i32 %.neg, 3688
  %conv = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %conv)
  %cmp = icmp slt i64 %call2, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @f2fs_i_size_write(ptr noundef %inode, i64 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_do_make_empty_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f2fs_i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp ne i32 %3, 0
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %i_size)
  %cmp = icmp eq i64 %call4, %i_size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.end.i_size_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.end
  %10 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !89
  %14 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %19, ptrtoint (ptr @lockdep_recursion to i32)
  %20 = inttoptr i32 %add.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !90
  %23 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i7.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i29.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %31 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i9.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %34, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !91
  %35 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %38, ptrtoint (ptr @hardirqs_enabled to i32)
  %39 = inttoptr i32 %add47.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %42 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i12.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %45, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool54.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !63

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.end.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %46 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %48 = tail call ptr @llvm.returnaddress(i32 0) #11
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %49) #11
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %50 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %i_size, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %49) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !94
  %51 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %52, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %53 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i26.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  tail call void @f2fs_mark_inode_dirty_sync(ptr noundef %inode, i1 noundef zeroext true) #11
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %brmerge, label %if.then7, label %i_size_write.exit.cleanup_crit_edge

i_size_write.exit.cleanup_crit_edge:              ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %i_size_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %i_size_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_try_convert_inline_dir(ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %fname = alloca %struct.f2fs_filename, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname) #11
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %4 = call ptr @memset(ptr %fname, i32 255, i32 32)
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cp_rwsem.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %3, i32 0, i32 20
  tail call void @down_read(ptr noundef %cp_rwsem.i) #11
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = call i32 @f2fs_setup_filename(ptr noundef %dir, ptr noundef %d_name, i32 noundef 0, ptr noundef nonnull %fname) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %call6 = call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %9) #11
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call6 to i32
  br label %out_fname

if.end10:                                         ; preds = %if.end5
  %call11 = call zeroext i1 @f2fs_has_enough_room(ptr noundef %dir, ptr noundef %call6, ptr noundef nonnull %fname) #11
  br i1 %call11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @f2fs_put_page(ptr noundef %call6, i32 noundef 1)
  br label %out_fname

if.end13:                                         ; preds = %if.end10
  %call.i.i = call ptr @page_address(ptr noundef %call6) #11
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 29
  %11 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %12, 2
  %13 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %13, i32 0, i32 %add.i
  %call15 = call fastcc i32 @do_convert_inline_dir(ptr noundef %dir, ptr noundef %call6, ptr noundef %arrayidx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end13.out_fname_crit_edge

if.end13.out_fname_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fname

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @f2fs_put_page(ptr noundef %call6, i32 noundef 1)
  br label %out_fname

out_fname:                                        ; preds = %if.then17, %if.end13.out_fname_crit_edge, %if.then12, %if.then8
  %err.0 = phi i32 [ %10, %if.then8 ], [ 0, %if.then12 ], [ %call15, %if.end13.out_fname_crit_edge ], [ 0, %if.then17 ]
  call void @f2fs_free_filename(ptr noundef nonnull %fname) #11
  br label %out

out:                                              ; preds = %out_fname, %if.end.out_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %err.0, %out_fname ]
  call void @up_read(ptr noundef %cp_rwsem.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_setup_filename(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @f2fs_has_enough_room(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_convert_inline_dir(ptr noundef %dir, ptr noundef %ipage, ptr nocapture noundef %inline_dentry) unnamed_addr #0 align 64 {
entry:
  %fname.i.i = alloca %struct.f2fs_filename, align 4
  %dn.i = alloca %struct.dnode_of_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dir_level = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 3
  %0 = ptrtoint ptr %i_dir_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_dir_level, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %dn.i) #11
  %2 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 9
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  %3 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping.i, align 8
  %call.i = tail call fastcc ptr @f2fs_grab_cache_page(ptr noundef %4, i1 noundef zeroext true) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @f2fs_put_page(ptr noundef %ipage, i32 noundef 1) #11
  br label %f2fs_move_inline_dirents.exit

if.end.i:                                         ; preds = %if.then
  %5 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 4
  %6 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.dnode_of_data, ptr %dn.i, i32 0, i32 1
  %9 = call ptr @memset(ptr %5, i32 0, i32 12)
  %10 = ptrtoint ptr %dn.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dir, ptr %dn.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ipage, ptr %8, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %7, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %6, align 4
  %call1.i = call i32 @f2fs_reserve_block(ptr noundef nonnull %dn.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end4.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, -1
  br i1 %cmp.not.i, label %if.end11.i, label %if.then7.i, !prof !63

if.then7.i:                                       ; preds = %if.end4.i
  call fastcc void @f2fs_put_dnode(ptr noundef nonnull %dn.i) #11
  %16 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i40 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i40)
  %tobool.not.i.i.i41 = icmp eq i32 %and.i.i.i40, 0
  br i1 %tobool.not.i.i.i41, label %if.end.i.i.i44, label %if.then.i.i.i43, !prof !63

if.then.i.i.i43:                                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i42 = add i32 %18, -1
  br label %_compound_head.exit.i.i48

if.end.i.i.i44:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i.i48

_compound_head.exit.i.i48:                        ; preds = %if.end.i.i.i44, %if.then.i.i.i43
  %retval.0.i.i.i45 = phi i32 [ %sub.i.i.i42, %if.then.i.i.i43 ], [ %19, %if.end.i.i.i44 ]
  %20 = inttoptr i32 %retval.0.i.i.i45 to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i.i.i.i46 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i46)
  %tobool.not.i.i.i.i.i.i47 = icmp eq i32 %and.i.i.i.i.i.i.i46, 0
  br i1 %tobool.not.i.i.i.i.i.i47, label %folio_test_swapbacked.exit.i.i.i.i51, label %if.then.i.i.i.i.i.i49, !prof !63

if.then.i.i.i.i.i.i49:                            ; preds = %_compound_head.exit.i.i48
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.1) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_test_swapbacked.exit.i.i.i.i51:             ; preds = %_compound_head.exit.i.i48
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %20, align 4
  %26 = and i32 %25, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i.i.i50 = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i.i.i50, label %folio_test_swapbacked.exit.i.i.i.i51.if.end.i3.i.i61_crit_edge, label %land.rhs.i.i.i.i54

folio_test_swapbacked.exit.i.i.i.i51.if.end.i3.i.i61_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i3.i.i61

land.rhs.i.i.i.i54:                               ; preds = %folio_test_swapbacked.exit.i.i.i.i51
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i.i.i52 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i52)
  %tobool.not.i.i.i.i.i53 = icmp eq i32 %and.i.i.i.i.i.i52, 0
  br i1 %tobool.not.i.i.i.i.i53, label %folio_test_swapcache.exit.i.i.i57, label %if.then.i.i.i.i.i55, !prof !63

if.then.i.i.i.i.i55:                              ; preds = %land.rhs.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.1) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_test_swapcache.exit.i.i.i57:                ; preds = %land.rhs.i.i.i.i54
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %20, align 4
  %31 = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i.i.i56 = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i.i.i56, label %folio_test_swapcache.exit.i.i.i57.if.end.i3.i.i61_crit_edge, label %if.then.i2.i.i59, !prof !63

folio_test_swapcache.exit.i.i.i57.if.end.i3.i.i61_crit_edge: ; preds = %folio_test_swapcache.exit.i.i.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i3.i.i61

if.then.i2.i.i59:                                 ; preds = %folio_test_swapcache.exit.i.i.i57
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i.i58 = call ptr @swapcache_mapping(ptr noundef %20) #11
  br label %F2FS_P_SB.exit65

if.end.i3.i.i61:                                  ; preds = %folio_test_swapcache.exit.i.i.i57.if.end.i3.i.i61_crit_edge, %folio_test_swapbacked.exit.i.i.i.i51.if.end.i3.i.i61_crit_edge
  %mapping.i.i.i60 = getelementptr inbounds %struct.anon.76, ptr %20, i32 0, i32 2
  %32 = ptrtoint ptr %mapping.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mapping.i.i.i60, align 4
  br label %F2FS_P_SB.exit65

F2FS_P_SB.exit65:                                 ; preds = %if.end.i3.i.i61, %if.then.i2.i.i59
  %retval.0.i4.i.i62 = phi ptr [ %call2.i.i.i58, %if.then.i2.i.i59 ], [ %33, %if.end.i3.i.i61 ]
  %34 = ptrtoint ptr %retval.0.i4.i.i62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %retval.0.i4.i.i62, align 4
  %i_sb.i.i.i63 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i.i.i63, align 4
  %s_fs_info.i.i.i.i64 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i.i.i.i64, align 16
  %s_flag.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %39, i32 0, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %s_flag.i.i) #11
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %16, align 4
  %and.i.i.i32 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32)
  %tobool.not.i.i.i33 = icmp eq i32 %and.i.i.i32, 0
  br i1 %tobool.not.i.i.i33, label %if.end.i.i.i36, label %if.then.i.i.i35, !prof !63

if.then.i.i.i35:                                  ; preds = %F2FS_P_SB.exit65
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i34 = add i32 %41, -1
  br label %_compound_head.exit.i.i38

if.end.i.i.i36:                                   ; preds = %F2FS_P_SB.exit65
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i.i38

_compound_head.exit.i.i38:                        ; preds = %if.end.i.i.i36, %if.then.i.i.i35
  %retval.0.i.i.i37 = phi i32 [ %sub.i.i.i34, %if.then.i.i.i35 ], [ %42, %if.end.i.i.i36 ]
  %43 = inttoptr i32 %retval.0.i.i.i37 to ptr
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i.i.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i, label %if.then.i.i.i.i.i.i, !prof !63

if.then.i.i.i.i.i.i:                              ; preds = %_compound_head.exit.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.1) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_test_swapbacked.exit.i.i.i.i:               ; preds = %_compound_head.exit.i.i38
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %43, align 4
  %49 = and i32 %48, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge, label %land.rhs.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i3.i.i

land.rhs.i.i.i.i:                                 ; preds = %folio_test_swapbacked.exit.i.i.i.i
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %44, align 4
  %and.i.i.i.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i39 = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i39, label %folio_test_swapcache.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !63

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.1) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_test_swapcache.exit.i.i.i:                  ; preds = %land.rhs.i.i.i.i
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %43, align 4
  %54 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, label %if.then.i2.i.i, !prof !63

folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i3.i.i

if.then.i2.i.i:                                   ; preds = %folio_test_swapcache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i.i = call ptr @swapcache_mapping(ptr noundef %43) #11
  br label %F2FS_P_SB.exit

if.end.i3.i.i:                                    ; preds = %folio_test_swapcache.exit.i.i.i.if.end.i3.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.if.end.i3.i.i_crit_edge
  %mapping.i.i.i = getelementptr inbounds %struct.anon.76, ptr %43, i32 0, i32 2
  %55 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mapping.i.i.i, align 4
  br label %F2FS_P_SB.exit

F2FS_P_SB.exit:                                   ; preds = %if.end.i3.i.i, %if.then.i2.i.i
  %retval.0.i4.i.i = phi ptr [ %call2.i.i.i, %if.then.i2.i.i ], [ %56, %if.end.i3.i.i ]
  %57 = ptrtoint ptr %retval.0.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %retval.0.i4.i.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 33
  %61 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %63 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_ino.i, align 8
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @f2fs_printk(ptr noundef %62, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.f2fs_move_inline_dirents, i32 noundef %64, i32 noundef %66) #11
  br label %out.i

if.end11.i:                                       ; preds = %if.end4.i
  call void @f2fs_wait_on_page_writeback(ptr noundef nonnull %call.i, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %call12.i = call ptr @page_address(ptr noundef nonnull %call.i) #11
  %i_extra_isize.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 29
  %67 = ptrtoint ptr %i_extra_isize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_extra_isize.i.i.i, align 4
  %div1.i.i.i = lshr i32 %68, 2
  %i_inline_xattr_size.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 31
  %69 = ptrtoint ptr %i_inline_xattr_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_inline_xattr_size.i.i.i, align 4
  %71 = add i32 %div1.i.i.i, %70
  %mul.i.i = mul i32 %71, -32
  %mul4.i.i = add i32 %mul.i.i, 29504
  %div.i.i = udiv i32 %mul4.i.i, 153
  %sub13.i.i = add nuw nsw i32 %div.i.i, 7
  %div1470.i.i = lshr i32 %sub13.i.i, 3
  %.neg.i.i = mul i32 %71, -4
  %mul29.neg.i.i = mul nsw i32 %div.i.i, -19
  %add41.neg.i.i = add i32 %.neg.i.i, 3688
  %mul20.i.i = add i32 %add41.neg.i.i, %mul29.neg.i.i
  %add.ptr44.i.i = getelementptr i8, ptr %inline_dentry, i32 %mul20.i.i
  %mul47.i.i = mul nuw nsw i32 %div.i.i, 11
  %add.ptr48.i.i = getelementptr i8, ptr %add.ptr44.i.i, i32 %mul47.i.i
  %dentry.i77.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call12.i, i32 0, i32 2
  %filename.i78.i = getelementptr inbounds %struct.f2fs_dentry_block, ptr %call12.i, i32 0, i32 3
  %72 = call ptr @memcpy(ptr %call12.i, ptr %inline_dentry, i32 %div1470.i.i)
  %add.ptr.i = getelementptr i8, ptr %call12.i, i32 %div1470.i.i
  %sub.i = sub nsw i32 27, %div1470.i.i
  %73 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %74 = call ptr @memcpy(ptr %dentry.i77.i, ptr %add.ptr44.i.i, i32 %mul47.i.i)
  %mul21.i = shl nuw nsw i32 %div.i.i, 3
  %75 = call ptr @memcpy(ptr %filename.i78.i, ptr %add.ptr48.i.i, i32 %mul21.i)
  %76 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  %and.i.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !63

if.then.i.i.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %78, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %79, %if.end.i.i.i ]
  %80 = inttoptr i32 %retval.0.i.i.i to ptr
  %81 = getelementptr inbounds %struct.page, ptr %80, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  %and.i.i.i.i79.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i79.i)
  %tobool.not.i.i.i80.i = icmp eq i32 %and.i.i.i.i79.i, 0
  br i1 %tobool.not.i.i.i80.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i81.i, !prof !63

if.then.i.i.i81.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %80, ptr noundef nonnull @.str.1) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %80, align 4
  %86 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not.i.i = icmp eq i32 %86, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11
  br i1 %tobool.i.not.i.i, label %if.then24.i, label %folio_flags.exit.i.i.i.if.end25.i_crit_edge

folio_flags.exit.i.i.i.if.end25.i_crit_edge:      ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.then24.i:                                      ; preds = %folio_flags.exit.i.i.i
  %87 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %76, align 4
  %and.i.i.i.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i) #11
  br label %if.end25.i

if.end25.i:                                       ; preds = %SetPageUptodate.exit.i, %folio_flags.exit.i.i.i.if.end25.i_crit_edge
  %call26.i = call zeroext i1 @set_page_dirty(ptr noundef nonnull %call.i) #11
  call void @f2fs_truncate_inline_inode(ptr noundef %dir, ptr noundef %ipage, i64 noundef 0) #11
  %flags.i.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %89 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %flags.i.i.i, align 4
  %91 = and i32 %90, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool28.not.i = icmp eq i32 %91, 0
  br i1 %tobool28.not.i, label %if.end25.i.do.end.i_crit_edge, label %if.then29.i

if.end25.i.do.end.i_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %92 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 33
  %94 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %inline_dir.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %95, i32 0, i32 101
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inline_dir.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %inline_dir.i, i32 1, i32 3, i32 1) #11
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_dir.i, ptr %inline_dir.i, i32 1, ptr elementtype(i32) %inline_dir.i) #11, !srcloc !82
  br label %do.end.i

do.end.i:                                         ; preds = %if.then29.i, %if.end25.i.do.end.i_crit_edge
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags.i.i.i) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #11
  %i_sb.i82.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %97 = ptrtoint ptr %i_sb.i82.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_sb.i82.i, align 4
  %s_fs_info.i.i83.i = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 33
  %99 = ptrtoint ptr %s_fs_info.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i.i83.i, align 16
  %raw_super.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %raw_super.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %raw_super.i.i, align 8
  %feature.i.i = getelementptr inbounds %struct.f2fs_super_block, ptr %102, i32 0, i32 34
  %103 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %feature.i.i, align 1
  %105 = and i32 %104, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool34.not.i = icmp eq i32 %105, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i, label %do.end.i.if.end39.i_crit_edge

do.end.i.if.end39.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %106 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %flags.i.i.i, align 4
  %108 = and i32 %107, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool36.not.i = icmp eq i32 %108, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %land.lhs.true.i.if.end39.i_crit_edge

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39.i

if.then37.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %i_inline_xattr_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %i_inline_xattr_size.i.i.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %land.lhs.true.i.if.end39.i_crit_edge, %do.end.i.if.end39.i_crit_edge
  %i_current_depth.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 4
  %110 = ptrtoint ptr %i_current_depth.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %i_current_depth.i.i, align 8
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #11
  %call40.i = call fastcc i64 @i_size_read(ptr noundef %dir) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call40.i)
  %cmp41.i = icmp slt i64 %call40.i, 4096
  br i1 %cmp41.i, label %if.then42.i, label %if.end39.i.out.i_crit_edge

if.end39.i.out.i_crit_edge:                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @f2fs_i_size_write(ptr noundef %dir, i64 noundef 4096) #11
  br label %out.i

out.i:                                            ; preds = %if.then42.i, %if.end39.i.out.i_crit_edge, %F2FS_P_SB.exit, %if.end.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call1.i, %if.end.i.out.i_crit_edge ], [ -117, %F2FS_P_SB.exit ], [ 0, %if.then42.i ], [ 0, %if.end39.i.out.i_crit_edge ]
  call fastcc void @f2fs_put_page(ptr noundef nonnull %call.i, i32 noundef 1) #11
  br label %f2fs_move_inline_dirents.exit

f2fs_move_inline_dirents.exit:                    ; preds = %out.i, %if.then.i
  %retval.0.i = phi i32 [ %err.0.i, %out.i ], [ -12, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %dn.i) #11
  br label %return

if.else:                                          ; preds = %entry
  %i_sb.i.i7 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %111 = ptrtoint ptr %i_sb.i.i7 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb.i.i7, align 4
  %s_fs_info.i.i.i8 = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 33
  %113 = ptrtoint ptr %s_fs_info.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_fs_info.i.i.i8, align 16
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 29
  %115 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %116, 2
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 31
  %117 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %119 = add i32 %div1.i.i, %118
  %.neg.i = mul i32 %119, -4
  %mul.i = add i32 %.neg.i, 3688
  %fault_info.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %114, i32 0, i32 73, i32 7
  %inject_rate.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %114, i32 0, i32 73, i32 7, i32 1
  %120 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i.i9 = icmp eq i32 %121, 0
  br i1 %tobool.not.i.i.i9, label %if.else.if.end8.i.i.i_crit_edge, label %if.end.i1.i.i

if.else.if.end8.i.i.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.end.i1.i.i:                                    ; preds = %if.else
  %inject_type.i.i.i = getelementptr inbounds %struct.f2fs_sb_info, ptr %114, i32 0, i32 73, i32 7, i32 2
  %122 = ptrtoint ptr %inject_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %inject_type.i.i.i, align 4
  %and.i.i.i10 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i10)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i10, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i1.i.i.if.end8.i.i.i_crit_edge, label %if.end3.i.i.i

if.end.i1.i.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end.i1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i1.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fault_info.i.i.i, i32 1, i32 3, i32 1) #11
  %124 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fault_info.i.i.i, ptr %fault_info.i.i.i, i32 1, ptr elementtype(i32) %fault_info.i.i.i) #11, !srcloc !86
  %call.i.i14.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fault_info.i.i.i, i32 noundef 4) #11
  %125 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %fault_info.i.i.i, align 4
  %127 = ptrtoint ptr %inject_rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %inject_rate.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp.not.i.i.i = icmp ult i32 %126, %128
  br i1 %cmp.not.i.i.i, label %if.end3.i.i.i.if.end8.i.i.i_crit_edge, label %if.then.i.i

if.end3.i.i.i.if.end8.i.i.i_crit_edge:            ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.then.i.i:                                      ; preds = %if.end3.i.i.i
  %call.i.i15.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fault_info.i.i.i, i32 noundef 4) #11
  %129 = ptrtoint ptr %fault_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 0, ptr %fault_info.i.i.i, align 4
  %call1.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @f2fs_kmalloc._rs, ptr noundef nonnull @__func__.f2fs_kmalloc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.then.i15_crit_edge, label %do.end.i.i

if.then.i.i.if.then.i15_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i15

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %114, align 8
  %s_id.i.i = getelementptr inbounds %struct.super_block, ptr %131, i32 0, i32 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @f2fs_fault_name to i32))
  %132 = load ptr, ptr @f2fs_fault_name, align 4
  %133 = tail call ptr @llvm.returnaddress(i32 0) #11
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, ptr noundef %s_id.i.i, ptr noundef %132, ptr noundef nonnull @__func__.f2fs_kmalloc, ptr noundef %133) #14
  br label %if.then.i15

if.end8.i.i.i:                                    ; preds = %if.end3.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i1.i.i.if.end8.i.i.i_crit_edge, %if.else.if.end8.i.i.i_crit_edge
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3392) #15
  %tobool.not.i14 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i14, label %if.end8.i.i.i.if.then.i15_crit_edge, label %if.end.i16

if.end8.i.i.i.if.then.i15_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i15

if.then.i15:                                      ; preds = %if.end8.i.i.i.if.then.i15_crit_edge, %do.end.i.i, %if.then.i.i.if.then.i15_crit_edge
  tail call fastcc void @f2fs_put_page(ptr noundef %ipage, i32 noundef 1) #11
  br label %return

if.end.i16:                                       ; preds = %if.end8.i.i.i
  %134 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i79.i = lshr i32 %135, 2
  %136 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %138 = add i32 %div1.i79.i, %137
  %.neg75.i = mul i32 %138, -4
  %mul11.i = add i32 %.neg75.i, 3688
  %139 = call ptr @memcpy(ptr %call9.i.i.i, ptr %inline_dentry, i32 %mul11.i)
  tail call void @f2fs_truncate_inline_inode(ptr noundef %dir, ptr noundef %ipage, i64 noundef 0) #11
  tail call void @unlock_page(ptr noundef %ipage) #11
  %140 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i.i.i = lshr i32 %141, 2
  %142 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %144 = add i32 %div1.i.i.i.i, %143
  %mul.i.i.i = mul i32 %144, -32
  %mul4.i.i.i = add i32 %mul.i.i.i, 29504
  %div.i.i.i = udiv i32 %mul4.i.i.i, 153
  %.neg.i.i.i = mul i32 %144, -4
  %mul29.neg.i.i.i = mul nsw i32 %div.i.i.i, -19
  %add41.neg.i.i.i = add i32 %.neg.i.i.i, 3688
  %mul20.i.i.i = add i32 %add41.neg.i.i.i, %mul29.neg.i.i.i
  %add.ptr44.i.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %mul20.i.i.i
  %mul47.i.i.i = mul nuw nsw i32 %div.i.i.i, 11
  %add.ptr48.i.i.i = getelementptr i8, ptr %add.ptr44.i.i.i, i32 %mul47.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 153, i32 %mul4.i.i.i)
  %145 = icmp ult i32 %mul4.i.i.i, 153
  br i1 %145, label %if.end.i16.if.end15.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i16.if.end15.i_crit_edge:                  ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i16
  %146 = getelementptr inbounds %struct.f2fs_filename, ptr %fname.i.i, i32 0, i32 1
  %147 = getelementptr inbounds %struct.f2fs_filename, ptr %fname.i.i, i32 0, i32 1, i32 1
  %148 = getelementptr inbounds %struct.f2fs_filename, ptr %fname.i.i, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %bit_pos.050.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %bit_pos.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fname.i.i) #11
  %div3.i.i.i.i = lshr i32 %bit_pos.050.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %call9.i.i.i, i32 %div3.i.i.i.i
  %149 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %xor.i.i.i = and i32 %bit_pos.050.i.i, 31
  %and.i.i.i.i = xor i32 %xor.i.i.i, 24
  %151 = shl nuw i32 1, %and.i.i.i.i
  %152 = and i32 %151, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not.i81.i = icmp eq i32 %152, 0
  br i1 %tobool.not.i81.i, label %if.then.i82.i, label %if.end.i.i

if.then.i82.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i = add nuw i32 %bit_pos.050.i.i, 1
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %name_len.i.i = getelementptr %struct.f2fs_dir_entry, ptr %add.ptr44.i.i.i, i32 %bit_pos.050.i.i, i32 2
  %153 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 2)
  %154 = load i16, ptr %name_len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool1.not.i.i = icmp eq i16 %154, 0
  br i1 %tobool1.not.i.i, label %if.then5.i.i, label %if.end7.i.i, !prof !57

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc6.i.i = add nuw i32 %bit_pos.050.i.i, 1
  br label %cleanup.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.f2fs_dir_entry, ptr %add.ptr44.i.i.i, i32 %bit_pos.050.i.i
  %155 = call ptr @memset(ptr %fname.i.i, i32 0, i32 32)
  %arrayidx8.i.i = getelementptr [8 x i8], ptr %add.ptr48.i.i.i, i32 %bit_pos.050.i.i
  %156 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %arrayidx8.i.i, ptr %146, align 4
  %157 = call i16 @llvm.bswap.i16(i16 %154) #11
  %conv.i.i = zext i16 %157 to i32
  %158 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %conv.i.i, ptr %147, align 4
  %159 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %arrayidx.i.i, align 1
  %161 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %148, align 4
  %ino11.i.i = getelementptr %struct.f2fs_dir_entry, ptr %add.ptr44.i.i.i, i32 %bit_pos.050.i.i, i32 1
  %162 = ptrtoint ptr %ino11.i.i to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %ino11.i.i, align 1
  %164 = call i32 @llvm.bswap.i32(i32 %163) #11
  %call12.i.i = call zeroext i8 @f2fs_get_de_type(ptr noundef %arrayidx.i.i) #11
  %conv13.i.i = zext i8 %call12.i.i to i16
  %shl.i.i = shl i16 %conv13.i.i, 12
  %call15.i.i = call i32 @f2fs_add_regular_entry(ptr noundef %dir, ptr noundef nonnull %fname.i.i, ptr noundef null, i32 noundef %164, i16 noundef zeroext %shl.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %recover.i

if.end18.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %165 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %name_len.i.i, align 1
  %167 = call i16 @llvm.bswap.i16(i16 %166) #11
  %conv20.i.i = zext i16 %167 to i32
  %sub.i.i = add nuw nsw i32 %conv20.i.i, 7
  %168 = lshr i32 %sub.i.i, 3
  %add21.i.i = add i32 %168, %bit_pos.050.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end18.i.i, %if.then5.i.i, %if.then.i82.i
  %bit_pos.1.i.i = phi i32 [ %inc6.i.i, %if.then5.i.i ], [ %add21.i.i, %if.end18.i.i ], [ %inc.i.i, %if.then.i82.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname.i.i) #11
  %cmp.i.i = icmp ult i32 %bit_pos.1.i.i, %div.i.i.i
  br i1 %cmp.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.if.end15.i_crit_edge

cleanup.i.i.if.end15.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

if.end15.i:                                       ; preds = %cleanup.i.i.if.end15.i_crit_edge, %if.end.i16.if.end15.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 788) #11
  %169 = getelementptr inbounds %struct.page, ptr %ipage, i32 0, i32 1
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %169, align 4
  %and.i.i84.i = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i)
  %tobool.not.i.i85.i = icmp eq i32 %and.i.i84.i, 0
  br i1 %tobool.not.i.i85.i, label %if.end.i.i87.i, label %if.then.i.i86.i, !prof !63

if.then.i.i86.i:                                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i17 = add i32 %171, -1
  br label %_compound_head.exit.i.i20

if.end.i.i87.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %ipage to i32
  br label %_compound_head.exit.i.i20

_compound_head.exit.i.i20:                        ; preds = %if.end.i.i87.i, %if.then.i.i86.i
  %retval.0.i.i.i18 = phi i32 [ %sub.i.i.i17, %if.then.i.i86.i ], [ %172, %if.end.i.i87.i ]
  %173 = inttoptr i32 %retval.0.i.i.i18 to ptr
  %174 = getelementptr inbounds %struct.page, ptr %173, i32 0, i32 1
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %174, align 4
  %and.i.i.i.i.i19 = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i19)
  %tobool.not.i.i.i88.i = icmp eq i32 %and.i.i.i.i.i19, 0
  br i1 %tobool.not.i.i.i88.i, label %folio_flags.exit.i.i.i22, label %if.then.i.i.i.i21, !prof !63

if.then.i.i.i.i21:                                ; preds = %_compound_head.exit.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %173, ptr noundef nonnull @.str.1) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_flags.exit.i.i.i22:                         ; preds = %_compound_head.exit.i.i20
  %call.i.i.i.i89.i = call zeroext i1 @__kasan_check_write(ptr noundef %173, i32 noundef 4) #11
  %177 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %173, align 4
  %and.i.i4.i.i.i = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i22.if.then.i90.i_crit_edge

folio_flags.exit.i.i.i22.if.then.i90.i_crit_edge: ; preds = %folio_flags.exit.i.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i90.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i22
  call void @llvm.prefetch.p0(ptr %173, i32 1, i32 3, i32 1) #11
  %179 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %173, ptr %173, i32 1, ptr elementtype(i32) %173) #11, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %179, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i90.i_crit_edge

folio_trylock.exit.i.i.if.then.i90.i_crit_edge:   ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i90.i

folio_trylock.exit.i.i.lock_page.exit.i_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_page.exit.i

if.then.i90.i:                                    ; preds = %folio_trylock.exit.i.i.if.then.i90.i_crit_edge, %folio_flags.exit.i.i.i22.if.then.i90.i_crit_edge
  call void @__folio_lock(ptr noundef %173) #11
  br label %lock_page.exit.i

lock_page.exit.i:                                 ; preds = %if.then.i90.i, %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge
  %flags.i.i.i23 = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 8
  %180 = ptrtoint ptr %flags.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %flags.i.i.i23, align 4
  %182 = and i32 %181, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool17.not.i = icmp eq i32 %182, 0
  br i1 %tobool17.not.i, label %lock_page.exit.i.do.end.i28_crit_edge, label %if.then18.i

lock_page.exit.i.do.end.i28_crit_edge:            ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i28

if.then18.i:                                      ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %i_sb.i.i7 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %i_sb.i.i7, align 4
  %s_fs_info.i.i93.i = getelementptr inbounds %struct.super_block, ptr %184, i32 0, i32 33
  %185 = ptrtoint ptr %s_fs_info.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %s_fs_info.i.i93.i, align 16
  %inline_dir.i24 = getelementptr inbounds %struct.f2fs_sb_info, ptr %186, i32 0, i32 101
  %call.i.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef %inline_dir.i24, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %inline_dir.i24, i32 1, i32 3, i32 1) #11
  %187 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inline_dir.i24, ptr %inline_dir.i24, i32 1, ptr elementtype(i32) %inline_dir.i24) #11, !srcloc !82
  br label %do.end.i28

do.end.i28:                                       ; preds = %if.then18.i, %lock_page.exit.i.do.end.i28_crit_edge
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags.i.i.i23) #11
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #11
  %188 = ptrtoint ptr %i_sb.i.i7 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %i_sb.i.i7, align 4
  %s_fs_info.i.i95.i = getelementptr inbounds %struct.super_block, ptr %189, i32 0, i32 33
  %190 = ptrtoint ptr %s_fs_info.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %s_fs_info.i.i95.i, align 16
  %raw_super.i.i26 = getelementptr inbounds %struct.f2fs_sb_info, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %raw_super.i.i26 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %raw_super.i.i26, align 8
  %feature.i.i27 = getelementptr inbounds %struct.f2fs_super_block, ptr %193, i32 0, i32 34
  %194 = ptrtoint ptr %feature.i.i27 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %feature.i.i27, align 1
  %196 = and i32 %195, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool23.not.i = icmp eq i32 %196, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i29, label %do.end.i28.if.end28.i_crit_edge

do.end.i28.if.end28.i_crit_edge:                  ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

land.lhs.true.i29:                                ; preds = %do.end.i28
  %197 = ptrtoint ptr %flags.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %flags.i.i.i23, align 4
  %199 = and i32 %198, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool25.not.i = icmp eq i32 %199, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %land.lhs.true.i29.if.end28.i_crit_edge

land.lhs.true.i29.if.end28.i_crit_edge:           ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then26.i:                                      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #13
  %200 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %i_inline_xattr_size.i.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %land.lhs.true.i29.if.end28.i_crit_edge, %do.end.i28.if.end28.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %return

recover.i:                                        ; preds = %if.end7.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fname.i.i) #11
  %i_data.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 46
  call void @truncate_inode_pages(ptr noundef %i_data.i.i, i64 noundef 0) #11
  %call25.i.i = call i32 @f2fs_truncate_blocks(ptr noundef %dir, i64 noundef 0, i1 noundef zeroext false) #11
  call void @f2fs_remove_dirty_inode(ptr noundef %dir) #11
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 788) #11
  %201 = getelementptr inbounds %struct.page, ptr %ipage, i32 0, i32 1
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %201, align 4
  %and.i.i99.i = and i32 %203, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i99.i)
  %tobool.not.i.i100.i = icmp eq i32 %and.i.i99.i, 0
  br i1 %tobool.not.i.i100.i, label %if.end.i.i103.i, label %if.then.i.i102.i, !prof !63

if.then.i.i102.i:                                 ; preds = %recover.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i101.i = add i32 %203, -1
  br label %_compound_head.exit.i107.i

if.end.i.i103.i:                                  ; preds = %recover.i
  call void @__sanitizer_cov_trace_pc() #13
  %204 = ptrtoint ptr %ipage to i32
  br label %_compound_head.exit.i107.i

_compound_head.exit.i107.i:                       ; preds = %if.end.i.i103.i, %if.then.i.i102.i
  %retval.0.i.i104.i = phi i32 [ %sub.i.i101.i, %if.then.i.i102.i ], [ %204, %if.end.i.i103.i ]
  %205 = inttoptr i32 %retval.0.i.i104.i to ptr
  %206 = getelementptr inbounds %struct.page, ptr %205, i32 0, i32 1
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %206, align 4
  %and.i.i.i.i105.i = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i105.i)
  %tobool.not.i.i.i106.i = icmp eq i32 %and.i.i.i.i105.i, 0
  br i1 %tobool.not.i.i.i106.i, label %folio_flags.exit.i.i112.i, label %if.then.i.i.i108.i, !prof !63

if.then.i.i.i108.i:                               ; preds = %_compound_head.exit.i107.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %205, ptr noundef nonnull @.str.1) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_flags.exit.i.i112.i:                        ; preds = %_compound_head.exit.i107.i
  %call.i.i.i.i109.i = call zeroext i1 @__kasan_check_write(ptr noundef %205, i32 noundef 4) #11
  %209 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %205, align 4
  %and.i.i4.i.i110.i = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i110.i)
  %tobool.not.i.i.i.i111.i = icmp eq i32 %and.i.i4.i.i110.i, 0
  br i1 %tobool.not.i.i.i.i111.i, label %folio_trylock.exit.i116.i, label %folio_flags.exit.i.i112.i.if.then.i117.i_crit_edge

folio_flags.exit.i.i112.i.if.then.i117.i_crit_edge: ; preds = %folio_flags.exit.i.i112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i117.i

folio_trylock.exit.i116.i:                        ; preds = %folio_flags.exit.i.i112.i
  call void @llvm.prefetch.p0(ptr %205, i32 1, i32 3, i32 1) #11
  %211 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %205, ptr %205, i32 1, ptr elementtype(i32) %205) #11, !srcloc !96
  %asmresult.i.i.i.i.i.i.i113.i = extractvalue { i32, i32, i32 } %211, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %and1.i.i.i.i114.i = and i32 %asmresult.i.i.i.i.i.i.i113.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i114.i)
  %phi.cmp.i.i.i115.i = icmp eq i32 %and1.i.i.i.i114.i, 0
  br i1 %phi.cmp.i.i.i115.i, label %folio_trylock.exit.i116.i.lock_page.exit119.i_crit_edge, label %folio_trylock.exit.i116.i.if.then.i117.i_crit_edge

folio_trylock.exit.i116.i.if.then.i117.i_crit_edge: ; preds = %folio_trylock.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i117.i

folio_trylock.exit.i116.i.lock_page.exit119.i_crit_edge: ; preds = %folio_trylock.exit.i116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_page.exit119.i

if.then.i117.i:                                   ; preds = %folio_trylock.exit.i116.i.if.then.i117.i_crit_edge, %folio_flags.exit.i.i112.i.if.then.i117.i_crit_edge
  call void @__folio_lock(ptr noundef %205) #11
  br label %lock_page.exit119.i

lock_page.exit119.i:                              ; preds = %if.then.i117.i, %folio_trylock.exit.i116.i.lock_page.exit119.i_crit_edge
  call void @f2fs_wait_on_page_writeback(ptr noundef %ipage, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %212 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i121.i = lshr i32 %213, 2
  %214 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %216 = add i32 %div1.i121.i, %215
  %.neg76.i = mul i32 %216, -4
  %mul34.i = add i32 %.neg76.i, 3688
  %217 = call ptr @memcpy(ptr %inline_dentry, ptr %call9.i.i.i, i32 %mul34.i)
  %i_current_depth.i.i30 = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 4
  %218 = ptrtoint ptr %i_current_depth.i.i30 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %i_current_depth.i.i30, align 8
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext true) #11
  %219 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i124.i = lshr i32 %220, 2
  %221 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %223 = add i32 %div1.i124.i, %222
  %.neg77.i = mul i32 %223, -4
  %mul40.i = add i32 %.neg77.i, 3688
  %conv.i = zext i32 %mul40.i to i64
  call fastcc void @f2fs_i_size_write(ptr noundef %dir, i64 noundef %conv.i) #11
  %call41.i = call zeroext i1 @set_page_dirty(ptr noundef %ipage) #11
  call fastcc void @f2fs_put_page(ptr noundef %ipage, i32 noundef 1) #11
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %return

return:                                           ; preds = %lock_page.exit119.i, %if.end28.i, %if.then.i15, %f2fs_move_inline_dirents.exit
  %retval.0 = phi i32 [ %retval.0.i, %f2fs_move_inline_dirents.exit ], [ %call15.i.i, %lock_page.exit119.i ], [ 0, %if.end28.i ], [ -12, %if.then.i15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_free_filename(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_add_inline_entry(ptr noundef %dir, ptr noundef %fname, ptr noundef %inode, i32 noundef %ino, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %d = alloca %struct.f2fs_dentry_ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d) #11
  %disk_name = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1
  %len = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %call1 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %7) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 5
  %10 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 4
  %11 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %12 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %13 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %sub = add i32 %5, 7
  %shr = lshr i32 %sub, 3
  %call.i.i = tail call ptr @page_address(ptr noundef %call1) #11
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 29
  %14 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %15, 2
  %16 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %16, i32 0, i32 %add.i
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 31
  %17 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %19 = add i32 %div1.i.i, %18
  %mul.i = mul i32 %19, -32
  %mul4.i = add i32 %mul.i, 29504
  %div.i = udiv i32 %mul4.i, 153
  %sub13.i = add nuw nsw i32 %div.i, 7
  %div1470.i = lshr i32 %sub13.i, 3
  %.neg.i = mul i32 %19, -4
  %mul29.neg.i = mul nsw i32 %div.i, -19
  %add41.neg.i = add i32 %.neg.i, 3688
  %mul20.i = add i32 %add41.neg.i, %mul29.neg.i
  %20 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dir, ptr %d, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.i, ptr %10, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div1470.i, ptr %9, align 4
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.i, ptr %13, align 4
  %add.ptr44.i = getelementptr i8, ptr %arrayidx.i, i32 %mul20.i
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr44.i, ptr %12, align 4
  %mul47.i = mul nuw nsw i32 %div.i, 11
  %add.ptr48.i = getelementptr i8, ptr %add.ptr44.i, i32 %mul47.i
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr48.i, ptr %11, align 4
  %call5 = tail call i32 @f2fs_room_for_filename(ptr noundef %arrayidx.i, i32 noundef %shr, i32 noundef %div.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %div.i)
  %cmp.not = icmp ult i32 %call5, %div.i
  br i1 %cmp.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = tail call fastcc i32 @do_convert_inline_dir(ptr noundef %dir, ptr noundef %call1, ptr noundef %arrayidx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then7.out_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end
  %tobool12.not = icmp eq ptr %inode, null
  br i1 %tobool12.not, label %if.end11.if.end20_crit_edge, label %if.then13

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then13:                                        ; preds = %if.end11
  %i_sem = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 9
  tail call void @down_write(ptr noundef %i_sem) #11
  %call15 = tail call ptr @f2fs_init_inode_metadata(ptr noundef nonnull %inode, ptr noundef %dir, ptr noundef %fname, ptr noundef %call1) #11
  %cmp.i78 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %fail.thread, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

fail.thread:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %call15 to i32
  br label %if.then32

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %page.0 = phi ptr [ %call15, %if.then13.if.end20_crit_edge ], [ null, %if.end11.if.end20_crit_edge ]
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %call1, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %hash = getelementptr inbounds %struct.f2fs_filename, ptr %fname, i32 0, i32 2
  %27 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash, align 4
  call void @f2fs_update_dentry(i32 noundef %ino, i16 noundef zeroext %mode, ptr noundef nonnull %d, ptr noundef %disk_name, i32 noundef %28, i32 noundef %call5) #11
  %call22 = call zeroext i1 @set_page_dirty(ptr noundef %call1) #11
  br i1 %tobool12.not, label %fail.thread81, label %if.then24

fail.thread81:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @f2fs_update_parent_metadata(ptr noundef %dir, ptr noundef null, i32 noundef 0) #11
  br label %out

if.then24:                                        ; preds = %if.end20
  %29 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino, align 8
  %i_pino.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 6
  %31 = ptrtoint ptr %i_pino.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %i_pino.i, align 4
  call void @f2fs_mark_inode_dirty_sync(ptr noundef nonnull %inode, i1 noundef zeroext true) #11
  %flags.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool27.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool27.not, label %if.then24.fail_crit_edge, label %if.then28

if.then24.fail_crit_edge:                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  call void @f2fs_update_inode(ptr noundef nonnull %inode, ptr noundef %page.0) #11
  br label %fail

fail:                                             ; preds = %if.then28, %if.then24.fail_crit_edge
  call fastcc void @f2fs_put_page(ptr noundef %page.0, i32 noundef 1)
  call void @f2fs_update_parent_metadata(ptr noundef %dir, ptr noundef nonnull %inode, i32 noundef 0) #11
  br label %if.then32

if.then32:                                        ; preds = %fail, %fail.thread
  %err.080 = phi i32 [ %26, %fail.thread ], [ 0, %fail ]
  %i_sem34 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 9
  call void @up_write(ptr noundef %i_sem34) #11
  br label %out

out:                                              ; preds = %if.then32, %fail.thread81, %if.then7.out_crit_edge
  %err.1 = phi i32 [ %err.080, %if.then32 ], [ -11, %if.then7.out_crit_edge ], [ 0, %fail.thread81 ]
  call fastcc void @f2fs_put_page(ptr noundef %call1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %err.1, %out ], [ %call8, %if.then7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_room_for_filename(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @f2fs_init_inode_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_dentry(i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_inode(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_update_parent_metadata(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @f2fs_delete_inline_entry(ptr noundef %dentry, ptr noundef %page, ptr noundef %dir, ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name_len = getelementptr inbounds %struct.f2fs_dir_entry, ptr %dentry, i32 0, i32 2
  %0 = ptrtoint ptr %name_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %name_len, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %sub = add nuw nsw i32 %conv, 7
  %3 = lshr i32 %sub, 3
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 788) #11
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !63

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.1) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %8, i32 noundef 4) #11
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and.i.i4.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %8, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #11, !srcloc !96
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %8) #11
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  tail call void @f2fs_wait_on_page_writeback(ptr noundef %page, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %call.i.i = tail call ptr @page_address(ptr noundef %page) #11
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 29
  %15 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %16, 2
  %17 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %17, i32 0, i32 %add.i
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 31
  %18 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %20 = add i32 %div1.i.i, %19
  %mul.i = mul i32 %20, -32
  %mul4.i = add i32 %mul.i, 29504
  %div.i = udiv i32 %mul4.i, 153
  %.neg.i = mul i32 %20, -4
  %mul29.neg.i = mul nsw i32 %div.i, -19
  %add41.neg.i = add i32 %.neg.i, 3688
  %mul20.i = add i32 %add41.neg.i, %mul29.neg.i
  %add.ptr44.i = getelementptr i8, ptr %arrayidx.i, i32 %mul20.i
  %sub.ptr.lhs.cast = ptrtoint ptr %dentry to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr44.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp22.not = icmp eq i16 %1, 0
  br i1 %cmp22.not, label %lock_page.exit.for.end_crit_edge, label %for.body.preheader

lock_page.exit.for.end_crit_edge:                 ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %lock_page.exit
  %umax = call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add3 = add nsw i32 %i.023, %sub.ptr.div
  %xor.i = and i32 %add3, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %add3, 5
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i21 = and i32 %22, %neg.i.i
  store i32 %and.i.i21, ptr %add.ptr.i.i, align 4
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %lock_page.exit.for.end_crit_edge
  %call4 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #11
  tail call fastcc void @f2fs_put_page(ptr noundef %page, i32 noundef 1)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #11
  %23 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  %24 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @f2fs_mark_inode_dirty_sync(ptr noundef %dir, i1 noundef zeroext false) #11
  %tobool.not = icmp eq ptr %inode, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @f2fs_drop_nlink(ptr noundef %dir, ptr noundef nonnull %inode) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_mark_inode_dirty_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @f2fs_drop_nlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @f2fs_empty_inline_dir(ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %call1 = tail call ptr @f2fs_get_node_page(ptr noundef %3, i32 noundef %5) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call ptr @page_address(ptr noundef %call1) #11
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 29
  %6 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %7, 2
  %8 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %8, i32 0, i32 %add.i
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %dir, i32 0, i32 31
  %9 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %11 = add i32 %div1.i.i, %10
  %mul.i = mul i32 %11, -32
  %mul4.i = add i32 %mul.i, 29504
  %div.i = udiv i32 %mul4.i, 153
  %call.i = tail call i32 @_find_next_bit_le(ptr noundef %arrayidx.i, i32 noundef %div.i, i32 noundef 2) #11
  tail call fastcc void @f2fs_put_page(ptr noundef %call1, i32 noundef 1)
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %div.i)
  %cmp = icmp uge i32 %call.i, %div.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_read_inline_dir(ptr nocapture noundef readonly %file, ptr noundef %ctx, ptr noundef %fstr) local_unnamed_addr #0 align 64 {
entry:
  %d = alloca %struct.f2fs_dentry_ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %d) #11
  %2 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 1
  %3 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 2
  %4 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 3
  %5 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 4
  %6 = getelementptr inbounds %struct.f2fs_dentry_ptr, ptr %d, i32 0, i32 5
  %i_extra_isize.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i = lshr i32 %8, 2
  %i_inline_xattr_size.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %1, i32 0, i32 31
  %9 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %11 = add i32 %div1.i.i, %10
  %mul.i = mul i32 %11, -32
  %mul4.i = add i32 %mul.i, 29504
  %div.i = udiv i32 %mul4.i, 153
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %conv56 = zext i32 %div.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv56)
  %cmp = icmp eq i64 %13, %conv56
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %call3 = tail call ptr @f2fs_get_node_page(ptr noundef %17, i32 noundef %19) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @unlock_page(ptr noundef %call3) #11
  %call.i.i = tail call ptr @page_address(ptr noundef %call3) #11
  %21 = ptrtoint ptr %i_extra_isize.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_extra_isize.i.i, align 4
  %div1.i.i35 = lshr i32 %22, 2
  %23 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i35, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %23, i32 0, i32 %add.i
  %24 = ptrtoint ptr %i_inline_xattr_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_inline_xattr_size.i.i, align 4
  %26 = add i32 %div1.i.i35, %25
  %mul.i39 = mul i32 %26, -32
  %mul4.i40 = add i32 %mul.i39, 29504
  %div.i41 = udiv i32 %mul4.i40, 153
  %sub13.i42 = add nuw nsw i32 %div.i41, 7
  %div1470.i43 = lshr i32 %sub13.i42, 3
  %.neg.i44 = mul i32 %26, -4
  %mul29.neg.i45 = mul nsw i32 %div.i41, -19
  %add41.neg.i46 = add i32 %.neg.i44, 3688
  %mul20.i47 = add i32 %add41.neg.i46, %mul29.neg.i45
  %27 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %d, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i41, ptr %5, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div1470.i43, ptr %6, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.i, ptr %2, align 4
  %add.ptr44.i51 = getelementptr i8, ptr %arrayidx.i, i32 %mul20.i47
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr44.i51, ptr %3, align 4
  %mul47.i53 = mul nuw nsw i32 %div.i41, 11
  %add.ptr48.i54 = getelementptr i8, ptr %add.ptr44.i51, i32 %mul47.i53
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr48.i54, ptr %4, align 4
  %call9 = call i32 @f2fs_fill_dentries(ptr noundef %ctx, ptr noundef nonnull %d, i32 noundef 0, ptr noundef %fstr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  %conv12 = sext i32 %34 to i64
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv12, ptr %pos, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7.if.end14_crit_edge
  %tobool.not.i = icmp eq ptr %call3, null
  br i1 %tobool.not.i, label %if.end14.f2fs_put_page.exit_crit_edge, label %if.end.i

if.end14.f2fs_put_page.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_put_page.exit

if.end.i:                                         ; preds = %if.end14
  %36 = getelementptr inbounds %struct.page, ptr %call3, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i17.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  br i1 %tobool.not.i.i18.i, label %if.end.i.i21.i, label %if.then.i.i20.i, !prof !63

if.then.i.i20.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i19.i = add i32 %38, -1
  br label %_compound_head.exit.i23.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %call3 to i32
  br label %_compound_head.exit.i23.i

_compound_head.exit.i23.i:                        ; preds = %if.end.i.i21.i, %if.then.i.i20.i
  %retval.0.i.i22.i = phi i32 [ %sub.i.i19.i, %if.then.i.i20.i ], [ %39, %if.end.i.i21.i ]
  %40 = inttoptr i32 %retval.0.i.i22.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  %41 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !57

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.4) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !73
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i23.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !74
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %43 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #11, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@f2fs_read_inline_dir, %if.then.i.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !77

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %40, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge

folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f2fs_put_page.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %40) #11
  br label %f2fs_put_page.exit

f2fs_put_page.exit:                               ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.f2fs_put_page.exit_crit_edge, %if.end14.f2fs_put_page.exit_crit_edge
  %44 = call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %f2fs_put_page.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then5 ], [ %44, %f2fs_put_page.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %d) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_fill_dentries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f2fs_inline_data_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %ni = alloca %struct.node_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ni) #11
  %0 = call ptr @memset(ptr %ni, i32 255, i32 16)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %call1 = tail call ptr @f2fs_get_node_page(ptr noundef %4, i32 noundef %6) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 8
  %10 = and i16 %9, -4096
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %10, label %if.end.if.end22_crit_edge [
    i16 -32768, label %if.end.land.lhs.true_crit_edge
    i16 -24576, label %if.end.land.lhs.true_crit_edge101
    i16 16384, label %land.lhs.true18
  ]

if.end.land.lhs.true_crit_edge101:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge101
  %flags.i.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i.i, align 4
  %14 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true18:                                  ; preds = %if.end
  %flags.i.i95 = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %flags.i.i95 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i.i95, align 4
  %17 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %land.lhs.true18.out_crit_edge, label %land.lhs.true18.if.end22_crit_edge

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true18.out_crit_edge:                    ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end22:                                         ; preds = %land.lhs.true18.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %i_extra_isize.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 29
  %18 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i = lshr i32 %19, 2
  %i_inline_xattr_size.i = getelementptr inbounds %struct.f2fs_inode_info, ptr %inode, i32 0, i32 31
  %20 = ptrtoint ptr %i_inline_xattr_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_inline_xattr_size.i, align 4
  %22 = add i32 %div1.i, %21
  %.neg = mul i32 %22, -4
  %mul = add i32 %.neg, 3688
  %call27 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %conv28 = trunc i64 %call27 to i32
  %23 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %conv28)
  %conv31 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv31, i64 %start)
  %cmp32.not = icmp ugt i64 %conv31, %start
  br i1 %cmp32.not, label %if.end35, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end35:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i99 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i99 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i99, align 16
  %28 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino, align 8
  %call44 = call i32 @f2fs_get_node_info(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %ni, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i64 %len, %start
  %30 = call i64 @llvm.umin.i64(i64 %add, i64 %conv31)
  %sub41 = sub i64 %30, %start
  %blk_addr = getelementptr inbounds %struct.node_info, ptr %ni, i32 0, i32 2
  %31 = ptrtoint ptr %blk_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blk_addr, align 4
  %conv48 = zext i32 %32 to i64
  %33 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %36 to i64
  %shl = shl i64 %conv48, %sh_prom
  %call.i.i = call ptr @page_address(ptr noundef %call1) #11
  %37 = ptrtoint ptr %i_extra_isize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_extra_isize.i, align 4
  %div1.i.i = lshr i32 %38, 2
  %39 = getelementptr inbounds %struct.f2fs_inode, ptr %call.i.i, i32 0, i32 23
  %add.i = add nuw nsw i32 %div1.i.i, 1
  %arrayidx.i = getelementptr [923 x i32], ptr %39, i32 0, i32 %add.i
  %call.i = call ptr @page_address(ptr noundef %call1) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv52 = sext i32 %sub.ptr.sub to i64
  %add53 = add i64 %shl, %conv52
  %call54 = call i32 @fiemap_fill_next_extent(ptr noundef %fieinfo, i64 noundef %start, i64 noundef %add53, i64 noundef %sub41, i32 noundef 769) #11
  call fastcc void @trace_f2fs_fiemap(ptr noundef %inode, i64 noundef %start, i64 noundef %add53, i64 noundef %sub41, i32 noundef %call54)
  br label %out

out:                                              ; preds = %if.end47, %if.end35.out_crit_edge, %if.end22.out_crit_edge, %land.lhs.true18.out_crit_edge, %land.lhs.true.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end22.out_crit_edge ], [ %call44, %if.end35.out_crit_edge ], [ %call54, %if.end47 ], [ -11, %land.lhs.true.out_crit_edge ], [ -11, %land.lhs.true18.out_crit_edge ]
  call fastcc void @f2fs_put_page(ptr noundef %call1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %err.0, %out ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ni) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_fill_next_extent(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_f2fs_fiemap(ptr noundef %inode, i64 noundef %lblock, i64 noundef %pblock, i64 noundef %len, i32 noundef %ret) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_fiemap, i32 0, i32 1), ptr blockaddress(@trace_f2fs_fiemap, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !77

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !63

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  %call42 = tail call i32 @__traceiter_f2fs_fiemap(ptr noundef null, ptr noundef %inode, i64 noundef %lblock, i64 noundef %pblock, i64 noundef %len, i32 noundef 769, i32 noundef %ret) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
  %13 = tail call i32 @llvm.read_register.i32(metadata !44) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !44) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !63

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_fiemap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_f2fs_fiemap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_f2fs_fiemap.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_f2fs_fiemap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 2069, ptr noundef nonnull @.str.14) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !101
  %31 = tail call i32 @llvm.read_register.i32(metadata !44) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @f2fs_get_de_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @f2fs_add_regular_entry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_f2fs_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/f2fs/inline.c", i32 146, i32 3}
!2 = !{ptr @__func__.f2fs_convert_inline_page, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/mm.h", i32 717, i32 2}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/f2fs/f2fs.h", i32 2571, i32 4}
!17 = !{ptr @f2fs_grab_cache_page._rs, !16, !"_rs", i1 false, i1 false}
!18 = !{ptr @__func__.f2fs_grab_cache_page, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @f2fs_grab_cache_page._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @f2fs_grab_cache_page._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__func__.f2fs_move_inline_dirents, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/f2fs/inline.c", i32 401, i32 3}
!29 = !{ptr @f2fs_kmalloc._rs, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../fs/f2fs/f2fs.h", i32 3219, i32 3}
!31 = !{ptr @__func__.f2fs_kmalloc, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @f2fs_kmalloc._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @f2fs_kmalloc._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/f2fs.h", i32 2034, i32 1}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2154741362}
!55 = !{i64 1074106, i64 1074167}
!56 = !{i64 1076838}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 1077123}
!59 = !{i64 2152512257}
!60 = !{i64 2152512099}
!61 = !{i64 2152512427}
!62 = !{i64 2150098241}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2150578171, i64 2150578662, i64 2150578208, i64 2150578264, i64 2150578298, i64 2150578322, i64 2150578363, i64 2150578384, i64 2150578412, i64 2150578446}
!65 = !{i64 2151328063}
!66 = !{i64 2156359707, i64 2156360187, i64 2156359744, i64 2156359800, i64 2156359834, i64 2156359858, i64 2156359899, i64 2156359920, i64 2156359948, i64 2156359982}
!67 = !{i64 2153710639}
!68 = !{i64 2152184722}
!69 = !{i64 2152184929}
!70 = !{i64 2153713410}
!71 = !{i64 2150585604, i64 2150586095, i64 2150585641, i64 2150585697, i64 2150585731, i64 2150585755, i64 2150585796, i64 2150585817, i64 2150585845, i64 2150585879}
!72 = !{i64 2154810324, i64 2154810804, i64 2154810361, i64 2154810417, i64 2154810451, i64 2154810475, i64 2154810516, i64 2154810537, i64 2154810565, i64 2154810599}
!73 = !{i64 2153186703, i64 2153187186, i64 2153186740, i64 2153186796, i64 2153186830, i64 2153186854, i64 2153186895, i64 2153186916, i64 2153186944, i64 2153186978}
!74 = !{i64 2148757902}
!75 = !{i64 2148672611, i64 2148672643, i64 2148672672, i64 2148672706, i64 2148672737, i64 2148672760}
!76 = !{i64 2148758131}
!77 = !{i64 2148494024, i64 2148494029, i64 2148494042, i64 2148494086, i64 2148494120, i64 2148494141}
!78 = !{i64 2151094025, i64 2151094516, i64 2151094062, i64 2151094118, i64 2151094152, i64 2151094176, i64 2151094217, i64 2151094238, i64 2151094266, i64 2151094300}
!79 = !{i64 2156364367, i64 2156364848, i64 2156364404, i64 2156364460, i64 2156364494, i64 2156364518, i64 2156364559, i64 2156364580, i64 2156364608, i64 2156364642}
!80 = !{i64 2150648563, i64 2150648736, i64 2150648751, i64 2150648803, i64 2150648862, i64 2150648886, i64 2150648927, i64 2150648948, i64 2150648976, i64 2150649008}
!81 = !{i64 2150649438, i64 2150649611, i64 2150649626, i64 2150649678, i64 2150649737, i64 2150649761, i64 2150649802, i64 2150649823, i64 2150649851, i64 2150649883}
!82 = !{i64 2148671891, i64 2148671917, i64 2148671946, i64 2148671980, i64 2148672011, i64 2148672034}
!83 = !{i64 2151036877, i64 2151037368, i64 2151036914, i64 2151036970, i64 2151037004, i64 2151037028, i64 2151037069, i64 2151037090, i64 2151037118, i64 2151037152}
!84 = !{i64 2151046707, i64 2151046880, i64 2151046895, i64 2151046947, i64 2151047006, i64 2151047030, i64 2151047071, i64 2151047092, i64 2151047120, i64 2151047152}
!85 = !{i8 0, i8 2}
!86 = !{i64 2148669426, i64 2148669452, i64 2148669481, i64 2148669515, i64 2148669546, i64 2148669569}
!87 = !{i64 2156366134, i64 2156366615, i64 2156366171, i64 2156366227, i64 2156366261, i64 2156366285, i64 2156366326, i64 2156366347, i64 2156366375, i64 2156366409}
!88 = !{i64 2152514188}
!89 = !{i64 2149990493}
!90 = !{i64 2149995427}
!91 = !{i64 2150017145}
!92 = !{i64 2150022039}
!93 = !{i64 2150098566}
!94 = !{i64 2150098891}
!95 = !{i64 2152526050}
!96 = !{i64 2148678284, i64 2148678316, i64 2148678345, i64 2148678379, i64 2148678410, i64 2148678433}
!97 = !{i64 2148767389}
!98 = !{i64 2156344641}
!99 = !{i64 2156344902}
!100 = !{i64 2149490431}
!101 = !{i64 2149491467}
